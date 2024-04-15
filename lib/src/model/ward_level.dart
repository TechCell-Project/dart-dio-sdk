//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ward_level.g.dart';

/// WardLevel
///
/// Properties:
/// * [wardCode] 
@BuiltValue()
abstract class WardLevel implements Built<WardLevel, WardLevelBuilder> {
  @BuiltValueField(wireName: r'wardCode')
  String get wardCode;

  WardLevel._();

  factory WardLevel([void updates(WardLevelBuilder b)]) = _$WardLevel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WardLevelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WardLevel> get serializer => _$WardLevelSerializer();
}

class _$WardLevelSerializer implements PrimitiveSerializer<WardLevel> {
  @override
  final Iterable<Type> types = const [WardLevel, _$WardLevel];

  @override
  final String wireName = r'WardLevel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WardLevel object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'wardCode';
    yield serializers.serialize(
      object.wardCode,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    WardLevel object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required WardLevelBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'wardCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.wardCode = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WardLevel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WardLevelBuilder();
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

