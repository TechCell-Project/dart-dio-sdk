//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:dart_dio_sdk/src/model/attribute.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'attribute_infinity_pagination_result.g.dart';

/// AttributeInfinityPaginationResult
///
/// Properties:
/// * [data] 
/// * [hasNextPage] 
@BuiltValue()
abstract class AttributeInfinityPaginationResult implements Built<AttributeInfinityPaginationResult, AttributeInfinityPaginationResultBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<Attribute> get data;

  @BuiltValueField(wireName: r'hasNextPage')
  bool get hasNextPage;

  AttributeInfinityPaginationResult._();

  factory AttributeInfinityPaginationResult([void updates(AttributeInfinityPaginationResultBuilder b)]) = _$AttributeInfinityPaginationResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AttributeInfinityPaginationResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AttributeInfinityPaginationResult> get serializer => _$AttributeInfinityPaginationResultSerializer();
}

class _$AttributeInfinityPaginationResultSerializer implements PrimitiveSerializer<AttributeInfinityPaginationResult> {
  @override
  final Iterable<Type> types = const [AttributeInfinityPaginationResult, _$AttributeInfinityPaginationResult];

  @override
  final String wireName = r'AttributeInfinityPaginationResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AttributeInfinityPaginationResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType: const FullType(BuiltList, [FullType(Attribute)]),
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
    AttributeInfinityPaginationResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AttributeInfinityPaginationResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Attribute)]),
          ) as BuiltList<Attribute>;
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
  AttributeInfinityPaginationResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AttributeInfinityPaginationResultBuilder();
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

