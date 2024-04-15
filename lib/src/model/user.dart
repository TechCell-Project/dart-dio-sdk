//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:dart_dio_sdk/src/model/avatar_schema.dart';
import 'package:built_collection/built_collection.dart';
import 'package:dart_dio_sdk/src/model/user_address_schema.dart';
import 'package:dart_dio_sdk/src/model/user_block_schema.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user.g.dart';

/// User
///
/// Properties:
/// * [email] 
/// * [emailVerified] 
/// * [provider] 
/// * [socialId] 
/// * [firstName] 
/// * [lastName] 
/// * [role] 
/// * [avatar] 
/// * [address] 
/// * [block] 
@BuiltValue()
abstract class User implements Built<User, UserBuilder> {
  @BuiltValueField(wireName: r'email')
  String get email;

  @BuiltValueField(wireName: r'emailVerified')
  bool get emailVerified;

  @BuiltValueField(wireName: r'provider')
  UserProviderEnum get provider;
  // enum providerEnum {  google,  facebook,  apple,  email,  };

  @BuiltValueField(wireName: r'socialId')
  String? get socialId;

  @BuiltValueField(wireName: r'firstName')
  String get firstName;

  @BuiltValueField(wireName: r'lastName')
  String get lastName;

  @BuiltValueField(wireName: r'role')
  UserRoleEnum get role;
  // enum roleEnum {  manager,  customer,  sales,  warehouse,  data_entry,  accountant,  };

  @BuiltValueField(wireName: r'avatar')
  AvatarSchema? get avatar;

  @BuiltValueField(wireName: r'address')
  BuiltList<UserAddressSchema>? get address;

  @BuiltValueField(wireName: r'block')
  UserBlockSchema? get block;

  User._();

  factory User([void updates(UserBuilder b)]) = _$User;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<User> get serializer => _$UserSerializer();
}

class _$UserSerializer implements PrimitiveSerializer<User> {
  @override
  final Iterable<Type> types = const [User, _$User];

  @override
  final String wireName = r'User';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    User object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'email';
    yield serializers.serialize(
      object.email,
      specifiedType: const FullType(String),
    );
    yield r'emailVerified';
    yield serializers.serialize(
      object.emailVerified,
      specifiedType: const FullType(bool),
    );
    yield r'provider';
    yield serializers.serialize(
      object.provider,
      specifiedType: const FullType(UserProviderEnum),
    );
    if (object.socialId != null) {
      yield r'socialId';
      yield serializers.serialize(
        object.socialId,
        specifiedType: const FullType(String),
      );
    }
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
      specifiedType: const FullType(UserRoleEnum),
    );
    if (object.avatar != null) {
      yield r'avatar';
      yield serializers.serialize(
        object.avatar,
        specifiedType: const FullType(AvatarSchema),
      );
    }
    if (object.address != null) {
      yield r'address';
      yield serializers.serialize(
        object.address,
        specifiedType: const FullType(BuiltList, [FullType(UserAddressSchema)]),
      );
    }
    if (object.block != null) {
      yield r'block';
      yield serializers.serialize(
        object.block,
        specifiedType: const FullType(UserBlockSchema),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    User object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UserBuilder result,
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
        case r'emailVerified':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.emailVerified = valueDes;
          break;
        case r'provider':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UserProviderEnum),
          ) as UserProviderEnum;
          result.provider = valueDes;
          break;
        case r'socialId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.socialId = valueDes;
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
            specifiedType: const FullType(UserRoleEnum),
          ) as UserRoleEnum;
          result.role = valueDes;
          break;
        case r'avatar':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AvatarSchema),
          ) as AvatarSchema;
          result.avatar.replace(valueDes);
          break;
        case r'address':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(UserAddressSchema)]),
          ) as BuiltList<UserAddressSchema>;
          result.address.replace(valueDes);
          break;
        case r'block':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UserBlockSchema),
          ) as UserBlockSchema;
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
  User deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserBuilder();
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

class UserProviderEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'google')
  static const UserProviderEnum google = _$userProviderEnum_google;
  @BuiltValueEnumConst(wireName: r'facebook')
  static const UserProviderEnum facebook = _$userProviderEnum_facebook;
  @BuiltValueEnumConst(wireName: r'apple')
  static const UserProviderEnum apple = _$userProviderEnum_apple;
  @BuiltValueEnumConst(wireName: r'email')
  static const UserProviderEnum email = _$userProviderEnum_email;

  static Serializer<UserProviderEnum> get serializer => _$userProviderEnumSerializer;

  const UserProviderEnum._(String name): super(name);

  static BuiltSet<UserProviderEnum> get values => _$userProviderEnumValues;
  static UserProviderEnum valueOf(String name) => _$userProviderEnumValueOf(name);
}

class UserRoleEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'manager')
  static const UserRoleEnum manager = _$userRoleEnum_manager;
  @BuiltValueEnumConst(wireName: r'customer')
  static const UserRoleEnum customer = _$userRoleEnum_customer;
  @BuiltValueEnumConst(wireName: r'sales')
  static const UserRoleEnum sales = _$userRoleEnum_sales;
  @BuiltValueEnumConst(wireName: r'warehouse')
  static const UserRoleEnum warehouse = _$userRoleEnum_warehouse;
  @BuiltValueEnumConst(wireName: r'data_entry')
  static const UserRoleEnum dataEntry = _$userRoleEnum_dataEntry;
  @BuiltValueEnumConst(wireName: r'accountant')
  static const UserRoleEnum accountant = _$userRoleEnum_accountant;

  static Serializer<UserRoleEnum> get serializer => _$userRoleEnumSerializer;

  const UserRoleEnum._(String name): super(name);

  static BuiltSet<UserRoleEnum> get values => _$userRoleEnumValues;
  static UserRoleEnum valueOf(String name) => _$userRoleEnumValueOf(name);
}

