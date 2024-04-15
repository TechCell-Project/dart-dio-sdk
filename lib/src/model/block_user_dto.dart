//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:dart_dio_sdk/src/model/block_activity_log_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'block_user_dto.g.dart';

/// BlockUserDto
///
/// Properties:
/// * [action] 
/// * [activityLogs] 
@BuiltValue()
abstract class BlockUserDto implements Built<BlockUserDto, BlockUserDtoBuilder> {
  @BuiltValueField(wireName: r'action')
  BlockUserDtoActionEnum get action;
  // enum actionEnum {  block,  unblock,  };

  @BuiltValueField(wireName: r'activityLogs')
  BlockActivityLogDto get activityLogs;

  BlockUserDto._();

  factory BlockUserDto([void updates(BlockUserDtoBuilder b)]) = _$BlockUserDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BlockUserDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BlockUserDto> get serializer => _$BlockUserDtoSerializer();
}

class _$BlockUserDtoSerializer implements PrimitiveSerializer<BlockUserDto> {
  @override
  final Iterable<Type> types = const [BlockUserDto, _$BlockUserDto];

  @override
  final String wireName = r'BlockUserDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BlockUserDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'action';
    yield serializers.serialize(
      object.action,
      specifiedType: const FullType(BlockUserDtoActionEnum),
    );
    yield r'activityLogs';
    yield serializers.serialize(
      object.activityLogs,
      specifiedType: const FullType(BlockActivityLogDto),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    BlockUserDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BlockUserDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'action':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BlockUserDtoActionEnum),
          ) as BlockUserDtoActionEnum;
          result.action = valueDes;
          break;
        case r'activityLogs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BlockActivityLogDto),
          ) as BlockActivityLogDto;
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
  BlockUserDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BlockUserDtoBuilder();
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

class BlockUserDtoActionEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'block')
  static const BlockUserDtoActionEnum block = _$blockUserDtoActionEnum_block;
  @BuiltValueEnumConst(wireName: r'unblock')
  static const BlockUserDtoActionEnum unblock = _$blockUserDtoActionEnum_unblock;

  static Serializer<BlockUserDtoActionEnum> get serializer => _$blockUserDtoActionEnumSerializer;

  const BlockUserDtoActionEnum._(String name): super(name);

  static BuiltSet<BlockUserDtoActionEnum> get values => _$blockUserDtoActionEnumValues;
  static BlockUserDtoActionEnum valueOf(String name) => _$blockUserDtoActionEnumValueOf(name);
}

