//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ghn_ward_dto.g.dart';

/// GhnWardDTO
///
/// Properties:
/// * [districtId] - Mã quận huyện
/// * [wardCode] - Mã phường xã
/// * [wardName] - Tên phường xã
/// * [nameExtension] - Tên phường xã mở rộng
/// * [supportType] - Loại hỗ trợ
/// * [canUpdateCod] - Có thể cập nhật COD
/// * [status] - Trạng thái
@BuiltValue()
abstract class GhnWardDTO implements Built<GhnWardDTO, GhnWardDTOBuilder> {
  /// Mã quận huyện
  @BuiltValueField(wireName: r'districtId')
  num get districtId;

  /// Mã phường xã
  @BuiltValueField(wireName: r'wardCode')
  String get wardCode;

  /// Tên phường xã
  @BuiltValueField(wireName: r'wardName')
  String get wardName;

  /// Tên phường xã mở rộng
  @BuiltValueField(wireName: r'nameExtension')
  BuiltList<String> get nameExtension;

  /// Loại hỗ trợ
  @BuiltValueField(wireName: r'supportType')
  GhnWardDTOSupportTypeEnum get supportType;
  // enum supportTypeEnum {  0,  1,  2,  3,  };

  /// Có thể cập nhật COD
  @BuiltValueField(wireName: r'canUpdateCod')
  bool get canUpdateCod;

  /// Trạng thái
  @BuiltValueField(wireName: r'status')
  GhnWardDTOStatusEnum get status;
  // enum statusEnum {  1,  2,  };

  GhnWardDTO._();

  factory GhnWardDTO([void updates(GhnWardDTOBuilder b)]) = _$GhnWardDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GhnWardDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GhnWardDTO> get serializer => _$GhnWardDTOSerializer();
}

class _$GhnWardDTOSerializer implements PrimitiveSerializer<GhnWardDTO> {
  @override
  final Iterable<Type> types = const [GhnWardDTO, _$GhnWardDTO];

  @override
  final String wireName = r'GhnWardDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GhnWardDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'districtId';
    yield serializers.serialize(
      object.districtId,
      specifiedType: const FullType(num),
    );
    yield r'wardCode';
    yield serializers.serialize(
      object.wardCode,
      specifiedType: const FullType(String),
    );
    yield r'wardName';
    yield serializers.serialize(
      object.wardName,
      specifiedType: const FullType(String),
    );
    yield r'nameExtension';
    yield serializers.serialize(
      object.nameExtension,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'supportType';
    yield serializers.serialize(
      object.supportType,
      specifiedType: const FullType(GhnWardDTOSupportTypeEnum),
    );
    yield r'canUpdateCod';
    yield serializers.serialize(
      object.canUpdateCod,
      specifiedType: const FullType(bool),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(GhnWardDTOStatusEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    GhnWardDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GhnWardDTOBuilder result,
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
        case r'wardCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.wardCode = valueDes;
          break;
        case r'wardName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.wardName = valueDes;
          break;
        case r'nameExtension':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.nameExtension.replace(valueDes);
          break;
        case r'supportType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(GhnWardDTOSupportTypeEnum),
          ) as GhnWardDTOSupportTypeEnum;
          result.supportType = valueDes;
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
            specifiedType: const FullType(GhnWardDTOStatusEnum),
          ) as GhnWardDTOStatusEnum;
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
  GhnWardDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GhnWardDTOBuilder();
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

class GhnWardDTOSupportTypeEnum extends EnumClass {

  /// Loại hỗ trợ
  @BuiltValueEnumConst(wireName: r'0')
  static const GhnWardDTOSupportTypeEnum n0 = _$ghnWardDTOSupportTypeEnum_n0;
  /// Loại hỗ trợ
  @BuiltValueEnumConst(wireName: r'1')
  static const GhnWardDTOSupportTypeEnum n1 = _$ghnWardDTOSupportTypeEnum_n1;
  /// Loại hỗ trợ
  @BuiltValueEnumConst(wireName: r'2')
  static const GhnWardDTOSupportTypeEnum n2 = _$ghnWardDTOSupportTypeEnum_n2;
  /// Loại hỗ trợ
  @BuiltValueEnumConst(wireName: r'3')
  static const GhnWardDTOSupportTypeEnum n3 = _$ghnWardDTOSupportTypeEnum_n3;

  static Serializer<GhnWardDTOSupportTypeEnum> get serializer => _$ghnWardDTOSupportTypeEnumSerializer;

  const GhnWardDTOSupportTypeEnum._(String name): super(name);

  static BuiltSet<GhnWardDTOSupportTypeEnum> get values => _$ghnWardDTOSupportTypeEnumValues;
  static GhnWardDTOSupportTypeEnum valueOf(String name) => _$ghnWardDTOSupportTypeEnumValueOf(name);
}

class GhnWardDTOStatusEnum extends EnumClass {

  /// Trạng thái
  @BuiltValueEnumConst(wireName: r'1')
  static const GhnWardDTOStatusEnum n1 = _$ghnWardDTOStatusEnum_n1;
  /// Trạng thái
  @BuiltValueEnumConst(wireName: r'2')
  static const GhnWardDTOStatusEnum n2 = _$ghnWardDTOStatusEnum_n2;

  static Serializer<GhnWardDTOStatusEnum> get serializer => _$ghnWardDTOStatusEnumSerializer;

  const GhnWardDTOStatusEnum._(String name): super(name);

  static BuiltSet<GhnWardDTOStatusEnum> get values => _$ghnWardDTOStatusEnumValues;
  static GhnWardDTOStatusEnum valueOf(String name) => _$ghnWardDTOStatusEnumValueOf(name);
}

