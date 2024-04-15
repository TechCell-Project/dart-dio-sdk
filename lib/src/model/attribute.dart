//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'attribute.g.dart';

/// Attribute
///
/// Properties:
/// * [label] - Attribute label, unique
/// * [name] - Attribute name, can be translated
/// * [unit] - Attribute unit
/// * [description] 
/// * [status] - Attribute status
@BuiltValue()
abstract class Attribute implements Built<Attribute, AttributeBuilder> {
  /// Attribute label, unique
  @BuiltValueField(wireName: r'label')
  String get label;

  /// Attribute name, can be translated
  @BuiltValueField(wireName: r'name')
  String get name;

  /// Attribute unit
  @BuiltValueField(wireName: r'unit')
  String? get unit;

  @BuiltValueField(wireName: r'description')
  String get description;

  /// Attribute status
  @BuiltValueField(wireName: r'status')
  AttributeStatusEnum get status;
  // enum statusEnum {  available,  deleted,  };

  Attribute._();

  factory Attribute([void updates(AttributeBuilder b)]) = _$Attribute;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AttributeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Attribute> get serializer => _$AttributeSerializer();
}

class _$AttributeSerializer implements PrimitiveSerializer<Attribute> {
  @override
  final Iterable<Type> types = const [Attribute, _$Attribute];

  @override
  final String wireName = r'Attribute';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Attribute object, {
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
    yield r'description';
    yield serializers.serialize(
      object.description,
      specifiedType: const FullType(String),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(AttributeStatusEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    Attribute object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AttributeBuilder result,
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
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AttributeStatusEnum),
          ) as AttributeStatusEnum;
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
  Attribute deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AttributeBuilder();
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

class AttributeStatusEnum extends EnumClass {

  /// Attribute status
  @BuiltValueEnumConst(wireName: r'available')
  static const AttributeStatusEnum available = _$attributeStatusEnum_available;
  /// Attribute status
  @BuiltValueEnumConst(wireName: r'deleted')
  static const AttributeStatusEnum deleted = _$attributeStatusEnum_deleted;

  static Serializer<AttributeStatusEnum> get serializer => _$attributeStatusEnumSerializer;

  const AttributeStatusEnum._(String name): super(name);

  static BuiltSet<AttributeStatusEnum> get values => _$attributeStatusEnumValues;
  static AttributeStatusEnum valueOf(String name) => _$attributeStatusEnumValueOf(name);
}

