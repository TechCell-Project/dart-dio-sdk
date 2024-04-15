//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:dart_dio_sdk/src/model/user_address_schema_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'auth_update_dto.g.dart';

/// AuthUpdateDto
///
/// Properties:
/// * [firstName] 
/// * [lastName] 
/// * [password] 
/// * [oldPassword] 
/// * [address] 
/// * [avatarImageId] 
@BuiltValue()
abstract class AuthUpdateDto implements Built<AuthUpdateDto, AuthUpdateDtoBuilder> {
  @BuiltValueField(wireName: r'firstName')
  String? get firstName;

  @BuiltValueField(wireName: r'lastName')
  String? get lastName;

  @BuiltValueField(wireName: r'password')
  String? get password;

  @BuiltValueField(wireName: r'oldPassword')
  String? get oldPassword;

  @BuiltValueField(wireName: r'address')
  BuiltList<UserAddressSchemaDTO>? get address;

  @BuiltValueField(wireName: r'avatarImageId')
  String? get avatarImageId;

  AuthUpdateDto._();

  factory AuthUpdateDto([void updates(AuthUpdateDtoBuilder b)]) = _$AuthUpdateDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AuthUpdateDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AuthUpdateDto> get serializer => _$AuthUpdateDtoSerializer();
}

class _$AuthUpdateDtoSerializer implements PrimitiveSerializer<AuthUpdateDto> {
  @override
  final Iterable<Type> types = const [AuthUpdateDto, _$AuthUpdateDto];

  @override
  final String wireName = r'AuthUpdateDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AuthUpdateDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.firstName != null) {
      yield r'firstName';
      yield serializers.serialize(
        object.firstName,
        specifiedType: const FullType(String),
      );
    }
    if (object.lastName != null) {
      yield r'lastName';
      yield serializers.serialize(
        object.lastName,
        specifiedType: const FullType(String),
      );
    }
    if (object.password != null) {
      yield r'password';
      yield serializers.serialize(
        object.password,
        specifiedType: const FullType(String),
      );
    }
    if (object.oldPassword != null) {
      yield r'oldPassword';
      yield serializers.serialize(
        object.oldPassword,
        specifiedType: const FullType(String),
      );
    }
    if (object.address != null) {
      yield r'address';
      yield serializers.serialize(
        object.address,
        specifiedType: const FullType(BuiltList, [FullType(UserAddressSchemaDTO)]),
      );
    }
    if (object.avatarImageId != null) {
      yield r'avatarImageId';
      yield serializers.serialize(
        object.avatarImageId,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AuthUpdateDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AuthUpdateDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        case r'password':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.password = valueDes;
          break;
        case r'oldPassword':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.oldPassword = valueDes;
          break;
        case r'address':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(UserAddressSchemaDTO)]),
          ) as BuiltList<UserAddressSchemaDTO>;
          result.address.replace(valueDes);
          break;
        case r'avatarImageId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.avatarImageId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AuthUpdateDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AuthUpdateDtoBuilder();
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

