//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:dart_dio_sdk/src/model/brand.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'brand_infinity_pagination_result.g.dart';

/// BrandInfinityPaginationResult
///
/// Properties:
/// * [data] 
/// * [hasNextPage] 
@BuiltValue()
abstract class BrandInfinityPaginationResult implements Built<BrandInfinityPaginationResult, BrandInfinityPaginationResultBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<Brand> get data;

  @BuiltValueField(wireName: r'hasNextPage')
  bool get hasNextPage;

  BrandInfinityPaginationResult._();

  factory BrandInfinityPaginationResult([void updates(BrandInfinityPaginationResultBuilder b)]) = _$BrandInfinityPaginationResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BrandInfinityPaginationResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BrandInfinityPaginationResult> get serializer => _$BrandInfinityPaginationResultSerializer();
}

class _$BrandInfinityPaginationResultSerializer implements PrimitiveSerializer<BrandInfinityPaginationResult> {
  @override
  final Iterable<Type> types = const [BrandInfinityPaginationResult, _$BrandInfinityPaginationResult];

  @override
  final String wireName = r'BrandInfinityPaginationResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BrandInfinityPaginationResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType: const FullType(BuiltList, [FullType(Brand)]),
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
    BrandInfinityPaginationResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BrandInfinityPaginationResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Brand)]),
          ) as BuiltList<Brand>;
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
  BrandInfinityPaginationResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BrandInfinityPaginationResultBuilder();
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

