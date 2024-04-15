//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:dart_dio_sdk/src/model/image_schema.dart';
import 'package:dart_dio_sdk/src/model/attribute_in_product_schema.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'spu_model_schema.g.dart';

/// SPUModelSchema
///
/// Properties:
/// * [slug] 
/// * [name] 
/// * [description] 
/// * [attributes] 
/// * [images] 
@BuiltValue()
abstract class SPUModelSchema implements Built<SPUModelSchema, SPUModelSchemaBuilder> {
  @BuiltValueField(wireName: r'slug')
  String get slug;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'attributes')
  BuiltList<AttributeInProductSchema> get attributes;

  @BuiltValueField(wireName: r'images')
  BuiltList<ImageSchema> get images;

  SPUModelSchema._();

  factory SPUModelSchema([void updates(SPUModelSchemaBuilder b)]) = _$SPUModelSchema;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SPUModelSchemaBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SPUModelSchema> get serializer => _$SPUModelSchemaSerializer();
}

class _$SPUModelSchemaSerializer implements PrimitiveSerializer<SPUModelSchema> {
  @override
  final Iterable<Type> types = const [SPUModelSchema, _$SPUModelSchema];

  @override
  final String wireName = r'SPUModelSchema';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SPUModelSchema object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'slug';
    yield serializers.serialize(
      object.slug,
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
    yield r'attributes';
    yield serializers.serialize(
      object.attributes,
      specifiedType: const FullType(BuiltList, [FullType(AttributeInProductSchema)]),
    );
    yield r'images';
    yield serializers.serialize(
      object.images,
      specifiedType: const FullType(BuiltList, [FullType(ImageSchema)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SPUModelSchema object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SPUModelSchemaBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'slug':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.slug = valueDes;
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
        case r'attributes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(AttributeInProductSchema)]),
          ) as BuiltList<AttributeInProductSchema>;
          result.attributes.replace(valueDes);
          break;
        case r'images':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ImageSchema)]),
          ) as BuiltList<ImageSchema>;
          result.images.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SPUModelSchema deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SPUModelSchemaBuilder();
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

