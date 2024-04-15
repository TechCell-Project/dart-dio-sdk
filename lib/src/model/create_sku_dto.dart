//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:dart_dio_sdk/src/model/price_schema.dart';
import 'package:built_collection/built_collection.dart';
import 'package:dart_dio_sdk/src/model/attribute_in_product_schema.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_sku_dto.g.dart';

/// CreateSkuDto
///
/// Properties:
/// * [name] 
/// * [description] 
/// * [spuId] 
/// * [spuModelSlug] 
/// * [price] 
/// * [status] 
/// * [attributes] 
/// * [tags] 
/// * [imagePublicId] 
@BuiltValue()
abstract class CreateSkuDto implements Built<CreateSkuDto, CreateSkuDtoBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'spuId')
  String get spuId;

  @BuiltValueField(wireName: r'spuModelSlug')
  String get spuModelSlug;

  @BuiltValueField(wireName: r'price')
  PriceSchema get price;

  @BuiltValueField(wireName: r'status')
  CreateSkuDtoStatusEnum get status;
  // enum statusEnum {  selling,  deleted,  newly-released,  };

  @BuiltValueField(wireName: r'attributes')
  BuiltList<AttributeInProductSchema> get attributes;

  @BuiltValueField(wireName: r'tags')
  BuiltList<String>? get tags;

  @BuiltValueField(wireName: r'imagePublicId')
  String? get imagePublicId;

  CreateSkuDto._();

  factory CreateSkuDto([void updates(CreateSkuDtoBuilder b)]) = _$CreateSkuDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateSkuDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateSkuDto> get serializer => _$CreateSkuDtoSerializer();
}

class _$CreateSkuDtoSerializer implements PrimitiveSerializer<CreateSkuDto> {
  @override
  final Iterable<Type> types = const [CreateSkuDto, _$CreateSkuDto];

  @override
  final String wireName = r'CreateSkuDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateSkuDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    yield r'spuId';
    yield serializers.serialize(
      object.spuId,
      specifiedType: const FullType(String),
    );
    yield r'spuModelSlug';
    yield serializers.serialize(
      object.spuModelSlug,
      specifiedType: const FullType(String),
    );
    yield r'price';
    yield serializers.serialize(
      object.price,
      specifiedType: const FullType(PriceSchema),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(CreateSkuDtoStatusEnum),
    );
    yield r'attributes';
    yield serializers.serialize(
      object.attributes,
      specifiedType: const FullType(BuiltList, [FullType(AttributeInProductSchema)]),
    );
    if (object.tags != null) {
      yield r'tags';
      yield serializers.serialize(
        object.tags,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.imagePublicId != null) {
      yield r'imagePublicId';
      yield serializers.serialize(
        object.imagePublicId,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateSkuDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateSkuDtoBuilder result,
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
        case r'spuId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.spuId = valueDes;
          break;
        case r'spuModelSlug':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.spuModelSlug = valueDes;
          break;
        case r'price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PriceSchema),
          ) as PriceSchema;
          result.price.replace(valueDes);
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CreateSkuDtoStatusEnum),
          ) as CreateSkuDtoStatusEnum;
          result.status = valueDes;
          break;
        case r'attributes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(AttributeInProductSchema)]),
          ) as BuiltList<AttributeInProductSchema>;
          result.attributes.replace(valueDes);
          break;
        case r'tags':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.tags.replace(valueDes);
          break;
        case r'imagePublicId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.imagePublicId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateSkuDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateSkuDtoBuilder();
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

class CreateSkuDtoStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'selling')
  static const CreateSkuDtoStatusEnum selling = _$createSkuDtoStatusEnum_selling;
  @BuiltValueEnumConst(wireName: r'deleted')
  static const CreateSkuDtoStatusEnum deleted = _$createSkuDtoStatusEnum_deleted;
  @BuiltValueEnumConst(wireName: r'newly-released')
  static const CreateSkuDtoStatusEnum newlyReleased = _$createSkuDtoStatusEnum_newlyReleased;

  static Serializer<CreateSkuDtoStatusEnum> get serializer => _$createSkuDtoStatusEnumSerializer;

  const CreateSkuDtoStatusEnum._(String name): super(name);

  static BuiltSet<CreateSkuDtoStatusEnum> get values => _$createSkuDtoStatusEnumValues;
  static CreateSkuDtoStatusEnum valueOf(String name) => _$createSkuDtoStatusEnumValueOf(name);
}

