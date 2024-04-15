//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:dart_dio_sdk/src/model/sku.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sku_infinity_pagination_result.g.dart';

/// SkuInfinityPaginationResult
///
/// Properties:
/// * [data] 
/// * [hasNextPage] 
@BuiltValue()
abstract class SkuInfinityPaginationResult implements Built<SkuInfinityPaginationResult, SkuInfinityPaginationResultBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<SKU> get data;

  @BuiltValueField(wireName: r'hasNextPage')
  bool get hasNextPage;

  SkuInfinityPaginationResult._();

  factory SkuInfinityPaginationResult([void updates(SkuInfinityPaginationResultBuilder b)]) = _$SkuInfinityPaginationResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SkuInfinityPaginationResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SkuInfinityPaginationResult> get serializer => _$SkuInfinityPaginationResultSerializer();
}

class _$SkuInfinityPaginationResultSerializer implements PrimitiveSerializer<SkuInfinityPaginationResult> {
  @override
  final Iterable<Type> types = const [SkuInfinityPaginationResult, _$SkuInfinityPaginationResult];

  @override
  final String wireName = r'SkuInfinityPaginationResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SkuInfinityPaginationResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType: const FullType(BuiltList, [FullType(SKU)]),
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
    SkuInfinityPaginationResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SkuInfinityPaginationResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SKU)]),
          ) as BuiltList<SKU>;
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
  SkuInfinityPaginationResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SkuInfinityPaginationResultBuilder();
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

