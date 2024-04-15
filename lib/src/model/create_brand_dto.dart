//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_brand_dto.g.dart';

/// CreateBrandDto
///
/// Properties:
/// * [name] 
/// * [description] 
/// * [status] 
@BuiltValue()
abstract class CreateBrandDto implements Built<CreateBrandDto, CreateBrandDtoBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'description')
  String get description;

  @BuiltValueField(wireName: r'status')
  CreateBrandDtoStatusEnum? get status;
  // enum statusEnum {  active,  inactive,  deleted,  };

  CreateBrandDto._();

  factory CreateBrandDto([void updates(CreateBrandDtoBuilder b)]) = _$CreateBrandDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateBrandDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateBrandDto> get serializer => _$CreateBrandDtoSerializer();
}

class _$CreateBrandDtoSerializer implements PrimitiveSerializer<CreateBrandDto> {
  @override
  final Iterable<Type> types = const [CreateBrandDto, _$CreateBrandDto];

  @override
  final String wireName = r'CreateBrandDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateBrandDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'description';
    yield serializers.serialize(
      object.description,
      specifiedType: const FullType(String),
    );
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(CreateBrandDtoStatusEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateBrandDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateBrandDtoBuilder result,
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
            specifiedType: const FullType(CreateBrandDtoStatusEnum),
          ) as CreateBrandDtoStatusEnum;
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
  CreateBrandDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateBrandDtoBuilder();
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

class CreateBrandDtoStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'active')
  static const CreateBrandDtoStatusEnum active = _$createBrandDtoStatusEnum_active;
  @BuiltValueEnumConst(wireName: r'inactive')
  static const CreateBrandDtoStatusEnum inactive = _$createBrandDtoStatusEnum_inactive;
  @BuiltValueEnumConst(wireName: r'deleted')
  static const CreateBrandDtoStatusEnum deleted = _$createBrandDtoStatusEnum_deleted;

  static Serializer<CreateBrandDtoStatusEnum> get serializer => _$createBrandDtoStatusEnumSerializer;

  const CreateBrandDtoStatusEnum._(String name): super(name);

  static BuiltSet<CreateBrandDtoStatusEnum> get values => _$createBrandDtoStatusEnumValues;
  static CreateBrandDtoStatusEnum valueOf(String name) => _$createBrandDtoStatusEnumValueOf(name);
}

