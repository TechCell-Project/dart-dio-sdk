//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:dart_dio_sdk/src/model/spu_model_schema_dto.dart';
import 'package:dart_dio_sdk/src/model/attribute_in_product_schema_dto.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_spu_dto.g.dart';

/// CreateSpuDto
///
/// Properties:
/// * [brandId] - Brand id
/// * [name] - Spu name
/// * [description] - Spu description
/// * [commonAttributes] - Common attributes
/// * [models] - Models
/// * [status] - Spu status
@BuiltValue()
abstract class CreateSpuDto implements Built<CreateSpuDto, CreateSpuDtoBuilder> {
  /// Brand id
  @BuiltValueField(wireName: r'brandId')
  String get brandId;

  /// Spu name
  @BuiltValueField(wireName: r'name')
  String get name;

  /// Spu description
  @BuiltValueField(wireName: r'description')
  String? get description;

  /// Common attributes
  @BuiltValueField(wireName: r'commonAttributes')
  BuiltList<AttributeInProductSchemaDto>? get commonAttributes;

  /// Models
  @BuiltValueField(wireName: r'models')
  BuiltList<SPUModelSchemaDto>? get models;

  /// Spu status
  @BuiltValueField(wireName: r'status')
  CreateSpuDtoStatusEnum? get status;
  // enum statusEnum {  available,  deleted,  };

  CreateSpuDto._();

  factory CreateSpuDto([void updates(CreateSpuDtoBuilder b)]) = _$CreateSpuDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateSpuDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateSpuDto> get serializer => _$CreateSpuDtoSerializer();
}

class _$CreateSpuDtoSerializer implements PrimitiveSerializer<CreateSpuDto> {
  @override
  final Iterable<Type> types = const [CreateSpuDto, _$CreateSpuDto];

  @override
  final String wireName = r'CreateSpuDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateSpuDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'brandId';
    yield serializers.serialize(
      object.brandId,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.commonAttributes != null) {
      yield r'commonAttributes';
      yield serializers.serialize(
        object.commonAttributes,
        specifiedType: const FullType(BuiltList, [FullType(AttributeInProductSchemaDto)]),
      );
    }
    if (object.models != null) {
      yield r'models';
      yield serializers.serialize(
        object.models,
        specifiedType: const FullType(BuiltList, [FullType(SPUModelSchemaDto)]),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(CreateSpuDtoStatusEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateSpuDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateSpuDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'brandId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.brandId = valueDes;
          break;
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
        case r'commonAttributes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(AttributeInProductSchemaDto)]),
          ) as BuiltList<AttributeInProductSchemaDto>;
          result.commonAttributes.replace(valueDes);
          break;
        case r'models':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SPUModelSchemaDto)]),
          ) as BuiltList<SPUModelSchemaDto>;
          result.models.replace(valueDes);
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CreateSpuDtoStatusEnum),
          ) as CreateSpuDtoStatusEnum;
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
  CreateSpuDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateSpuDtoBuilder();
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

class CreateSpuDtoStatusEnum extends EnumClass {

  /// Spu status
  @BuiltValueEnumConst(wireName: r'available')
  static const CreateSpuDtoStatusEnum available = _$createSpuDtoStatusEnum_available;
  /// Spu status
  @BuiltValueEnumConst(wireName: r'deleted')
  static const CreateSpuDtoStatusEnum deleted = _$createSpuDtoStatusEnum_deleted;

  static Serializer<CreateSpuDtoStatusEnum> get serializer => _$createSpuDtoStatusEnumSerializer;

  const CreateSpuDtoStatusEnum._(String name): super(name);

  static BuiltSet<CreateSpuDtoStatusEnum> get values => _$createSpuDtoStatusEnumValues;
  static CreateSpuDtoStatusEnum valueOf(String name) => _$createSpuDtoStatusEnumValueOf(name);
}

