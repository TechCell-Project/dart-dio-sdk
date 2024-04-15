//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'attribute_in_product_schema_dto.g.dart';

/// AttributeInProductSchemaDto
///
/// Properties:
/// * [name] 
/// * [k] 
/// * [v] 
/// * [u] 
@BuiltValue()
abstract class AttributeInProductSchemaDto implements Built<AttributeInProductSchemaDto, AttributeInProductSchemaDtoBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'k')
  String get k;

  @BuiltValueField(wireName: r'v')
  String get v;

  @BuiltValueField(wireName: r'u')
  String? get u;

  AttributeInProductSchemaDto._();

  factory AttributeInProductSchemaDto([void updates(AttributeInProductSchemaDtoBuilder b)]) = _$AttributeInProductSchemaDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AttributeInProductSchemaDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AttributeInProductSchemaDto> get serializer => _$AttributeInProductSchemaDtoSerializer();
}

class _$AttributeInProductSchemaDtoSerializer implements PrimitiveSerializer<AttributeInProductSchemaDto> {
  @override
  final Iterable<Type> types = const [AttributeInProductSchemaDto, _$AttributeInProductSchemaDto];

  @override
  final String wireName = r'AttributeInProductSchemaDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AttributeInProductSchemaDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'k';
    yield serializers.serialize(
      object.k,
      specifiedType: const FullType(String),
    );
    yield r'v';
    yield serializers.serialize(
      object.v,
      specifiedType: const FullType(String),
    );
    if (object.u != null) {
      yield r'u';
      yield serializers.serialize(
        object.u,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AttributeInProductSchemaDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AttributeInProductSchemaDtoBuilder result,
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
        case r'k':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.k = valueDes;
          break;
        case r'v':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.v = valueDes;
          break;
        case r'u':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.u = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AttributeInProductSchemaDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AttributeInProductSchemaDtoBuilder();
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

