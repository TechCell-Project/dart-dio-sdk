//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'auth_email_login_dto.g.dart';

/// AuthEmailLoginDto
///
/// Properties:
/// * [email] - User email
/// * [password] - User password
@BuiltValue()
abstract class AuthEmailLoginDto implements Built<AuthEmailLoginDto, AuthEmailLoginDtoBuilder> {
  /// User email
  @BuiltValueField(wireName: r'email')
  String get email;

  /// User password
  @BuiltValueField(wireName: r'password')
  String get password;

  AuthEmailLoginDto._();

  factory AuthEmailLoginDto([void updates(AuthEmailLoginDtoBuilder b)]) = _$AuthEmailLoginDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AuthEmailLoginDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AuthEmailLoginDto> get serializer => _$AuthEmailLoginDtoSerializer();
}

class _$AuthEmailLoginDtoSerializer implements PrimitiveSerializer<AuthEmailLoginDto> {
  @override
  final Iterable<Type> types = const [AuthEmailLoginDto, _$AuthEmailLoginDto];

  @override
  final String wireName = r'AuthEmailLoginDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AuthEmailLoginDto object, {
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
  }

  @override
  Object serialize(
    Serializers serializers,
    AuthEmailLoginDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AuthEmailLoginDtoBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AuthEmailLoginDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AuthEmailLoginDtoBuilder();
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

