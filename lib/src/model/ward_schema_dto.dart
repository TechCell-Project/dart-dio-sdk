//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ward_schema_dto.g.dart';

/// WardSchemaDTO
///
/// Properties:
/// * [wardCode] - The code of ward
@BuiltValue()
abstract class WardSchemaDTO implements Built<WardSchemaDTO, WardSchemaDTOBuilder> {
  /// The code of ward
  @BuiltValueField(wireName: r'wardCode')
  String get wardCode;

  WardSchemaDTO._();

  factory WardSchemaDTO([void updates(WardSchemaDTOBuilder b)]) = _$WardSchemaDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WardSchemaDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WardSchemaDTO> get serializer => _$WardSchemaDTOSerializer();
}

class _$WardSchemaDTOSerializer implements PrimitiveSerializer<WardSchemaDTO> {
  @override
  final Iterable<Type> types = const [WardSchemaDTO, _$WardSchemaDTO];

  @override
  final String wireName = r'WardSchemaDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WardSchemaDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'wardCode';
    yield serializers.serialize(
      object.wardCode,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    WardSchemaDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required WardSchemaDTOBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'wardCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.wardCode = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WardSchemaDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WardSchemaDTOBuilder();
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

