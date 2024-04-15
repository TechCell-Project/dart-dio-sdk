//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'province_schema_dto.g.dart';

/// ProvinceSchemaDTO
///
/// Properties:
/// * [provinceId] - The id of province
@BuiltValue()
abstract class ProvinceSchemaDTO implements Built<ProvinceSchemaDTO, ProvinceSchemaDTOBuilder> {
  /// The id of province
  @BuiltValueField(wireName: r'provinceId')
  num get provinceId;

  ProvinceSchemaDTO._();

  factory ProvinceSchemaDTO([void updates(ProvinceSchemaDTOBuilder b)]) = _$ProvinceSchemaDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProvinceSchemaDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProvinceSchemaDTO> get serializer => _$ProvinceSchemaDTOSerializer();
}

class _$ProvinceSchemaDTOSerializer implements PrimitiveSerializer<ProvinceSchemaDTO> {
  @override
  final Iterable<Type> types = const [ProvinceSchemaDTO, _$ProvinceSchemaDTO];

  @override
  final String wireName = r'ProvinceSchemaDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProvinceSchemaDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'provinceId';
    yield serializers.serialize(
      object.provinceId,
      specifiedType: const FullType(num),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ProvinceSchemaDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProvinceSchemaDTOBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'provinceId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.provinceId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProvinceSchemaDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProvinceSchemaDTOBuilder();
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

