//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'block_activity_log.g.dart';

/// BlockActivityLog
///
/// Properties:
/// * [action] 
/// * [actionAt] 
/// * [actionBy] 
/// * [reason] 
/// * [note] 
@BuiltValue()
abstract class BlockActivityLog implements Built<BlockActivityLog, BlockActivityLogBuilder> {
  @BuiltValueField(wireName: r'action')
  BlockActivityLogActionEnum get action;
  // enum actionEnum {  block,  unblock,  };

  @BuiltValueField(wireName: r'actionAt')
  DateTime get actionAt;

  @BuiltValueField(wireName: r'actionBy')
  String get actionBy;

  @BuiltValueField(wireName: r'reason')
  String get reason;

  @BuiltValueField(wireName: r'note')
  String get note;

  BlockActivityLog._();

  factory BlockActivityLog([void updates(BlockActivityLogBuilder b)]) = _$BlockActivityLog;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BlockActivityLogBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BlockActivityLog> get serializer => _$BlockActivityLogSerializer();
}

class _$BlockActivityLogSerializer implements PrimitiveSerializer<BlockActivityLog> {
  @override
  final Iterable<Type> types = const [BlockActivityLog, _$BlockActivityLog];

  @override
  final String wireName = r'BlockActivityLog';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BlockActivityLog object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'action';
    yield serializers.serialize(
      object.action,
      specifiedType: const FullType(BlockActivityLogActionEnum),
    );
    yield r'actionAt';
    yield serializers.serialize(
      object.actionAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'actionBy';
    yield serializers.serialize(
      object.actionBy,
      specifiedType: const FullType(String),
    );
    yield r'reason';
    yield serializers.serialize(
      object.reason,
      specifiedType: const FullType(String),
    );
    yield r'note';
    yield serializers.serialize(
      object.note,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    BlockActivityLog object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BlockActivityLogBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'action':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BlockActivityLogActionEnum),
          ) as BlockActivityLogActionEnum;
          result.action = valueDes;
          break;
        case r'actionAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.actionAt = valueDes;
          break;
        case r'actionBy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.actionBy = valueDes;
          break;
        case r'reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.reason = valueDes;
          break;
        case r'note':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.note = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BlockActivityLog deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BlockActivityLogBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

class BlockActivityLogActionEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'block')
  static const BlockActivityLogActionEnum block = _$blockActivityLogActionEnum_block;
  @BuiltValueEnumConst(wireName: r'unblock')
  static const BlockActivityLogActionEnum unblock = _$blockActivityLogActionEnum_unblock;

  static Serializer<BlockActivityLogActionEnum> get serializer => _$blockActivityLogActionEnumSerializer;

  const BlockActivityLogActionEnum._(String name): super(name);

  static BuiltSet<BlockActivityLogActionEnum> get values => _$blockActivityLogActionEnumValues;
  static BlockActivityLogActionEnum valueOf(String name) => _$blockActivityLogActionEnumValueOf(name);
}

