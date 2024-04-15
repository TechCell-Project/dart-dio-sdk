//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:dart_dio_sdk/src/model/ward_schema_dto.dart';
import 'package:built_collection/built_collection.dart';
import 'package:dart_dio_sdk/src/model/province_schema_dto.dart';
import 'package:dart_dio_sdk/src/model/district_schema_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_address_schema_dto.g.dart';

/// UserAddressSchemaDTO
///
/// Properties:
/// * [type] - The name type of address
/// * [customerName] - The name of customer
/// * [phoneNumbers] - The phone number of customer
/// * [provinceLevel] - The province level address
/// * [districtLevel] - The district level address
/// * [wardLevel] - The ward level address
/// * [detail] - The detailed address
/// * [isDefault] - The boolean value to check if this address is default or not
@BuiltValue()
abstract class UserAddressSchemaDTO implements Built<UserAddressSchemaDTO, UserAddressSchemaDTOBuilder> {
  /// The name type of address
  @BuiltValueField(wireName: r'type')
  UserAddressSchemaDTOTypeEnum get type;
  // enum typeEnum {  home,  office,  other,  };

  /// The name of customer
  @BuiltValueField(wireName: r'customerName')
  String get customerName;

  /// The phone number of customer
  @BuiltValueField(wireName: r'phoneNumbers')
  String get phoneNumbers;

  /// The province level address
  @BuiltValueField(wireName: r'provinceLevel')
  ProvinceSchemaDTO get provinceLevel;

  /// The district level address
  @BuiltValueField(wireName: r'districtLevel')
  DistrictSchemaDTO get districtLevel;

  /// The ward level address
  @BuiltValueField(wireName: r'wardLevel')
  WardSchemaDTO get wardLevel;

  /// The detailed address
  @BuiltValueField(wireName: r'detail')
  String get detail;

  /// The boolean value to check if this address is default or not
  @BuiltValueField(wireName: r'isDefault')
  bool? get isDefault;

  UserAddressSchemaDTO._();

  factory UserAddressSchemaDTO([void updates(UserAddressSchemaDTOBuilder b)]) = _$UserAddressSchemaDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserAddressSchemaDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserAddressSchemaDTO> get serializer => _$UserAddressSchemaDTOSerializer();
}

class _$UserAddressSchemaDTOSerializer implements PrimitiveSerializer<UserAddressSchemaDTO> {
  @override
  final Iterable<Type> types = const [UserAddressSchemaDTO, _$UserAddressSchemaDTO];

  @override
  final String wireName = r'UserAddressSchemaDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserAddressSchemaDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(UserAddressSchemaDTOTypeEnum),
    );
    yield r'customerName';
    yield serializers.serialize(
      object.customerName,
      specifiedType: const FullType(String),
    );
    yield r'phoneNumbers';
    yield serializers.serialize(
      object.phoneNumbers,
      specifiedType: const FullType(String),
    );
    yield r'provinceLevel';
    yield serializers.serialize(
      object.provinceLevel,
      specifiedType: const FullType(ProvinceSchemaDTO),
    );
    yield r'districtLevel';
    yield serializers.serialize(
      object.districtLevel,
      specifiedType: const FullType(DistrictSchemaDTO),
    );
    yield r'wardLevel';
    yield serializers.serialize(
      object.wardLevel,
      specifiedType: const FullType(WardSchemaDTO),
    );
    yield r'detail';
    yield serializers.serialize(
      object.detail,
      specifiedType: const FullType(String),
    );
    if (object.isDefault != null) {
      yield r'isDefault';
      yield serializers.serialize(
        object.isDefault,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UserAddressSchemaDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UserAddressSchemaDTOBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UserAddressSchemaDTOTypeEnum),
          ) as UserAddressSchemaDTOTypeEnum;
          result.type = valueDes;
          break;
        case r'customerName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.customerName = valueDes;
          break;
        case r'phoneNumbers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.phoneNumbers = valueDes;
          break;
        case r'provinceLevel':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ProvinceSchemaDTO),
          ) as ProvinceSchemaDTO;
          result.provinceLevel.replace(valueDes);
          break;
        case r'districtLevel':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DistrictSchemaDTO),
          ) as DistrictSchemaDTO;
          result.districtLevel.replace(valueDes);
          break;
        case r'wardLevel':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(WardSchemaDTO),
          ) as WardSchemaDTO;
          result.wardLevel.replace(valueDes);
          break;
        case r'detail':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.detail = valueDes;
          break;
        case r'isDefault':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isDefault = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserAddressSchemaDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserAddressSchemaDTOBuilder();
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

class UserAddressSchemaDTOTypeEnum extends EnumClass {

  /// The name type of address
  @BuiltValueEnumConst(wireName: r'home')
  static const UserAddressSchemaDTOTypeEnum home = _$userAddressSchemaDTOTypeEnum_home;
  /// The name type of address
  @BuiltValueEnumConst(wireName: r'office')
  static const UserAddressSchemaDTOTypeEnum office = _$userAddressSchemaDTOTypeEnum_office;
  /// The name type of address
  @BuiltValueEnumConst(wireName: r'other')
  static const UserAddressSchemaDTOTypeEnum other = _$userAddressSchemaDTOTypeEnum_other;

  static Serializer<UserAddressSchemaDTOTypeEnum> get serializer => _$userAddressSchemaDTOTypeEnumSerializer;

  const UserAddressSchemaDTOTypeEnum._(String name): super(name);

  static BuiltSet<UserAddressSchemaDTOTypeEnum> get values => _$userAddressSchemaDTOTypeEnumValues;
  static UserAddressSchemaDTOTypeEnum valueOf(String name) => _$userAddressSchemaDTOTypeEnumValueOf(name);
}

