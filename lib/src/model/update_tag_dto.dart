//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_tag_dto.g.dart';

/// UpdateTagDto
///
/// Properties:
/// * [name] 
/// * [description] 
/// * [status] 
@BuiltValue()
abstract class UpdateTagDto implements Built<UpdateTagDto, UpdateTagDtoBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'status')
  UpdateTagDtoStatusEnum? get status;
  // enum statusEnum {  active,  deleted,  };

  UpdateTagDto._();

  factory UpdateTagDto([void updates(UpdateTagDtoBuilder b)]) = _$UpdateTagDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateTagDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateTagDto> get serializer => _$UpdateTagDtoSerializer();
}

class _$UpdateTagDtoSerializer implements PrimitiveSerializer<UpdateTagDto> {
  @override
  final Iterable<Type> types = const [UpdateTagDto, _$UpdateTagDto];

  @override
  final String wireName = r'UpdateTagDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateTagDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(UpdateTagDtoStatusEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateTagDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateTagDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UpdateTagDtoStatusEnum),
          ) as UpdateTagDtoStatusEnum;
          result.status = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateTagDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateTagDtoBuilder();
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

class UpdateTagDtoStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'active')
  static const UpdateTagDtoStatusEnum active = _$updateTagDtoStatusEnum_active;
  @BuiltValueEnumConst(wireName: r'deleted')
  static const UpdateTagDtoStatusEnum deleted = _$updateTagDtoStatusEnum_deleted;

  static Serializer<UpdateTagDtoStatusEnum> get serializer => _$updateTagDtoStatusEnumSerializer;

  const UpdateTagDtoStatusEnum._(String name): super(name);

  static BuiltSet<UpdateTagDtoStatusEnum> get values => _$updateTagDtoStatusEnumValues;
  static UpdateTagDtoStatusEnum valueOf(String name) => _$updateTagDtoStatusEnumValueOf(name);
}

