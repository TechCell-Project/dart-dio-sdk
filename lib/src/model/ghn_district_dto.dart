//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ghn_district_dto.g.dart';

/// GhnDistrictDTO
///
/// Properties:
/// * [provinceId] - Mã tỉnh thành
/// * [districtId] - Mã quận huyện
/// * [districtName] - Tên quận huyện
/// * [supportType] - Loại hỗ trợ
/// * [nameExtension] - Tên quận huyện mở rộng
/// * [canUpdateCod] - Có thể cập nhật COD
/// * [status] - Trạng thái
@BuiltValue()
abstract class GhnDistrictDTO implements Built<GhnDistrictDTO, GhnDistrictDTOBuilder> {
  /// Mã tỉnh thành
  @BuiltValueField(wireName: r'provinceId')
  num get provinceId;

  /// Mã quận huyện
  @BuiltValueField(wireName: r'districtId')
  num get districtId;

  /// Tên quận huyện
  @BuiltValueField(wireName: r'districtName')
  String get districtName;

  /// Loại hỗ trợ
  @BuiltValueField(wireName: r'supportType')
  GhnDistrictDTOSupportTypeEnum get supportType;
  // enum supportTypeEnum {  0,  1,  2,  3,  };

  /// Tên quận huyện mở rộng
  @BuiltValueField(wireName: r'nameExtension')
  BuiltList<String> get nameExtension;

  /// Có thể cập nhật COD
  @BuiltValueField(wireName: r'canUpdateCod')
  bool get canUpdateCod;

  /// Trạng thái
  @BuiltValueField(wireName: r'status')
  GhnDistrictDTOStatusEnum get status;
  // enum statusEnum {  1,  2,  };

  GhnDistrictDTO._();

  factory GhnDistrictDTO([void updates(GhnDistrictDTOBuilder b)]) = _$GhnDistrictDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GhnDistrictDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GhnDistrictDTO> get serializer => _$GhnDistrictDTOSerializer();
}

class _$GhnDistrictDTOSerializer implements PrimitiveSerializer<GhnDistrictDTO> {
  @override
  final Iterable<Type> types = const [GhnDistrictDTO, _$GhnDistrictDTO];

  @override
  final String wireName = r'GhnDistrictDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GhnDistrictDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'provinceId';
    yield serializers.serialize(
      object.provinceId,
      specifiedType: const FullType(num),
    );
    yield r'districtId';
    yield serializers.serialize(
      object.districtId,
      specifiedType: const FullType(num),
    );
    yield r'districtName';
    yield serializers.serialize(
      object.districtName,
      specifiedType: const FullType(String),
    );
    yield r'supportType';
    yield serializers.serialize(
      object.supportType,
      specifiedType: const FullType(GhnDistrictDTOSupportTypeEnum),
    );
    yield r'nameExtension';
    yield serializers.serialize(
      object.nameExtension,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'canUpdateCod';
    yield serializers.serialize(
      object.canUpdateCod,
      specifiedType: const FullType(bool),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(GhnDistrictDTOStatusEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    GhnDistrictDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GhnDistrictDTOBuilder result,
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
        case r'districtId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.districtId = valueDes;
          break;
        case r'districtName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.districtName = valueDes;
          break;
        case r'supportType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(GhnDistrictDTOSupportTypeEnum),
          ) as GhnDistrictDTOSupportTypeEnum;
          result.supportType = valueDes;
          break;
        case r'nameExtension':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.nameExtension.replace(valueDes);
          break;
        case r'canUpdateCod':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.canUpdateCod = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(GhnDistrictDTOStatusEnum),
          ) as GhnDistrictDTOStatusEnum;
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
  GhnDistrictDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GhnDistrictDTOBuilder();
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

class GhnDistrictDTOSupportTypeEnum extends EnumClass {

  /// Loại hỗ trợ
  @BuiltValueEnumConst(wireName: r'0')
  static const GhnDistrictDTOSupportTypeEnum n0 = _$ghnDistrictDTOSupportTypeEnum_n0;
  /// Loại hỗ trợ
  @BuiltValueEnumConst(wireName: r'1')
  static const GhnDistrictDTOSupportTypeEnum n1 = _$ghnDistrictDTOSupportTypeEnum_n1;
  /// Loại hỗ trợ
  @BuiltValueEnumConst(wireName: r'2')
  static const GhnDistrictDTOSupportTypeEnum n2 = _$ghnDistrictDTOSupportTypeEnum_n2;
  /// Loại hỗ trợ
  @BuiltValueEnumConst(wireName: r'3')
  static const GhnDistrictDTOSupportTypeEnum n3 = _$ghnDistrictDTOSupportTypeEnum_n3;

  static Serializer<GhnDistrictDTOSupportTypeEnum> get serializer => _$ghnDistrictDTOSupportTypeEnumSerializer;

  const GhnDistrictDTOSupportTypeEnum._(String name): super(name);

  static BuiltSet<GhnDistrictDTOSupportTypeEnum> get values => _$ghnDistrictDTOSupportTypeEnumValues;
  static GhnDistrictDTOSupportTypeEnum valueOf(String name) => _$ghnDistrictDTOSupportTypeEnumValueOf(name);
}

class GhnDistrictDTOStatusEnum extends EnumClass {

  /// Trạng thái
  @BuiltValueEnumConst(wireName: r'1')
  static const GhnDistrictDTOStatusEnum n1 = _$ghnDistrictDTOStatusEnum_n1;
  /// Trạng thái
  @BuiltValueEnumConst(wireName: r'2')
  static const GhnDistrictDTOStatusEnum n2 = _$ghnDistrictDTOStatusEnum_n2;

  static Serializer<GhnDistrictDTOStatusEnum> get serializer => _$ghnDistrictDTOStatusEnumSerializer;

  const GhnDistrictDTOStatusEnum._(String name): super(name);

  static BuiltSet<GhnDistrictDTOStatusEnum> get values => _$ghnDistrictDTOStatusEnumValues;
  static GhnDistrictDTOStatusEnum valueOf(String name) => _$ghnDistrictDTOStatusEnumValueOf(name);
}

