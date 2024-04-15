//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:dart_dio_sdk/src/model/price_schema.dart';
import 'package:built_collection/built_collection.dart';
import 'package:dart_dio_sdk/src/model/sku_image_schema.dart';
import 'package:dart_dio_sdk/src/model/attribute_in_product_schema.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sku.g.dart';

/// SKU
///
/// Properties:
/// * [name] 
/// * [description] 
/// * [spuId] 
/// * [spuModelSlug] 
/// * [price] 
/// * [image] 
/// * [status] 
/// * [attributes] 
/// * [tags] 
@BuiltValue()
abstract class SKU implements Built<SKU, SKUBuilder> {
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

  @BuiltValueField(wireName: r'image')
  SkuImageSchema get image;

  @BuiltValueField(wireName: r'status')
  SKUStatusEnum get status;
  // enum statusEnum {  selling,  deleted,  newly-released,  };

  @BuiltValueField(wireName: r'attributes')
  BuiltList<AttributeInProductSchema> get attributes;

  @BuiltValueField(wireName: r'tags')
  BuiltList<String> get tags;

  SKU._();

  factory SKU([void updates(SKUBuilder b)]) = _$SKU;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SKUBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SKU> get serializer => _$SKUSerializer();
}

class _$SKUSerializer implements PrimitiveSerializer<SKU> {
  @override
  final Iterable<Type> types = const [SKU, _$SKU];

  @override
  final String wireName = r'SKU';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SKU object, {
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
    yield r'image';
    yield serializers.serialize(
      object.image,
      specifiedType: const FullType(SkuImageSchema),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(SKUStatusEnum),
    );
    yield r'attributes';
    yield serializers.serialize(
      object.attributes,
      specifiedType: const FullType(BuiltList, [FullType(AttributeInProductSchema)]),
    );
    yield r'tags';
    yield serializers.serialize(
      object.tags,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SKU object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SKUBuilder result,
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
        case r'image':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SkuImageSchema),
          ) as SkuImageSchema;
          result.image.replace(valueDes);
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SKUStatusEnum),
          ) as SKUStatusEnum;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SKU deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SKUBuilder();
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

class SKUStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'selling')
  static const SKUStatusEnum selling = _$sKUStatusEnum_selling;
  @BuiltValueEnumConst(wireName: r'deleted')
  static const SKUStatusEnum deleted = _$sKUStatusEnum_deleted;
  @BuiltValueEnumConst(wireName: r'newly-released')
  static const SKUStatusEnum newlyReleased = _$sKUStatusEnum_newlyReleased;

  static Serializer<SKUStatusEnum> get serializer => _$sKUStatusEnumSerializer;

  const SKUStatusEnum._(String name): super(name);

  static BuiltSet<SKUStatusEnum> get values => _$sKUStatusEnumValues;
  static SKUStatusEnum valueOf(String name) => _$sKUStatusEnumValueOf(name);
}

