// Copyright (c) 2016, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as path;

import '../asset/asset.dart';
import '../asset/exceptions.dart';
import '../asset/id.dart';
import '../asset/reader.dart';
import '../asset/writer.dart';
import '../generate/input_set.dart';
import '../package_graph/package_graph.dart';
import 'exceptions.dart';

/// Basic [AssetReader] which uses a [PackageGraph] to look up where to read
/// files from disk.
class FileBasedAssetReader implements AssetReader {
  final PackageGraph packageGraph;
  final ignoredDirs;

  FileBasedAssetReader(this.packageGraph, {this.ignoredDirs: const ['build']});

  @override
  Future<bool> hasInput(AssetId id) async {
    _checkInput(id);
    return _fileFor(id, packageGraph).exists();
  }

  @override
  Future<String> readAsString(AssetId id, {Encoding encoding: UTF8}) async {
    _checkInput(id);

    var file = await _fileFor(id, packageGraph);
    if (!await file.exists()) {
      throw new AssetNotFoundException(id);
    }
    return file.readAsString(encoding: encoding);
  }

  /// Checks that [id] is a valid input, and throws an [InvalidInputException]
  /// if its not.
  void _checkInput(AssetId id) {
    if (id.package != packageGraph.root.name && !id.path.startsWith('lib/')) {
      throw new InvalidInputException(id);
    }
  }

  /// Searches for all [AssetId]s matching [inputSet]s.
  Stream<AssetId> listAssetIds(Iterable<InputSet> inputSets) async* {
    var seenAssets = new Set<AssetId>();
    for (var inputSet in inputSets) {
      var packageNode = packageGraph[inputSet.package];
      var packagePath = packageNode.location.toFilePath();
      for (var glob in inputSet.globs) {
        var files = glob.listSync(followLinks: false, root: packagePath).where(
            (e) => e is File && !ignoredDirs.contains(path.split(e.path)[1]));
        for (var file in files) {
          var id = _fileToAssetId(file, packageNode);
          if (!seenAssets.add(id)) continue;
          yield id;
        }
      }
    }
  }
}

/// Creates an [AssetId] for [file], which is a part of [packageNode].
AssetId _fileToAssetId(File file, PackageNode packageNode) {
  var filePath = path.normalize(file.absolute.path);
  var packageUri = packageNode.location;
  var packagePath = path.normalize(packageUri.isAbsolute
      ? packageUri.toFilePath()
      : path.absolute(packageUri.toFilePath()));
  var relativePath = path.relative(filePath, from: packagePath);
  return new AssetId(packageNode.name, relativePath);
}

/// Basic [AssetWriter] which uses a [PackageGraph] to look up where to write
/// files to disk.
class FileBasedAssetWriter implements AssetWriter {
  final PackageGraph packageGraph;

  FileBasedAssetWriter(this.packageGraph);

  @override
  Future writeAsString(Asset asset, {Encoding encoding: UTF8}) async {
    if (asset.id.package != packageGraph.root.name) {
      throw new InvalidOutputException(asset);
    }

    var file = _fileFor(asset.id, packageGraph);
    await file.create(recursive: true);
    await file.writeAsString(asset.stringContents, encoding: encoding);
  }
}

/// Returns a [File] for [id] given [packageGraph].
File _fileFor(AssetId id, PackageGraph packageGraph) {
  var package = packageGraph[id.package];
  if (package == null) {
    throw new PackageNotFoundException(id.package);
  }
  return new File(path.join(package.location.toFilePath(), id.path));
}
