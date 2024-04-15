//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'refresh_token_dto.g.dart';

/// RefreshTokenDto
///
/// Properties:
/// * [refreshToken] 
@BuiltValue()
abstract class RefreshTokenDto implements Built<RefreshTokenDto, RefreshTokenDtoBuilder> {
  @BuiltValueField(wireName: r'refreshToken')
  String get refreshToken;

  RefreshTokenDto._();

  factory RefreshTokenDto([void updates(RefreshTokenDtoBuilder b)]) = _$RefreshTokenDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RefreshTokenDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RefreshTokenDto> get serializer => _$RefreshTokenDtoSerializer();
}

class _$RefreshTokenDtoSerializer implements PrimitiveSerializer<RefreshTokenDto> {
  @override
  final Iterable<Type> types = const [RefreshTokenDto, _$RefreshTokenDto];

  @override
  final String wireName = r'RefreshTokenDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RefreshTokenDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'refreshToken';
    yield serializers.serialize(
      object.refreshToken,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    RefreshTokenDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RefreshTokenDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
  RefreshTokenDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RefreshTokenDtoBuilder();
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

