//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'district_schema_dto.g.dart';

/// DistrictSchemaDTO
///
/// Properties:
/// * [districtId] - The id of district
@BuiltValue()
abstract class DistrictSchemaDTO implements Built<DistrictSchemaDTO, DistrictSchemaDTOBuilder> {
  /// The id of district
  @BuiltValueField(wireName: r'districtId')
  num get districtId;

  DistrictSchemaDTO._();

  factory DistrictSchemaDTO([void updates(DistrictSchemaDTOBuilder b)]) = _$DistrictSchemaDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DistrictSchemaDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DistrictSchemaDTO> get serializer => _$DistrictSchemaDTOSerializer();
}

class _$DistrictSchemaDTOSerializer implements PrimitiveSerializer<DistrictSchemaDTO> {
  @override
  final Iterable<Type> types = const [DistrictSchemaDTO, _$DistrictSchemaDTO];

  @override
  final String wireName = r'DistrictSchemaDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DistrictSchemaDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'districtId';
    yield serializers.serialize(
      object.districtId,
      specifiedType: const FullType(num),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DistrictSchemaDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DistrictSchemaDTOBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'districtId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.districtId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DistrictSchemaDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DistrictSchemaDTOBuilder();
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

