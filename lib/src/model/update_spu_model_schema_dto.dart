//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:dart_dio_sdk/src/model/image_schema_dto.dart';
import 'package:dart_dio_sdk/src/model/attribute_in_product_schema_dto.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_spu_model_schema_dto.g.dart';

/// UpdateSPUModelSchemaDto
///
/// Properties:
/// * [name] 
/// * [description] 
/// * [images] 
/// * [attributes] - Model attributes
@BuiltValue()
abstract class UpdateSPUModelSchemaDto implements Built<UpdateSPUModelSchemaDto, UpdateSPUModelSchemaDtoBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'images')
  BuiltList<ImageSchemaDto>? get images;

  /// Model attributes
  @BuiltValueField(wireName: r'attributes')
  BuiltList<AttributeInProductSchemaDto>? get attributes;

  UpdateSPUModelSchemaDto._();

  factory UpdateSPUModelSchemaDto([void updates(UpdateSPUModelSchemaDtoBuilder b)]) = _$UpdateSPUModelSchemaDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateSPUModelSchemaDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateSPUModelSchemaDto> get serializer => _$UpdateSPUModelSchemaDtoSerializer();
}

class _$UpdateSPUModelSchemaDtoSerializer implements PrimitiveSerializer<UpdateSPUModelSchemaDto> {
  @override
  final Iterable<Type> types = const [UpdateSPUModelSchemaDto, _$UpdateSPUModelSchemaDto];

  @override
  final String wireName = r'UpdateSPUModelSchemaDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateSPUModelSchemaDto object, {
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
    if (object.images != null) {
      yield r'images';
      yield serializers.serialize(
        object.images,
        specifiedType: const FullType(BuiltList, [FullType(ImageSchemaDto)]),
      );
    }
    if (object.attributes != null) {
      yield r'attributes';
      yield serializers.serialize(
        object.attributes,
        specifiedType: const FullType(BuiltList, [FullType(AttributeInProductSchemaDto)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateSPUModelSchemaDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateSPUModelSchemaDtoBuilder result,
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
        case r'images':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ImageSchemaDto)]),
          ) as BuiltList<ImageSchemaDto>;
          result.images.replace(valueDes);
          break;
        case r'attributes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(AttributeInProductSchemaDto)]),
          ) as BuiltList<AttributeInProductSchemaDto>;
          result.attributes.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateSPUModelSchemaDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateSPUModelSchemaDtoBuilder();
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

