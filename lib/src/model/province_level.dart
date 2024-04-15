//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'province_level.g.dart';

/// ProvinceLevel
///
/// Properties:
/// * [provinceId] 
@BuiltValue()
abstract class ProvinceLevel implements Built<ProvinceLevel, ProvinceLevelBuilder> {
  @BuiltValueField(wireName: r'provinceId')
  num get provinceId;

  ProvinceLevel._();

  factory ProvinceLevel([void updates(ProvinceLevelBuilder b)]) = _$ProvinceLevel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProvinceLevelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProvinceLevel> get serializer => _$ProvinceLevelSerializer();
}

class _$ProvinceLevelSerializer implements PrimitiveSerializer<ProvinceLevel> {
  @override
  final Iterable<Type> types = const [ProvinceLevel, _$ProvinceLevel];

  @override
  final String wireName = r'ProvinceLevel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProvinceLevel object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'provinceId';
    yield serializers.serialize(
      object.provinceId,
      specifiedType: const FullType(num),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ProvinceLevel object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProvinceLevelBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'provinceId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.provinceId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProvinceLevel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProvinceLevelBuilder();
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

