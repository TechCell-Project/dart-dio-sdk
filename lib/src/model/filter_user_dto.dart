//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'filter_user_dto.g.dart';

/// FilterUserDto
///
/// Properties:
/// * [roles] 
@BuiltValue()
abstract class FilterUserDto implements Built<FilterUserDto, FilterUserDtoBuilder> {
  @BuiltValueField(wireName: r'roles')
  BuiltList<FilterUserDtoRolesEnum>? get roles;
  // enum rolesEnum {  manager,  customer,  sales,  warehouse,  data_entry,  accountant,  };

  FilterUserDto._();

  factory FilterUserDto([void updates(FilterUserDtoBuilder b)]) = _$FilterUserDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FilterUserDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FilterUserDto> get serializer => _$FilterUserDtoSerializer();
}

class _$FilterUserDtoSerializer implements PrimitiveSerializer<FilterUserDto> {
  @override
  final Iterable<Type> types = const [FilterUserDto, _$FilterUserDto];

  @override
  final String wireName = r'FilterUserDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FilterUserDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.roles != null) {
      yield r'roles';
      yield serializers.serialize(
        object.roles,
        specifiedType: const FullType(BuiltList, [FullType(FilterUserDtoRolesEnum)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FilterUserDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FilterUserDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'roles':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(FilterUserDtoRolesEnum)]),
          ) as BuiltList<FilterUserDtoRolesEnum>;
          result.roles.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FilterUserDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FilterUserDtoBuilder();
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

class FilterUserDtoRolesEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'manager')
  static const FilterUserDtoRolesEnum manager = _$filterUserDtoRolesEnum_manager;
  @BuiltValueEnumConst(wireName: r'customer')
  static const FilterUserDtoRolesEnum customer = _$filterUserDtoRolesEnum_customer;
  @BuiltValueEnumConst(wireName: r'sales')
  static const FilterUserDtoRolesEnum sales = _$filterUserDtoRolesEnum_sales;
  @BuiltValueEnumConst(wireName: r'warehouse')
  static const FilterUserDtoRolesEnum warehouse = _$filterUserDtoRolesEnum_warehouse;
  @BuiltValueEnumConst(wireName: r'data_entry')
  static const FilterUserDtoRolesEnum dataEntry = _$filterUserDtoRolesEnum_dataEntry;
  @BuiltValueEnumConst(wireName: r'accountant')
  static const FilterUserDtoRolesEnum accountant = _$filterUserDtoRolesEnum_accountant;

  static Serializer<FilterUserDtoRolesEnum> get serializer => _$filterUserDtoRolesEnumSerializer;

  const FilterUserDtoRolesEnum._(String name): super(name);

  static BuiltSet<FilterUserDtoRolesEnum> get values => _$filterUserDtoRolesEnumValues;
  static FilterUserDtoRolesEnum valueOf(String name) => _$filterUserDtoRolesEnumValueOf(name);
}

