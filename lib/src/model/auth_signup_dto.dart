//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'auth_signup_dto.g.dart';

/// AuthSignupDto
///
/// Properties:
/// * [email] - The user's email address.
/// * [password] - The user's password.
/// * [firstName] - The user's first name.
/// * [lastName] - The user's last name.
@BuiltValue()
abstract class AuthSignupDto implements Built<AuthSignupDto, AuthSignupDtoBuilder> {
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

  AuthSignupDto._();

  factory AuthSignupDto([void updates(AuthSignupDtoBuilder b)]) = _$AuthSignupDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AuthSignupDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AuthSignupDto> get serializer => _$AuthSignupDtoSerializer();
}

class _$AuthSignupDtoSerializer implements PrimitiveSerializer<AuthSignupDto> {
  @override
  final Iterable<Type> types = const [AuthSignupDto, _$AuthSignupDto];

  @override
  final String wireName = r'AuthSignupDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AuthSignupDto object, {
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
  }

  @override
  Object serialize(
    Serializers serializers,
    AuthSignupDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AuthSignupDtoBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AuthSignupDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AuthSignupDtoBuilder();
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

