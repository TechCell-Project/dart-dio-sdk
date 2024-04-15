//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'refresh_token_response_dto.g.dart';

/// RefreshTokenResponseDto
///
/// Properties:
/// * [accessToken] 
/// * [accessTokenExpires] 
/// * [refreshToken] 
@BuiltValue()
abstract class RefreshTokenResponseDto implements Built<RefreshTokenResponseDto, RefreshTokenResponseDtoBuilder> {
  @BuiltValueField(wireName: r'accessToken')
  String get accessToken;

  @BuiltValueField(wireName: r'accessTokenExpires')
  num get accessTokenExpires;

  @BuiltValueField(wireName: r'refreshToken')
  String get refreshToken;

  RefreshTokenResponseDto._();

  factory RefreshTokenResponseDto([void updates(RefreshTokenResponseDtoBuilder b)]) = _$RefreshTokenResponseDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RefreshTokenResponseDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RefreshTokenResponseDto> get serializer => _$RefreshTokenResponseDtoSerializer();
}

class _$RefreshTokenResponseDtoSerializer implements PrimitiveSerializer<RefreshTokenResponseDto> {
  @override
  final Iterable<Type> types = const [RefreshTokenResponseDto, _$RefreshTokenResponseDto];

  @override
  final String wireName = r'RefreshTokenResponseDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RefreshTokenResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'accessToken';
    yield serializers.serialize(
      object.accessToken,
      specifiedType: const FullType(String),
    );
    yield r'accessTokenExpires';
    yield serializers.serialize(
      object.accessTokenExpires,
      specifiedType: const FullType(num),
    );
    yield r'refreshToken';
    yield serializers.serialize(
      object.refreshToken,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    RefreshTokenResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RefreshTokenResponseDtoBuilder result,
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
        case r'accessTokenExpires':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.accessTokenExpires = valueDes;
          break;
        case r'refreshToken':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.refreshToken = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RefreshTokenResponseDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RefreshTokenResponseDtoBuilder();
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

