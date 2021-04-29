import 'package:_test_common/descriptors.dart';
import 'package:_test_common/sdk.dart';
import 'package:test/test.dart';
import 'package:test_descriptor/test_descriptor.dart' as d;

void main() {
  setUp(() async {
    await d.dir('a', [
      await pubspec('a', currentIsolateDependencies: [
        'build',
        'build_config',
        'build_daemon',
        'build_resolvers',
        'build_runner',
        'build_runner_core',
        'code_builder',
      ]),
    ]).create();
    await runPub('a', 'get');
  });

  test('support package relative imports', () async {
    await d.dir('a', [
      d.file('build.yaml', '''
builders:
  fake:
    import: "tool/builder.dart"
    builder_factories: ["myFactory"]
    build_extensions: {"foo": ["bar"]}
'''),
    ]).create();

    var result = await runPub('a', 'run', args: ['build_runner', 'build']);
    // Note: You can obtain the broken kernel file by copying
    // d.sandbox/.dart_tool/build/entrypoint/build.dart.snapshot
    expect(result.stderr, isEmpty);
    expect(
        result.stdout,
        isNot(contains(
            'The `../` import syntax in build.yaml is now deprecated')));

    await d.dir('a', [
      d.dir('.dart_tool', [
        d.dir('build', [
          d.dir('entrypoint', [
            d.file(
                'build.dart', contains("import '../../../tool/builder.dart'"))
          ])
        ])
      ])
    ]).validate();
  });
}
