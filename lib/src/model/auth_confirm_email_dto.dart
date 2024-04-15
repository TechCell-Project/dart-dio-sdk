//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'auth_confirm_email_dto.g.dart';

/// AuthConfirmEmailDto
///
/// Properties:
/// * [hash] 
@BuiltValue()
abstract class AuthConfirmEmailDto implements Built<AuthConfirmEmailDto, AuthConfirmEmailDtoBuilder> {
  @BuiltValueField(wireName: r'hash')
  String get hash;

  AuthConfirmEmailDto._();

  factory AuthConfirmEmailDto([void updates(AuthConfirmEmailDtoBuilder b)]) = _$AuthConfirmEmailDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AuthConfirmEmailDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AuthConfirmEmailDto> get serializer => _$AuthConfirmEmailDtoSerializer();
}

class _$AuthConfirmEmailDtoSerializer implements PrimitiveSerializer<AuthConfirmEmailDto> {
  @override
  final Iterable<Type> types = const [AuthConfirmEmailDto, _$AuthConfirmEmailDto];

  @override
  final String wireName = r'AuthConfirmEmailDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AuthConfirmEmailDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'hash';
    yield serializers.serialize(
      object.hash,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AuthConfirmEmailDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AuthConfirmEmailDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'hash':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.hash = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AuthConfirmEmailDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AuthConfirmEmailDtoBuilder();
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

