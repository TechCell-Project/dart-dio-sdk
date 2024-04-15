//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_user_dto.g.dart';

/// CreateUserDto
///
/// Properties:
/// * [email] - The user's email address.
/// * [password] - The user's password.
/// * [firstName] - The user's first name.
/// * [lastName] - The user's last name.
/// * [role] - The user's role.
@BuiltValue()
abstract class CreateUserDto implements Built<CreateUserDto, CreateUserDtoBuilder> {
  /// The user's email address.
  @BuiltValueField(wireName: r'email')
  String get email;

  /// The user's password.
  @BuiltValueField(wireName: r'password')
  String get password;

  /// The user's first name.
  @BuiltValueField(wireName: r'firstName')
  String get firstName;

  /// The user's last name.
  @BuiltValueField(wireName: r'lastName')
  String get lastName;

  /// The user's role.
  @BuiltValueField(wireName: r'role')
  CreateUserDtoRoleEnum get role;
  // enum roleEnum {  sales,  warehouse,  data_entry,  accountant,  };

  CreateUserDto._();

  factory CreateUserDto([void updates(CreateUserDtoBuilder b)]) = _$CreateUserDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateUserDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateUserDto> get serializer => _$CreateUserDtoSerializer();
}

class _$CreateUserDtoSerializer implements PrimitiveSerializer<CreateUserDto> {
  @override
  final Iterable<Type> types = const [CreateUserDto, _$CreateUserDto];

  @override
  final String wireName = r'CreateUserDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateUserDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'email';
    yield serializers.serialize(
      object.email,
      specifiedType: const FullType(String),
    );
    yield r'password';
    yield serializers.serialize(
      object.password,
      specifiedType: const FullType(String),
    );
    yield r'firstName';
    yield serializers.serialize(
      object.firstName,
      specifiedType: const FullType(String),
    );
    yield r'lastName';
    yield serializers.serialize(
      object.lastName,
      specifiedType: const FullType(String),
    );
    yield r'role';
    yield serializers.serialize(
      object.role,
      specifiedType: const FullType(CreateUserDtoRoleEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateUserDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateUserDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        case r'password':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.password = valueDes;
          break;
        case r'firstName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.firstName = valueDes;
          break;
        case r'lastName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.lastName = valueDes;
          break;
        case r'role':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CreateUserDtoRoleEnum),
          ) as CreateUserDtoRoleEnum;
          result.role = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateUserDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateUserDtoBuilder();
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

class CreateUserDtoRoleEnum extends EnumClass {

  /// The user's role.
  @BuiltValueEnumConst(wireName: r'sales')
  static const CreateUserDtoRoleEnum sales = _$createUserDtoRoleEnum_sales;
  /// The user's role.
  @BuiltValueEnumConst(wireName: r'warehouse')
  static const CreateUserDtoRoleEnum warehouse = _$createUserDtoRoleEnum_warehouse;
  /// The user's role.
  @BuiltValueEnumConst(wireName: r'data_entry')
  static const CreateUserDtoRoleEnum dataEntry = _$createUserDtoRoleEnum_dataEntry;
  /// The user's role.
  @BuiltValueEnumConst(wireName: r'accountant')
  static const CreateUserDtoRoleEnum accountant = _$createUserDtoRoleEnum_accountant;

  static Serializer<CreateUserDtoRoleEnum> get serializer => _$createUserDtoRoleEnumSerializer;

  const CreateUserDtoRoleEnum._(String name): super(name);

  static BuiltSet<CreateUserDtoRoleEnum> get values => _$createUserDtoRoleEnumValues;
  static CreateUserDtoRoleEnum valueOf(String name) => _$createUserDtoRoleEnumValueOf(name);
}

