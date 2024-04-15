//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:dart_dio_sdk/src/model/block_activity_log.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_block_schema.g.dart';

/// UserBlockSchema
///
/// Properties:
/// * [isBlocked] 
/// * [activityLogs] 
@BuiltValue()
abstract class UserBlockSchema implements Built<UserBlockSchema, UserBlockSchemaBuilder> {
  @BuiltValueField(wireName: r'isBlocked')
  bool get isBlocked;

  @BuiltValueField(wireName: r'activityLogs')
  BuiltList<BlockActivityLog> get activityLogs;

  UserBlockSchema._();

  factory UserBlockSchema([void updates(UserBlockSchemaBuilder b)]) = _$UserBlockSchema;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserBlockSchemaBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserBlockSchema> get serializer => _$UserBlockSchemaSerializer();
}

class _$UserBlockSchemaSerializer implements PrimitiveSerializer<UserBlockSchema> {
  @override
  final Iterable<Type> types = const [UserBlockSchema, _$UserBlockSchema];

  @override
  final String wireName = r'UserBlockSchema';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserBlockSchema object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'isBlocked';
    yield serializers.serialize(
      object.isBlocked,
      specifiedType: const FullType(bool),
    );
    yield r'activityLogs';
    yield serializers.serialize(
      object.activityLogs,
      specifiedType: const FullType(BuiltList, [FullType(BlockActivityLog)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    UserBlockSchema object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UserBlockSchemaBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'isBlocked':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isBlocked = valueDes;
          break;
        case r'activityLogs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(BlockActivityLog)]),
          ) as BuiltList<BlockActivityLog>;
          result.activityLogs.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserBlockSchema deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserBlockSchemaBuilder();
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

