// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'node.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const NodeType _$generated = const NodeType._('generated');
const NodeType _$glob = const NodeType._('glob');
const NodeType _$internal = const NodeType._('internal');
const NodeType _$placeholder = const NodeType._('placeholder');
const NodeType _$source = const NodeType._('source');
const NodeType _$missingSource = const NodeType._('missingSource');

NodeType _$nodeTypeValueOf(String name) {
  switch (name) {
    case 'generated':
      return _$generated;
    case 'glob':
      return _$glob;
    case 'internal':
      return _$internal;
    case 'placeholder':
      return _$placeholder;
    case 'source':
      return _$source;
    case 'missingSource':
      return _$missingSource;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<NodeType> _$nodeTypeValues = new BuiltSet<NodeType>(
  const <NodeType>[
    _$generated,
    _$glob,
    _$internal,
    _$placeholder,
    _$source,
    _$missingSource,
  ],
);

const PendingBuildAction _$none = const PendingBuildAction._('none');
const PendingBuildAction _$buildIfInputsChanged = const PendingBuildAction._(
  'buildIfInputsChanged',
);
const PendingBuildAction _$build = const PendingBuildAction._('build');

PendingBuildAction _$pendingBuildActionValueOf(String name) {
  switch (name) {
    case 'none':
      return _$none;
    case 'buildIfInputsChanged':
      return _$buildIfInputsChanged;
    case 'build':
      return _$build;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<PendingBuildAction> _$pendingBuildActionValues =
    new BuiltSet<PendingBuildAction>(const <PendingBuildAction>[
      _$none,
      _$buildIfInputsChanged,
      _$build,
    ]);

Serializer<NodeType> _$nodeTypeSerializer = new _$NodeTypeSerializer();
Serializer<AssetNode> _$assetNodeSerializer = new _$AssetNodeSerializer();
Serializer<GeneratedNodeConfiguration> _$generatedNodeConfigurationSerializer =
    new _$GeneratedNodeConfigurationSerializer();
Serializer<GeneratedNodeState> _$generatedNodeStateSerializer =
    new _$GeneratedNodeStateSerializer();
Serializer<GlobNodeConfiguration> _$globNodeConfigurationSerializer =
    new _$GlobNodeConfigurationSerializer();
Serializer<GlobNodeState> _$globNodeStateSerializer =
    new _$GlobNodeStateSerializer();
Serializer<PendingBuildAction> _$pendingBuildActionSerializer =
    new _$PendingBuildActionSerializer();

class _$NodeTypeSerializer implements PrimitiveSerializer<NodeType> {
  @override
  final Iterable<Type> types = const <Type>[NodeType];
  @override
  final String wireName = 'NodeType';

  @override
  Object serialize(
    Serializers serializers,
    NodeType object, {
    FullType specifiedType = FullType.unspecified,
  }) => object.name;

  @override
  NodeType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => NodeType.valueOf(serialized as String);
}

class _$AssetNodeSerializer implements StructuredSerializer<AssetNode> {
  @override
  final Iterable<Type> types = const [AssetNode, _$AssetNode];
  @override
  final String wireName = 'AssetNode';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AssetNode object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(AssetId)),
      'type',
      serializers.serialize(
        object.type,
        specifiedType: const FullType(NodeType),
      ),
      'primaryOutputs',
      serializers.serialize(
        object.primaryOutputs,
        specifiedType: const FullType(BuiltSet, const [
          const FullType(AssetId),
        ]),
      ),
      'deletedBy',
      serializers.serialize(
        object.deletedBy,
        specifiedType: const FullType(BuiltSet, const [
          const FullType(PostProcessBuildStepId),
        ]),
      ),
    ];
    Object? value;
    value = object.generatedNodeConfiguration;
    if (value != null) {
      result
        ..add('generatedNodeConfiguration')
        ..add(
          serializers.serialize(
            value,
            specifiedType: const FullType(GeneratedNodeConfiguration),
          ),
        );
    }
    value = object.generatedNodeState;
    if (value != null) {
      result
        ..add('generatedNodeState')
        ..add(
          serializers.serialize(
            value,
            specifiedType: const FullType(GeneratedNodeState),
          ),
        );
    }
    value = object.globNodeConfiguration;
    if (value != null) {
      result
        ..add('globNodeConfiguration')
        ..add(
          serializers.serialize(
            value,
            specifiedType: const FullType(GlobNodeConfiguration),
          ),
        );
    }
    value = object.globNodeState;
    if (value != null) {
      result
        ..add('globNodeState')
        ..add(
          serializers.serialize(
            value,
            specifiedType: const FullType(GlobNodeState),
          ),
        );
    }
    value = object.lastKnownDigest;
    if (value != null) {
      result
        ..add('lastKnownDigest')
        ..add(
          serializers.serialize(value, specifiedType: const FullType(Digest)),
        );
    }
    return result;
  }

  @override
  AssetNode deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = new AssetNodeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(AssetId),
                  )!
                  as AssetId;
          break;
        case 'type':
          result.type =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(NodeType),
                  )!
                  as NodeType;
          break;
        case 'generatedNodeConfiguration':
          result.generatedNodeConfiguration.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(GeneratedNodeConfiguration),
                )!
                as GeneratedNodeConfiguration,
          );
          break;
        case 'generatedNodeState':
          result.generatedNodeState.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(GeneratedNodeState),
                )!
                as GeneratedNodeState,
          );
          break;
        case 'globNodeConfiguration':
          result.globNodeConfiguration.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(GlobNodeConfiguration),
                )!
                as GlobNodeConfiguration,
          );
          break;
        case 'globNodeState':
          result.globNodeState.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(GlobNodeState),
                )!
                as GlobNodeState,
          );
          break;
        case 'primaryOutputs':
          result.primaryOutputs.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(BuiltSet, const [
                    const FullType(AssetId),
                  ]),
                )!
                as BuiltSet<Object?>,
          );
          break;
        case 'lastKnownDigest':
          result.lastKnownDigest =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(Digest),
                  )
                  as Digest?;
          break;
        case 'deletedBy':
          result.deletedBy.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(BuiltSet, const [
                    const FullType(PostProcessBuildStepId),
                  ]),
                )!
                as BuiltSet<Object?>,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$GeneratedNodeConfigurationSerializer
    implements StructuredSerializer<GeneratedNodeConfiguration> {
  @override
  final Iterable<Type> types = const [
    GeneratedNodeConfiguration,
    _$GeneratedNodeConfiguration,
  ];
  @override
  final String wireName = 'GeneratedNodeConfiguration';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GeneratedNodeConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      'primaryInput',
      serializers.serialize(
        object.primaryInput,
        specifiedType: const FullType(AssetId),
      ),
      'phaseNumber',
      serializers.serialize(
        object.phaseNumber,
        specifiedType: const FullType(int),
      ),
      'isHidden',
      serializers.serialize(
        object.isHidden,
        specifiedType: const FullType(bool),
      ),
    ];

    return result;
  }

  @override
  GeneratedNodeConfiguration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = new GeneratedNodeConfigurationBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'primaryInput':
          result.primaryInput =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(AssetId),
                  )!
                  as AssetId;
          break;
        case 'phaseNumber':
          result.phaseNumber =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(int),
                  )!
                  as int;
          break;
        case 'isHidden':
          result.isHidden =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )!
                  as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GeneratedNodeStateSerializer
    implements StructuredSerializer<GeneratedNodeState> {
  @override
  final Iterable<Type> types = const [GeneratedNodeState, _$GeneratedNodeState];
  @override
  final String wireName = 'GeneratedNodeState';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GeneratedNodeState object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      'inputs',
      serializers.serialize(
        object.inputs,
        specifiedType: const FullType(BuiltSet, const [
          const FullType(AssetId),
        ]),
      ),
      'pendingBuildAction',
      serializers.serialize(
        object.pendingBuildAction,
        specifiedType: const FullType(PendingBuildAction),
      ),
      'wasOutput',
      serializers.serialize(
        object.wasOutput,
        specifiedType: const FullType(bool),
      ),
      'isFailure',
      serializers.serialize(
        object.isFailure,
        specifiedType: const FullType(bool),
      ),
    ];

    return result;
  }

  @override
  GeneratedNodeState deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = new GeneratedNodeStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'inputs':
          result.inputs.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(BuiltSet, const [
                    const FullType(AssetId),
                  ]),
                )!
                as BuiltSet<Object?>,
          );
          break;
        case 'pendingBuildAction':
          result.pendingBuildAction =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(PendingBuildAction),
                  )!
                  as PendingBuildAction;
          break;
        case 'wasOutput':
          result.wasOutput =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )!
                  as bool;
          break;
        case 'isFailure':
          result.isFailure =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(bool),
                  )!
                  as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GlobNodeConfigurationSerializer
    implements StructuredSerializer<GlobNodeConfiguration> {
  @override
  final Iterable<Type> types = const [
    GlobNodeConfiguration,
    _$GlobNodeConfiguration,
  ];
  @override
  final String wireName = 'GlobNodeConfiguration';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GlobNodeConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      'glob',
      serializers.serialize(object.glob, specifiedType: const FullType(String)),
      'phaseNumber',
      serializers.serialize(
        object.phaseNumber,
        specifiedType: const FullType(int),
      ),
    ];

    return result;
  }

  @override
  GlobNodeConfiguration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = new GlobNodeConfigurationBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'glob':
          result.glob =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'phaseNumber':
          result.phaseNumber =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(int),
                  )!
                  as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GlobNodeStateSerializer implements StructuredSerializer<GlobNodeState> {
  @override
  final Iterable<Type> types = const [GlobNodeState, _$GlobNodeState];
  @override
  final String wireName = 'GlobNodeState';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GlobNodeState object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      'inputs',
      serializers.serialize(
        object.inputs,
        specifiedType: const FullType(BuiltSet, const [
          const FullType(AssetId),
        ]),
      ),
      'pendingBuildAction',
      serializers.serialize(
        object.pendingBuildAction,
        specifiedType: const FullType(PendingBuildAction),
      ),
      'results',
      serializers.serialize(
        object.results,
        specifiedType: const FullType(BuiltList, const [
          const FullType(AssetId),
        ]),
      ),
    ];

    return result;
  }

  @override
  GlobNodeState deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = new GlobNodeStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'inputs':
          result.inputs.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(BuiltSet, const [
                    const FullType(AssetId),
                  ]),
                )!
                as BuiltSet<Object?>,
          );
          break;
        case 'pendingBuildAction':
          result.pendingBuildAction =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(PendingBuildAction),
                  )!
                  as PendingBuildAction;
          break;
        case 'results':
          result.results.replace(
            serializers.deserialize(
                  value,
                  specifiedType: const FullType(BuiltList, const [
                    const FullType(AssetId),
                  ]),
                )!
                as BuiltList<Object?>,
          );
          break;
      }
    }

    return result.build();
  }
}

class _$PendingBuildActionSerializer
    implements PrimitiveSerializer<PendingBuildAction> {
  @override
  final Iterable<Type> types = const <Type>[PendingBuildAction];
  @override
  final String wireName = 'PendingBuildAction';

  @override
  Object serialize(
    Serializers serializers,
    PendingBuildAction object, {
    FullType specifiedType = FullType.unspecified,
  }) => object.name;

  @override
  PendingBuildAction deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => PendingBuildAction.valueOf(serialized as String);
}

class _$AssetNode extends AssetNode {
  @override
  final AssetId id;
  @override
  final NodeType type;
  @override
  final GeneratedNodeConfiguration? generatedNodeConfiguration;
  @override
  final GeneratedNodeState? generatedNodeState;
  @override
  final GlobNodeConfiguration? globNodeConfiguration;
  @override
  final GlobNodeState? globNodeState;
  @override
  final BuiltSet<AssetId> primaryOutputs;
  @override
  final Digest? lastKnownDigest;
  @override
  final BuiltSet<PostProcessBuildStepId> deletedBy;

  factory _$AssetNode([void Function(AssetNodeBuilder)? updates]) =>
      (new AssetNodeBuilder()..update(updates))._build();

  _$AssetNode._({
    required this.id,
    required this.type,
    this.generatedNodeConfiguration,
    this.generatedNodeState,
    this.globNodeConfiguration,
    this.globNodeState,
    required this.primaryOutputs,
    this.lastKnownDigest,
    required this.deletedBy,
  }) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'AssetNode', 'id');
    BuiltValueNullFieldError.checkNotNull(type, r'AssetNode', 'type');
    BuiltValueNullFieldError.checkNotNull(
      primaryOutputs,
      r'AssetNode',
      'primaryOutputs',
    );
    BuiltValueNullFieldError.checkNotNull(deletedBy, r'AssetNode', 'deletedBy');
  }

  @override
  AssetNode rebuild(void Function(AssetNodeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AssetNodeBuilder toBuilder() => new AssetNodeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AssetNode &&
        id == other.id &&
        type == other.type &&
        generatedNodeConfiguration == other.generatedNodeConfiguration &&
        generatedNodeState == other.generatedNodeState &&
        globNodeConfiguration == other.globNodeConfiguration &&
        globNodeState == other.globNodeState &&
        primaryOutputs == other.primaryOutputs &&
        lastKnownDigest == other.lastKnownDigest &&
        deletedBy == other.deletedBy;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, generatedNodeConfiguration.hashCode);
    _$hash = $jc(_$hash, generatedNodeState.hashCode);
    _$hash = $jc(_$hash, globNodeConfiguration.hashCode);
    _$hash = $jc(_$hash, globNodeState.hashCode);
    _$hash = $jc(_$hash, primaryOutputs.hashCode);
    _$hash = $jc(_$hash, lastKnownDigest.hashCode);
    _$hash = $jc(_$hash, deletedBy.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AssetNode')
          ..add('id', id)
          ..add('type', type)
          ..add('generatedNodeConfiguration', generatedNodeConfiguration)
          ..add('generatedNodeState', generatedNodeState)
          ..add('globNodeConfiguration', globNodeConfiguration)
          ..add('globNodeState', globNodeState)
          ..add('primaryOutputs', primaryOutputs)
          ..add('lastKnownDigest', lastKnownDigest)
          ..add('deletedBy', deletedBy))
        .toString();
  }
}

class AssetNodeBuilder implements Builder<AssetNode, AssetNodeBuilder> {
  _$AssetNode? _$v;

  AssetId? _id;
  AssetId? get id => _$this._id;
  set id(AssetId? id) => _$this._id = id;

  NodeType? _type;
  NodeType? get type => _$this._type;
  set type(NodeType? type) => _$this._type = type;

  GeneratedNodeConfigurationBuilder? _generatedNodeConfiguration;
  GeneratedNodeConfigurationBuilder get generatedNodeConfiguration =>
      _$this._generatedNodeConfiguration ??=
          new GeneratedNodeConfigurationBuilder();
  set generatedNodeConfiguration(
    GeneratedNodeConfigurationBuilder? generatedNodeConfiguration,
  ) => _$this._generatedNodeConfiguration = generatedNodeConfiguration;

  GeneratedNodeStateBuilder? _generatedNodeState;
  GeneratedNodeStateBuilder get generatedNodeState =>
      _$this._generatedNodeState ??= new GeneratedNodeStateBuilder();
  set generatedNodeState(GeneratedNodeStateBuilder? generatedNodeState) =>
      _$this._generatedNodeState = generatedNodeState;

  GlobNodeConfigurationBuilder? _globNodeConfiguration;
  GlobNodeConfigurationBuilder get globNodeConfiguration =>
      _$this._globNodeConfiguration ??= new GlobNodeConfigurationBuilder();
  set globNodeConfiguration(
    GlobNodeConfigurationBuilder? globNodeConfiguration,
  ) => _$this._globNodeConfiguration = globNodeConfiguration;

  GlobNodeStateBuilder? _globNodeState;
  GlobNodeStateBuilder get globNodeState =>
      _$this._globNodeState ??= new GlobNodeStateBuilder();
  set globNodeState(GlobNodeStateBuilder? globNodeState) =>
      _$this._globNodeState = globNodeState;

  SetBuilder<AssetId>? _primaryOutputs;
  SetBuilder<AssetId> get primaryOutputs =>
      _$this._primaryOutputs ??= new SetBuilder<AssetId>();
  set primaryOutputs(SetBuilder<AssetId>? primaryOutputs) =>
      _$this._primaryOutputs = primaryOutputs;

  Digest? _lastKnownDigest;
  Digest? get lastKnownDigest => _$this._lastKnownDigest;
  set lastKnownDigest(Digest? lastKnownDigest) =>
      _$this._lastKnownDigest = lastKnownDigest;

  SetBuilder<PostProcessBuildStepId>? _deletedBy;
  SetBuilder<PostProcessBuildStepId> get deletedBy =>
      _$this._deletedBy ??= new SetBuilder<PostProcessBuildStepId>();
  set deletedBy(SetBuilder<PostProcessBuildStepId>? deletedBy) =>
      _$this._deletedBy = deletedBy;

  AssetNodeBuilder();

  AssetNodeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _type = $v.type;
      _generatedNodeConfiguration = $v.generatedNodeConfiguration?.toBuilder();
      _generatedNodeState = $v.generatedNodeState?.toBuilder();
      _globNodeConfiguration = $v.globNodeConfiguration?.toBuilder();
      _globNodeState = $v.globNodeState?.toBuilder();
      _primaryOutputs = $v.primaryOutputs.toBuilder();
      _lastKnownDigest = $v.lastKnownDigest;
      _deletedBy = $v.deletedBy.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AssetNode other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AssetNode;
  }

  @override
  void update(void Function(AssetNodeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AssetNode build() => _build();

  _$AssetNode _build() {
    _$AssetNode _$result;
    try {
      _$result =
          _$v ??
          new _$AssetNode._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'AssetNode', 'id'),
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'AssetNode',
              'type',
            ),
            generatedNodeConfiguration: _generatedNodeConfiguration?.build(),
            generatedNodeState: _generatedNodeState?.build(),
            globNodeConfiguration: _globNodeConfiguration?.build(),
            globNodeState: _globNodeState?.build(),
            primaryOutputs: primaryOutputs.build(),
            lastKnownDigest: lastKnownDigest,
            deletedBy: deletedBy.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'generatedNodeConfiguration';
        _generatedNodeConfiguration?.build();
        _$failedField = 'generatedNodeState';
        _generatedNodeState?.build();
        _$failedField = 'globNodeConfiguration';
        _globNodeConfiguration?.build();
        _$failedField = 'globNodeState';
        _globNodeState?.build();
        _$failedField = 'primaryOutputs';
        primaryOutputs.build();

        _$failedField = 'deletedBy';
        deletedBy.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
          r'AssetNode',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GeneratedNodeConfiguration extends GeneratedNodeConfiguration {
  @override
  final AssetId primaryInput;
  @override
  final int phaseNumber;
  @override
  final bool isHidden;

  factory _$GeneratedNodeConfiguration([
    void Function(GeneratedNodeConfigurationBuilder)? updates,
  ]) => (new GeneratedNodeConfigurationBuilder()..update(updates))._build();

  _$GeneratedNodeConfiguration._({
    required this.primaryInput,
    required this.phaseNumber,
    required this.isHidden,
  }) : super._() {
    BuiltValueNullFieldError.checkNotNull(
      primaryInput,
      r'GeneratedNodeConfiguration',
      'primaryInput',
    );
    BuiltValueNullFieldError.checkNotNull(
      phaseNumber,
      r'GeneratedNodeConfiguration',
      'phaseNumber',
    );
    BuiltValueNullFieldError.checkNotNull(
      isHidden,
      r'GeneratedNodeConfiguration',
      'isHidden',
    );
  }

  @override
  GeneratedNodeConfiguration rebuild(
    void Function(GeneratedNodeConfigurationBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GeneratedNodeConfigurationBuilder toBuilder() =>
      new GeneratedNodeConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GeneratedNodeConfiguration &&
        primaryInput == other.primaryInput &&
        phaseNumber == other.phaseNumber &&
        isHidden == other.isHidden;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, primaryInput.hashCode);
    _$hash = $jc(_$hash, phaseNumber.hashCode);
    _$hash = $jc(_$hash, isHidden.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GeneratedNodeConfiguration')
          ..add('primaryInput', primaryInput)
          ..add('phaseNumber', phaseNumber)
          ..add('isHidden', isHidden))
        .toString();
  }
}

class GeneratedNodeConfigurationBuilder
    implements
        Builder<GeneratedNodeConfiguration, GeneratedNodeConfigurationBuilder> {
  _$GeneratedNodeConfiguration? _$v;

  AssetId? _primaryInput;
  AssetId? get primaryInput => _$this._primaryInput;
  set primaryInput(AssetId? primaryInput) =>
      _$this._primaryInput = primaryInput;

  int? _phaseNumber;
  int? get phaseNumber => _$this._phaseNumber;
  set phaseNumber(int? phaseNumber) => _$this._phaseNumber = phaseNumber;

  bool? _isHidden;
  bool? get isHidden => _$this._isHidden;
  set isHidden(bool? isHidden) => _$this._isHidden = isHidden;

  GeneratedNodeConfigurationBuilder();

  GeneratedNodeConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _primaryInput = $v.primaryInput;
      _phaseNumber = $v.phaseNumber;
      _isHidden = $v.isHidden;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GeneratedNodeConfiguration other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GeneratedNodeConfiguration;
  }

  @override
  void update(void Function(GeneratedNodeConfigurationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GeneratedNodeConfiguration build() => _build();

  _$GeneratedNodeConfiguration _build() {
    final _$result =
        _$v ??
        new _$GeneratedNodeConfiguration._(
          primaryInput: BuiltValueNullFieldError.checkNotNull(
            primaryInput,
            r'GeneratedNodeConfiguration',
            'primaryInput',
          ),
          phaseNumber: BuiltValueNullFieldError.checkNotNull(
            phaseNumber,
            r'GeneratedNodeConfiguration',
            'phaseNumber',
          ),
          isHidden: BuiltValueNullFieldError.checkNotNull(
            isHidden,
            r'GeneratedNodeConfiguration',
            'isHidden',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

class _$GeneratedNodeState extends GeneratedNodeState {
  @override
  final BuiltSet<AssetId> inputs;
  @override
  final PendingBuildAction pendingBuildAction;
  @override
  final bool wasOutput;
  @override
  final bool isFailure;

  factory _$GeneratedNodeState([
    void Function(GeneratedNodeStateBuilder)? updates,
  ]) => (new GeneratedNodeStateBuilder()..update(updates))._build();

  _$GeneratedNodeState._({
    required this.inputs,
    required this.pendingBuildAction,
    required this.wasOutput,
    required this.isFailure,
  }) : super._() {
    BuiltValueNullFieldError.checkNotNull(
      inputs,
      r'GeneratedNodeState',
      'inputs',
    );
    BuiltValueNullFieldError.checkNotNull(
      pendingBuildAction,
      r'GeneratedNodeState',
      'pendingBuildAction',
    );
    BuiltValueNullFieldError.checkNotNull(
      wasOutput,
      r'GeneratedNodeState',
      'wasOutput',
    );
    BuiltValueNullFieldError.checkNotNull(
      isFailure,
      r'GeneratedNodeState',
      'isFailure',
    );
  }

  @override
  GeneratedNodeState rebuild(
    void Function(GeneratedNodeStateBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GeneratedNodeStateBuilder toBuilder() =>
      new GeneratedNodeStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GeneratedNodeState &&
        inputs == other.inputs &&
        pendingBuildAction == other.pendingBuildAction &&
        wasOutput == other.wasOutput &&
        isFailure == other.isFailure;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, inputs.hashCode);
    _$hash = $jc(_$hash, pendingBuildAction.hashCode);
    _$hash = $jc(_$hash, wasOutput.hashCode);
    _$hash = $jc(_$hash, isFailure.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GeneratedNodeState')
          ..add('inputs', inputs)
          ..add('pendingBuildAction', pendingBuildAction)
          ..add('wasOutput', wasOutput)
          ..add('isFailure', isFailure))
        .toString();
  }
}

class GeneratedNodeStateBuilder
    implements Builder<GeneratedNodeState, GeneratedNodeStateBuilder> {
  _$GeneratedNodeState? _$v;

  SetBuilder<AssetId>? _inputs;
  SetBuilder<AssetId> get inputs =>
      _$this._inputs ??= new SetBuilder<AssetId>();
  set inputs(SetBuilder<AssetId>? inputs) => _$this._inputs = inputs;

  PendingBuildAction? _pendingBuildAction;
  PendingBuildAction? get pendingBuildAction => _$this._pendingBuildAction;
  set pendingBuildAction(PendingBuildAction? pendingBuildAction) =>
      _$this._pendingBuildAction = pendingBuildAction;

  bool? _wasOutput;
  bool? get wasOutput => _$this._wasOutput;
  set wasOutput(bool? wasOutput) => _$this._wasOutput = wasOutput;

  bool? _isFailure;
  bool? get isFailure => _$this._isFailure;
  set isFailure(bool? isFailure) => _$this._isFailure = isFailure;

  GeneratedNodeStateBuilder();

  GeneratedNodeStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _inputs = $v.inputs.toBuilder();
      _pendingBuildAction = $v.pendingBuildAction;
      _wasOutput = $v.wasOutput;
      _isFailure = $v.isFailure;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GeneratedNodeState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GeneratedNodeState;
  }

  @override
  void update(void Function(GeneratedNodeStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GeneratedNodeState build() => _build();

  _$GeneratedNodeState _build() {
    _$GeneratedNodeState _$result;
    try {
      _$result =
          _$v ??
          new _$GeneratedNodeState._(
            inputs: inputs.build(),
            pendingBuildAction: BuiltValueNullFieldError.checkNotNull(
              pendingBuildAction,
              r'GeneratedNodeState',
              'pendingBuildAction',
            ),
            wasOutput: BuiltValueNullFieldError.checkNotNull(
              wasOutput,
              r'GeneratedNodeState',
              'wasOutput',
            ),
            isFailure: BuiltValueNullFieldError.checkNotNull(
              isFailure,
              r'GeneratedNodeState',
              'isFailure',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'inputs';
        inputs.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
          r'GeneratedNodeState',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GlobNodeConfiguration extends GlobNodeConfiguration {
  @override
  final String glob;
  @override
  final int phaseNumber;

  factory _$GlobNodeConfiguration([
    void Function(GlobNodeConfigurationBuilder)? updates,
  ]) => (new GlobNodeConfigurationBuilder()..update(updates))._build();

  _$GlobNodeConfiguration._({required this.glob, required this.phaseNumber})
    : super._() {
    BuiltValueNullFieldError.checkNotNull(
      glob,
      r'GlobNodeConfiguration',
      'glob',
    );
    BuiltValueNullFieldError.checkNotNull(
      phaseNumber,
      r'GlobNodeConfiguration',
      'phaseNumber',
    );
  }

  @override
  GlobNodeConfiguration rebuild(
    void Function(GlobNodeConfigurationBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GlobNodeConfigurationBuilder toBuilder() =>
      new GlobNodeConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GlobNodeConfiguration &&
        glob == other.glob &&
        phaseNumber == other.phaseNumber;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, glob.hashCode);
    _$hash = $jc(_$hash, phaseNumber.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GlobNodeConfiguration')
          ..add('glob', glob)
          ..add('phaseNumber', phaseNumber))
        .toString();
  }
}

class GlobNodeConfigurationBuilder
    implements Builder<GlobNodeConfiguration, GlobNodeConfigurationBuilder> {
  _$GlobNodeConfiguration? _$v;

  String? _glob;
  String? get glob => _$this._glob;
  set glob(String? glob) => _$this._glob = glob;

  int? _phaseNumber;
  int? get phaseNumber => _$this._phaseNumber;
  set phaseNumber(int? phaseNumber) => _$this._phaseNumber = phaseNumber;

  GlobNodeConfigurationBuilder();

  GlobNodeConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _glob = $v.glob;
      _phaseNumber = $v.phaseNumber;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GlobNodeConfiguration other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GlobNodeConfiguration;
  }

  @override
  void update(void Function(GlobNodeConfigurationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GlobNodeConfiguration build() => _build();

  _$GlobNodeConfiguration _build() {
    final _$result =
        _$v ??
        new _$GlobNodeConfiguration._(
          glob: BuiltValueNullFieldError.checkNotNull(
            glob,
            r'GlobNodeConfiguration',
            'glob',
          ),
          phaseNumber: BuiltValueNullFieldError.checkNotNull(
            phaseNumber,
            r'GlobNodeConfiguration',
            'phaseNumber',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

class _$GlobNodeState extends GlobNodeState {
  @override
  final BuiltSet<AssetId> inputs;
  @override
  final PendingBuildAction pendingBuildAction;
  @override
  final BuiltList<AssetId> results;

  factory _$GlobNodeState([void Function(GlobNodeStateBuilder)? updates]) =>
      (new GlobNodeStateBuilder()..update(updates))._build();

  _$GlobNodeState._({
    required this.inputs,
    required this.pendingBuildAction,
    required this.results,
  }) : super._() {
    BuiltValueNullFieldError.checkNotNull(inputs, r'GlobNodeState', 'inputs');
    BuiltValueNullFieldError.checkNotNull(
      pendingBuildAction,
      r'GlobNodeState',
      'pendingBuildAction',
    );
    BuiltValueNullFieldError.checkNotNull(results, r'GlobNodeState', 'results');
  }

  @override
  GlobNodeState rebuild(void Function(GlobNodeStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GlobNodeStateBuilder toBuilder() => new GlobNodeStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GlobNodeState &&
        inputs == other.inputs &&
        pendingBuildAction == other.pendingBuildAction &&
        results == other.results;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, inputs.hashCode);
    _$hash = $jc(_$hash, pendingBuildAction.hashCode);
    _$hash = $jc(_$hash, results.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GlobNodeState')
          ..add('inputs', inputs)
          ..add('pendingBuildAction', pendingBuildAction)
          ..add('results', results))
        .toString();
  }
}

class GlobNodeStateBuilder
    implements Builder<GlobNodeState, GlobNodeStateBuilder> {
  _$GlobNodeState? _$v;

  SetBuilder<AssetId>? _inputs;
  SetBuilder<AssetId> get inputs =>
      _$this._inputs ??= new SetBuilder<AssetId>();
  set inputs(SetBuilder<AssetId>? inputs) => _$this._inputs = inputs;

  PendingBuildAction? _pendingBuildAction;
  PendingBuildAction? get pendingBuildAction => _$this._pendingBuildAction;
  set pendingBuildAction(PendingBuildAction? pendingBuildAction) =>
      _$this._pendingBuildAction = pendingBuildAction;

  ListBuilder<AssetId>? _results;
  ListBuilder<AssetId> get results =>
      _$this._results ??= new ListBuilder<AssetId>();
  set results(ListBuilder<AssetId>? results) => _$this._results = results;

  GlobNodeStateBuilder();

  GlobNodeStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _inputs = $v.inputs.toBuilder();
      _pendingBuildAction = $v.pendingBuildAction;
      _results = $v.results.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GlobNodeState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GlobNodeState;
  }

  @override
  void update(void Function(GlobNodeStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GlobNodeState build() => _build();

  _$GlobNodeState _build() {
    _$GlobNodeState _$result;
    try {
      _$result =
          _$v ??
          new _$GlobNodeState._(
            inputs: inputs.build(),
            pendingBuildAction: BuiltValueNullFieldError.checkNotNull(
              pendingBuildAction,
              r'GlobNodeState',
              'pendingBuildAction',
            ),
            results: results.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'inputs';
        inputs.build();

        _$failedField = 'results';
        results.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
          r'GlobNodeState',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
