//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'errors.g.dart';

/// Errors
///
/// Properties:
/// * [existSold] - List of exist sold serial numbers
/// * [existAvailable] - List of exist available serial numbers
@BuiltValue()
abstract class Errors implements Built<Errors, ErrorsBuilder> {
  /// List of exist sold serial numbers
  @BuiltValueField(wireName: r'existSold')
  BuiltList<String>? get existSold;

  /// List of exist available serial numbers
  @BuiltValueField(wireName: r'existAvailable')
  BuiltList<String>? get existAvailable;

  Errors._();

  factory Errors([void updates(ErrorsBuilder b)]) = _$Errors;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ErrorsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Errors> get serializer => _$ErrorsSerializer();
}

class _$ErrorsSerializer implements PrimitiveSerializer<Errors> {
  @override
  final Iterable<Type> types = const [Errors, _$Errors];

  @override
  final String wireName = r'Errors';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Errors object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.existSold != null) {
      yield r'existSold';
      yield serializers.serialize(
        object.existSold,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.existAvailable != null) {
      yield r'existAvailable';
      yield serializers.serialize(
        object.existAvailable,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Errors object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ErrorsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'existSold':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.existSold.replace(valueDes);
          break;
        case r'existAvailable':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.existAvailable.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Errors deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ErrorsBuilder();
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

