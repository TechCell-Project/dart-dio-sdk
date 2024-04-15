//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'image_schema_dto.g.dart';

/// ImageSchemaDto
///
/// Properties:
/// * [publicId] 
/// * [isThumbnail] 
@BuiltValue()
abstract class ImageSchemaDto implements Built<ImageSchemaDto, ImageSchemaDtoBuilder> {
  @BuiltValueField(wireName: r'publicId')
  String get publicId;

  @BuiltValueField(wireName: r'isThumbnail')
  bool get isThumbnail;

  ImageSchemaDto._();

  factory ImageSchemaDto([void updates(ImageSchemaDtoBuilder b)]) = _$ImageSchemaDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ImageSchemaDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ImageSchemaDto> get serializer => _$ImageSchemaDtoSerializer();
}

class _$ImageSchemaDtoSerializer implements PrimitiveSerializer<ImageSchemaDto> {
  @override
  final Iterable<Type> types = const [ImageSchemaDto, _$ImageSchemaDto];

  @override
  final String wireName = r'ImageSchemaDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ImageSchemaDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'publicId';
    yield serializers.serialize(
      object.publicId,
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
    ImageSchemaDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ImageSchemaDtoBuilder result,
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
  ImageSchemaDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ImageSchemaDtoBuilder();
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

