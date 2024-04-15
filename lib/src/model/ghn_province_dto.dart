//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ghn_province_dto.g.dart';

/// GhnProvinceDTO
///
/// Properties:
/// * [provinceId] - Mã tỉnh thành
/// * [provinceName] - Tên tỉnh thành
/// * [countryId] - Mã quốc gia
/// * [nameExtension] - Tên tỉnh thành mở rộng
/// * [status] - Trạng thái
@BuiltValue()
abstract class GhnProvinceDTO implements Built<GhnProvinceDTO, GhnProvinceDTOBuilder> {
  /// Mã tỉnh thành
  @BuiltValueField(wireName: r'provinceId')
  num get provinceId;

  /// Tên tỉnh thành
  @BuiltValueField(wireName: r'provinceName')
  String get provinceName;

  /// Mã quốc gia
  @BuiltValueField(wireName: r'countryId')
  num get countryId;

  /// Tên tỉnh thành mở rộng
  @BuiltValueField(wireName: r'nameExtension')
  BuiltList<String> get nameExtension;

  /// Trạng thái
  @BuiltValueField(wireName: r'status')
  GhnProvinceDTOStatusEnum get status;
  // enum statusEnum {  1,  2,  };

  GhnProvinceDTO._();

  factory GhnProvinceDTO([void updates(GhnProvinceDTOBuilder b)]) = _$GhnProvinceDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GhnProvinceDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GhnProvinceDTO> get serializer => _$GhnProvinceDTOSerializer();
}

class _$GhnProvinceDTOSerializer implements PrimitiveSerializer<GhnProvinceDTO> {
  @override
  final Iterable<Type> types = const [GhnProvinceDTO, _$GhnProvinceDTO];

  @override
  final String wireName = r'GhnProvinceDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GhnProvinceDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'provinceId';
    yield serializers.serialize(
      object.provinceId,
      specifiedType: const FullType(num),
    );
    yield r'provinceName';
    yield serializers.serialize(
      object.provinceName,
      specifiedType: const FullType(String),
    );
    yield r'countryId';
    yield serializers.serialize(
      object.countryId,
      specifiedType: const FullType(num),
    );
    yield r'nameExtension';
    yield serializers.serialize(
      object.nameExtension,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(GhnProvinceDTOStatusEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    GhnProvinceDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GhnProvinceDTOBuilder result,
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
        case r'provinceName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.provinceName = valueDes;
          break;
        case r'countryId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.countryId = valueDes;
          break;
        case r'nameExtension':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.nameExtension.replace(valueDes);
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(GhnProvinceDTOStatusEnum),
          ) as GhnProvinceDTOStatusEnum;
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
  GhnProvinceDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GhnProvinceDTOBuilder();
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

class GhnProvinceDTOStatusEnum extends EnumClass {

  /// Trạng thái
  @BuiltValueEnumConst(wireName: r'1')
  static const GhnProvinceDTOStatusEnum n1 = _$ghnProvinceDTOStatusEnum_n1;
  /// Trạng thái
  @BuiltValueEnumConst(wireName: r'2')
  static const GhnProvinceDTOStatusEnum n2 = _$ghnProvinceDTOStatusEnum_n2;

  static Serializer<GhnProvinceDTOStatusEnum> get serializer => _$ghnProvinceDTOStatusEnumSerializer;

  const GhnProvinceDTOStatusEnum._(String name): super(name);

  static BuiltSet<GhnProvinceDTOStatusEnum> get values => _$ghnProvinceDTOStatusEnumValues;
  static GhnProvinceDTOStatusEnum valueOf(String name) => _$ghnProvinceDTOStatusEnumValueOf(name);
}

