//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:dart_dio_sdk/src/model/tag.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tag_infinity_pagination_result.g.dart';

/// TagInfinityPaginationResult
///
/// Properties:
/// * [data] 
/// * [hasNextPage] 
@BuiltValue()
abstract class TagInfinityPaginationResult implements Built<TagInfinityPaginationResult, TagInfinityPaginationResultBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<Tag> get data;

  @BuiltValueField(wireName: r'hasNextPage')
  bool get hasNextPage;

  TagInfinityPaginationResult._();

  factory TagInfinityPaginationResult([void updates(TagInfinityPaginationResultBuilder b)]) = _$TagInfinityPaginationResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TagInfinityPaginationResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TagInfinityPaginationResult> get serializer => _$TagInfinityPaginationResultSerializer();
}

class _$TagInfinityPaginationResultSerializer implements PrimitiveSerializer<TagInfinityPaginationResult> {
  @override
  final Iterable<Type> types = const [TagInfinityPaginationResult, _$TagInfinityPaginationResult];

  @override
  final String wireName = r'TagInfinityPaginationResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TagInfinityPaginationResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType: const FullType(BuiltList, [FullType(Tag)]),
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
    TagInfinityPaginationResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TagInfinityPaginationResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Tag)]),
          ) as BuiltList<Tag>;
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
  TagInfinityPaginationResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TagInfinityPaginationResultBuilder();
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

