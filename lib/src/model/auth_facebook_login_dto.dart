//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'auth_facebook_login_dto.g.dart';

/// AuthFacebookLoginDto
///
/// Properties:
/// * [accessToken] 
@BuiltValue()
abstract class AuthFacebookLoginDto implements Built<AuthFacebookLoginDto, AuthFacebookLoginDtoBuilder> {
  @BuiltValueField(wireName: r'accessToken')
  String get accessToken;

  AuthFacebookLoginDto._();

  factory AuthFacebookLoginDto([void updates(AuthFacebookLoginDtoBuilder b)]) = _$AuthFacebookLoginDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AuthFacebookLoginDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AuthFacebookLoginDto> get serializer => _$AuthFacebookLoginDtoSerializer();
}

class _$AuthFacebookLoginDtoSerializer implements PrimitiveSerializer<AuthFacebookLoginDto> {
  @override
  final Iterable<Type> types = const [AuthFacebookLoginDto, _$AuthFacebookLoginDto];

  @override
  final String wireName = r'AuthFacebookLoginDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AuthFacebookLoginDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'accessToken';
    yield serializers.serialize(
      object.accessToken,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AuthFacebookLoginDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AuthFacebookLoginDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'accessToken':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.accessToken = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AuthFacebookLoginDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AuthFacebookLoginDtoBuilder();
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

