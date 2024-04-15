//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:dart_dio_sdk/src/model/attribute_in_product_schema_dto.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_spu_dto.g.dart';

/// UpdateSpuDto
///
/// Properties:
/// * [name] - Spu name
/// * [description] - Spu description
/// * [commonAttributes] - Common attributes
@BuiltValue()
abstract class UpdateSpuDto implements Built<UpdateSpuDto, UpdateSpuDtoBuilder> {
  /// Spu name
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// Spu description
  @BuiltValueField(wireName: r'description')
  String? get description;

  /// Common attributes
  @BuiltValueField(wireName: r'commonAttributes')
  BuiltList<AttributeInProductSchemaDto>? get commonAttributes;

  UpdateSpuDto._();

  factory UpdateSpuDto([void updates(UpdateSpuDtoBuilder b)]) = _$UpdateSpuDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateSpuDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateSpuDto> get serializer => _$UpdateSpuDtoSerializer();
}

class _$UpdateSpuDtoSerializer implements PrimitiveSerializer<UpdateSpuDto> {
  @override
  final Iterable<Type> types = const [UpdateSpuDto, _$UpdateSpuDto];

  @override
  final String wireName = r'UpdateSpuDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateSpuDto object, {
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
    if (object.commonAttributes != null) {
      yield r'commonAttributes';
      yield serializers.serialize(
        object.commonAttributes,
        specifiedType: const FullType(BuiltList, [FullType(AttributeInProductSchemaDto)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateSpuDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateSpuDtoBuilder result,
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
        case r'commonAttributes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(AttributeInProductSchemaDto)]),
          ) as BuiltList<AttributeInProductSchemaDto>;
          result.commonAttributes.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateSpuDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateSpuDtoBuilder();
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

