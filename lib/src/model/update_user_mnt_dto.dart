//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:dart_dio_sdk/src/model/block_user_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_user_mnt_dto.g.dart';

/// UpdateUserMntDto
///
/// Properties:
/// * [role] - User role to update
/// * [block] 
@BuiltValue()
abstract class UpdateUserMntDto implements Built<UpdateUserMntDto, UpdateUserMntDtoBuilder> {
  /// User role to update
  @BuiltValueField(wireName: r'role')
  UpdateUserMntDtoRoleEnum? get role;
  // enum roleEnum {  sales,  warehouse,  data_entry,  accountant,  };

  @BuiltValueField(wireName: r'block')
  BlockUserDto? get block;

  UpdateUserMntDto._();

  factory UpdateUserMntDto([void updates(UpdateUserMntDtoBuilder b)]) = _$UpdateUserMntDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateUserMntDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateUserMntDto> get serializer => _$UpdateUserMntDtoSerializer();
}

class _$UpdateUserMntDtoSerializer implements PrimitiveSerializer<UpdateUserMntDto> {
  @override
  final Iterable<Type> types = const [UpdateUserMntDto, _$UpdateUserMntDto];

  @override
  final String wireName = r'UpdateUserMntDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateUserMntDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.role != null) {
      yield r'role';
      yield serializers.serialize(
        object.role,
        specifiedType: const FullType(UpdateUserMntDtoRoleEnum),
      );
    }
    if (object.block != null) {
      yield r'block';
      yield serializers.serialize(
        object.block,
        specifiedType: const FullType(BlockUserDto),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateUserMntDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateUserMntDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'role':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UpdateUserMntDtoRoleEnum),
          ) as UpdateUserMntDtoRoleEnum;
          result.role = valueDes;
          break;
        case r'block':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BlockUserDto),
          ) as BlockUserDto;
          result.block.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateUserMntDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateUserMntDtoBuilder();
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

class UpdateUserMntDtoRoleEnum extends EnumClass {

  /// User role to update
  @BuiltValueEnumConst(wireName: r'sales')
  static const UpdateUserMntDtoRoleEnum sales = _$updateUserMntDtoRoleEnum_sales;
  /// User role to update
  @BuiltValueEnumConst(wireName: r'warehouse')
  static const UpdateUserMntDtoRoleEnum warehouse = _$updateUserMntDtoRoleEnum_warehouse;
  /// User role to update
  @BuiltValueEnumConst(wireName: r'data_entry')
  static const UpdateUserMntDtoRoleEnum dataEntry = _$updateUserMntDtoRoleEnum_dataEntry;
  /// User role to update
  @BuiltValueEnumConst(wireName: r'accountant')
  static const UpdateUserMntDtoRoleEnum accountant = _$updateUserMntDtoRoleEnum_accountant;

  static Serializer<UpdateUserMntDtoRoleEnum> get serializer => _$updateUserMntDtoRoleEnumSerializer;

  const UpdateUserMntDtoRoleEnum._(String name): super(name);

  static BuiltSet<UpdateUserMntDtoRoleEnum> get values => _$updateUserMntDtoRoleEnumValues;
  static UpdateUserMntDtoRoleEnum valueOf(String name) => _$updateUserMntDtoRoleEnumValueOf(name);
}

