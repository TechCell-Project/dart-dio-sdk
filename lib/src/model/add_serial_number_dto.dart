//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'add_serial_number_dto.g.dart';

/// AddSerialNumberDto
///
/// Properties:
/// * [serialNumbers] - Serial numbers
@BuiltValue()
abstract class AddSerialNumberDto implements Built<AddSerialNumberDto, AddSerialNumberDtoBuilder> {
  /// Serial numbers
  @BuiltValueField(wireName: r'serialNumbers')
  BuiltList<String> get serialNumbers;

  AddSerialNumberDto._();

  factory AddSerialNumberDto([void updates(AddSerialNumberDtoBuilder b)]) = _$AddSerialNumberDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AddSerialNumberDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AddSerialNumberDto> get serializer => _$AddSerialNumberDtoSerializer();
}

class _$AddSerialNumberDtoSerializer implements PrimitiveSerializer<AddSerialNumberDto> {
  @override
  final Iterable<Type> types = const [AddSerialNumberDto, _$AddSerialNumberDto];

  @override
  final String wireName = r'AddSerialNumberDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AddSerialNumberDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'serialNumbers';
    yield serializers.serialize(
      object.serialNumbers,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AddSerialNumberDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AddSerialNumberDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'serialNumbers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.serialNumbers.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AddSerialNumberDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AddSerialNumberDtoBuilder();
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

