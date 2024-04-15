//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_brand_dto.g.dart';

/// UpdateBrandDto
///
/// Properties:
/// * [name] 
/// * [description] 
/// * [status] 
@BuiltValue()
abstract class UpdateBrandDto implements Built<UpdateBrandDto, UpdateBrandDtoBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'status')
  UpdateBrandDtoStatusEnum? get status;
  // enum statusEnum {  active,  inactive,  deleted,  };

  UpdateBrandDto._();

  factory UpdateBrandDto([void updates(UpdateBrandDtoBuilder b)]) = _$UpdateBrandDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateBrandDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateBrandDto> get serializer => _$UpdateBrandDtoSerializer();
}

class _$UpdateBrandDtoSerializer implements PrimitiveSerializer<UpdateBrandDto> {
  @override
  final Iterable<Type> types = const [UpdateBrandDto, _$UpdateBrandDto];

  @override
  final String wireName = r'UpdateBrandDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateBrandDto object, {
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
        specifiedType: const FullType(UpdateBrandDtoStatusEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateBrandDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateBrandDtoBuilder result,
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
            specifiedType: const FullType(UpdateBrandDtoStatusEnum),
          ) as UpdateBrandDtoStatusEnum;
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
  UpdateBrandDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateBrandDtoBuilder();
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

class UpdateBrandDtoStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'active')
  static const UpdateBrandDtoStatusEnum active = _$updateBrandDtoStatusEnum_active;
  @BuiltValueEnumConst(wireName: r'inactive')
  static const UpdateBrandDtoStatusEnum inactive = _$updateBrandDtoStatusEnum_inactive;
  @BuiltValueEnumConst(wireName: r'deleted')
  static const UpdateBrandDtoStatusEnum deleted = _$updateBrandDtoStatusEnum_deleted;

  static Serializer<UpdateBrandDtoStatusEnum> get serializer => _$updateBrandDtoStatusEnumSerializer;

  const UpdateBrandDtoStatusEnum._(String name): super(name);

  static BuiltSet<UpdateBrandDtoStatusEnum> get values => _$updateBrandDtoStatusEnumValues;
  static UpdateBrandDtoStatusEnum valueOf(String name) => _$updateBrandDtoStatusEnumValueOf(name);
}

