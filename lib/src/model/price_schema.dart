//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'price_schema.g.dart';

/// PriceSchema
///
/// Properties:
/// * [base] 
/// * [special] 
@BuiltValue()
abstract class PriceSchema implements Built<PriceSchema, PriceSchemaBuilder> {
  @BuiltValueField(wireName: r'base')
  num get base;

  @BuiltValueField(wireName: r'special')
  num get special;

  PriceSchema._();

  factory PriceSchema([void updates(PriceSchemaBuilder b)]) = _$PriceSchema;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PriceSchemaBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PriceSchema> get serializer => _$PriceSchemaSerializer();
}

class _$PriceSchemaSerializer implements PrimitiveSerializer<PriceSchema> {
  @override
  final Iterable<Type> types = const [PriceSchema, _$PriceSchema];

  @override
  final String wireName = r'PriceSchema';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PriceSchema object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'base';
    yield serializers.serialize(
      object.base,
      specifiedType: const FullType(num),
    );
    yield r'special';
    yield serializers.serialize(
      object.special,
      specifiedType: const FullType(num),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PriceSchema object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PriceSchemaBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'base':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.base = valueDes;
          break;
        case r'special':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.special = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PriceSchema deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PriceSchemaBuilder();
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

