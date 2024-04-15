//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:dart_dio_sdk/src/model/spu.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'spu_infinity_pagination_result.g.dart';

/// SpuInfinityPaginationResult
///
/// Properties:
/// * [data] 
/// * [hasNextPage] 
@BuiltValue()
abstract class SpuInfinityPaginationResult implements Built<SpuInfinityPaginationResult, SpuInfinityPaginationResultBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<SPU> get data;

  @BuiltValueField(wireName: r'hasNextPage')
  bool get hasNextPage;

  SpuInfinityPaginationResult._();

  factory SpuInfinityPaginationResult([void updates(SpuInfinityPaginationResultBuilder b)]) = _$SpuInfinityPaginationResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SpuInfinityPaginationResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SpuInfinityPaginationResult> get serializer => _$SpuInfinityPaginationResultSerializer();
}

class _$SpuInfinityPaginationResultSerializer implements PrimitiveSerializer<SpuInfinityPaginationResult> {
  @override
  final Iterable<Type> types = const [SpuInfinityPaginationResult, _$SpuInfinityPaginationResult];

  @override
  final String wireName = r'SpuInfinityPaginationResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SpuInfinityPaginationResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType: const FullType(BuiltList, [FullType(SPU)]),
    );
    yield r'hasNextPage';
    yield serializers.serialize(
      object.hasNextPage,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SpuInfinityPaginationResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SpuInfinityPaginationResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SPU)]),
          ) as BuiltList<SPU>;
          result.data.replace(valueDes);
          break;
        case r'hasNextPage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hasNextPage = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SpuInfinityPaginationResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SpuInfinityPaginationResultBuilder();
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

