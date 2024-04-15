//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'image_schema.g.dart';

/// ImageSchema
///
/// Properties:
/// * [publicId] 
/// * [url] 
/// * [isThumbnail] 
@BuiltValue()
abstract class ImageSchema implements Built<ImageSchema, ImageSchemaBuilder> {
  @BuiltValueField(wireName: r'publicId')
  String get publicId;

  @BuiltValueField(wireName: r'url')
  String get url;

  @BuiltValueField(wireName: r'isThumbnail')
  bool get isThumbnail;

  ImageSchema._();

  factory ImageSchema([void updates(ImageSchemaBuilder b)]) = _$ImageSchema;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ImageSchemaBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ImageSchema> get serializer => _$ImageSchemaSerializer();
}

class _$ImageSchemaSerializer implements PrimitiveSerializer<ImageSchema> {
  @override
  final Iterable<Type> types = const [ImageSchema, _$ImageSchema];

  @override
  final String wireName = r'ImageSchema';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ImageSchema object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'publicId';
    yield serializers.serialize(
      object.publicId,
      specifiedType: const FullType(String),
    );
    yield r'url';
    yield serializers.serialize(
      object.url,
      specifiedType: const FullType(String),
    );
    yield r'isThumbnail';
    yield serializers.serialize(
      object.isThumbnail,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ImageSchema object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ImageSchemaBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'publicId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.publicId = valueDes;
          break;
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.url = valueDes;
          break;
        case r'isThumbnail':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isThumbnail = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ImageSchema deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ImageSchemaBuilder();
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

