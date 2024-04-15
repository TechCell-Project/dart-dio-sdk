//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:dart_dio_sdk/src/model/errors.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'add_serial_number_response_dto.g.dart';

/// AddSerialNumberResponseDto
///
/// Properties:
/// * [errors] 
@BuiltValue()
abstract class AddSerialNumberResponseDto implements Built<AddSerialNumberResponseDto, AddSerialNumberResponseDtoBuilder> {
  @BuiltValueField(wireName: r'errors')
  Errors? get errors;

  AddSerialNumberResponseDto._();

  factory AddSerialNumberResponseDto([void updates(AddSerialNumberResponseDtoBuilder b)]) = _$AddSerialNumberResponseDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AddSerialNumberResponseDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AddSerialNumberResponseDto> get serializer => _$AddSerialNumberResponseDtoSerializer();
}

class _$AddSerialNumberResponseDtoSerializer implements PrimitiveSerializer<AddSerialNumberResponseDto> {
  @override
  final Iterable<Type> types = const [AddSerialNumberResponseDto, _$AddSerialNumberResponseDto];

  @override
  final String wireName = r'AddSerialNumberResponseDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AddSerialNumberResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.errors != null) {
      yield r'errors';
      yield serializers.serialize(
        object.errors,
        specifiedType: const FullType(Errors),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AddSerialNumberResponseDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AddSerialNumberResponseDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'errors':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Errors),
          ) as Errors;
          result.errors.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AddSerialNumberResponseDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AddSerialNumberResponseDtoBuilder();
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

