//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:dart_dio_sdk/src/model/ward_level.dart';
import 'package:built_collection/built_collection.dart';
import 'package:dart_dio_sdk/src/model/province_level.dart';
import 'package:dart_dio_sdk/src/model/district_level.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_address_schema.g.dart';

/// UserAddressSchema
///
/// Properties:
/// * [provinceLevel] 
/// * [districtLevel] 
/// * [wardLevel] 
/// * [detail] 
/// * [isDefault] 
/// * [customerName] 
/// * [phoneNumbers] - The phone number of customer
/// * [type] 
@BuiltValue()
abstract class UserAddressSchema implements Built<UserAddressSchema, UserAddressSchemaBuilder> {
  @BuiltValueField(wireName: r'provinceLevel')
  ProvinceLevel get provinceLevel;

  @BuiltValueField(wireName: r'districtLevel')
  DistrictLevel get districtLevel;

  @BuiltValueField(wireName: r'wardLevel')
  WardLevel get wardLevel;

  @BuiltValueField(wireName: r'detail')
  String get detail;

  @BuiltValueField(wireName: r'isDefault')
  bool get isDefault;

  @BuiltValueField(wireName: r'customerName')
  String get customerName;

  /// The phone number of customer
  @BuiltValueField(wireName: r'phoneNumbers')
  String get phoneNumbers;

  @BuiltValueField(wireName: r'type')
  UserAddressSchemaTypeEnum get type;
  // enum typeEnum {  home,  office,  other,  };

  UserAddressSchema._();

  factory UserAddressSchema([void updates(UserAddressSchemaBuilder b)]) = _$UserAddressSchema;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserAddressSchemaBuilder b) => b
      ..type = const UserAddressSchemaTypeEnum._('other');

  @BuiltValueSerializer(custom: true)
  static Serializer<UserAddressSchema> get serializer => _$UserAddressSchemaSerializer();
}

class _$UserAddressSchemaSerializer implements PrimitiveSerializer<UserAddressSchema> {
  @override
  final Iterable<Type> types = const [UserAddressSchema, _$UserAddressSchema];

  @override
  final String wireName = r'UserAddressSchema';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserAddressSchema object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'provinceLevel';
    yield serializers.serialize(
      object.provinceLevel,
      specifiedType: const FullType(ProvinceLevel),
    );
    yield r'districtLevel';
    yield serializers.serialize(
      object.districtLevel,
      specifiedType: const FullType(DistrictLevel),
    );
    yield r'wardLevel';
    yield serializers.serialize(
      object.wardLevel,
      specifiedType: const FullType(WardLevel),
    );
    yield r'detail';
    yield serializers.serialize(
      object.detail,
      specifiedType: const FullType(String),
    );
    yield r'isDefault';
    yield serializers.serialize(
      object.isDefault,
      specifiedType: const FullType(bool),
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
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(UserAddressSchemaTypeEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    UserAddressSchema object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UserAddressSchemaBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'provinceLevel':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ProvinceLevel),
          ) as ProvinceLevel;
          result.provinceLevel.replace(valueDes);
          break;
        case r'districtLevel':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DistrictLevel),
          ) as DistrictLevel;
          result.districtLevel.replace(valueDes);
          break;
        case r'wardLevel':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(WardLevel),
          ) as WardLevel;
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
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UserAddressSchemaTypeEnum),
          ) as UserAddressSchemaTypeEnum;
          result.type = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserAddressSchema deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserAddressSchemaBuilder();
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

class UserAddressSchemaTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'home')
  static const UserAddressSchemaTypeEnum home = _$userAddressSchemaTypeEnum_home;
  @BuiltValueEnumConst(wireName: r'office')
  static const UserAddressSchemaTypeEnum office = _$userAddressSchemaTypeEnum_office;
  @BuiltValueEnumConst(wireName: r'other')
  static const UserAddressSchemaTypeEnum other = _$userAddressSchemaTypeEnum_other;

  static Serializer<UserAddressSchemaTypeEnum> get serializer => _$userAddressSchemaTypeEnumSerializer;

  const UserAddressSchemaTypeEnum._(String name): super(name);

  static BuiltSet<UserAddressSchemaTypeEnum> get values => _$userAddressSchemaTypeEnumValues;
  static UserAddressSchemaTypeEnum valueOf(String name) => _$userAddressSchemaTypeEnumValueOf(name);
}

