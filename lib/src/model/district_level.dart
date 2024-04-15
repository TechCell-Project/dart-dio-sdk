//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'district_level.g.dart';

/// DistrictLevel
///
/// Properties:
/// * [districtId] 
@BuiltValue()
abstract class DistrictLevel implements Built<DistrictLevel, DistrictLevelBuilder> {
  @BuiltValueField(wireName: r'districtId')
  num get districtId;

  DistrictLevel._();

  factory DistrictLevel([void updates(DistrictLevelBuilder b)]) = _$DistrictLevel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DistrictLevelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DistrictLevel> get serializer => _$DistrictLevelSerializer();
}

class _$DistrictLevelSerializer implements PrimitiveSerializer<DistrictLevel> {
  @override
  final Iterable<Type> types = const [DistrictLevel, _$DistrictLevel];

  @override
  final String wireName = r'DistrictLevel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DistrictLevel object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'districtId';
    yield serializers.serialize(
      object.districtId,
      specifiedType: const FullType(num),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DistrictLevel object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DistrictLevelBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'districtId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.districtId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DistrictLevel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DistrictLevelBuilder();
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

