//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_attribute_dto.g.dart';

/// CreateAttributeDto
///
/// Properties:
/// * [label] - Attribute label. Label must only contain lowercase letters and optional underscores
/// * [name] - Attribute name, can be in any language
/// * [unit] - Unit abbreviation for this attribute
/// * [description] - Attribute description
@BuiltValue()
abstract class CreateAttributeDto implements Built<CreateAttributeDto, CreateAttributeDtoBuilder> {
  /// Attribute label. Label must only contain lowercase letters and optional underscores
  @BuiltValueField(wireName: r'label')
  String get label;

  /// Attribute name, can be in any language
  @BuiltValueField(wireName: r'name')
  String get name;

  /// Unit abbreviation for this attribute
  @BuiltValueField(wireName: r'unit')
  String? get unit;

  /// Attribute description
  @BuiltValueField(wireName: r'description')
  String? get description;

  CreateAttributeDto._();

  factory CreateAttributeDto([void updates(CreateAttributeDtoBuilder b)]) = _$CreateAttributeDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateAttributeDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateAttributeDto> get serializer => _$CreateAttributeDtoSerializer();
}

class _$CreateAttributeDtoSerializer implements PrimitiveSerializer<CreateAttributeDto> {
  @override
  final Iterable<Type> types = const [CreateAttributeDto, _$CreateAttributeDto];

  @override
  final String wireName = r'CreateAttributeDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateAttributeDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'label';
    yield serializers.serialize(
      object.label,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.unit != null) {
      yield r'unit';
      yield serializers.serialize(
        object.unit,
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
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateAttributeDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateAttributeDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'label':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.label = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'unit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.unit = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateAttributeDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateAttributeDtoBuilder();
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

