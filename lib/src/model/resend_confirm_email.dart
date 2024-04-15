//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'resend_confirm_email.g.dart';

/// ResendConfirmEmail
///
/// Properties:
/// * [email] 
@BuiltValue()
abstract class ResendConfirmEmail implements Built<ResendConfirmEmail, ResendConfirmEmailBuilder> {
  @BuiltValueField(wireName: r'email')
  String get email;

  ResendConfirmEmail._();

  factory ResendConfirmEmail([void updates(ResendConfirmEmailBuilder b)]) = _$ResendConfirmEmail;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ResendConfirmEmailBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ResendConfirmEmail> get serializer => _$ResendConfirmEmailSerializer();
}

class _$ResendConfirmEmailSerializer implements PrimitiveSerializer<ResendConfirmEmail> {
  @override
  final Iterable<Type> types = const [ResendConfirmEmail, _$ResendConfirmEmail];

  @override
  final String wireName = r'ResendConfirmEmail';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ResendConfirmEmail object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'email';
    yield serializers.serialize(
      object.email,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ResendConfirmEmail object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ResendConfirmEmailBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ResendConfirmEmail deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResendConfirmEmailBuilder();
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

