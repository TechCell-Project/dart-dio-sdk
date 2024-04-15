//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sort_spu_dto.g.dart';

/// SortSpuDto
///
/// Properties:
/// * [orderBy] - Key of Entity to sort
/// * [order] - Order of sorting
@BuiltValue()
abstract class SortSpuDto implements Built<SortSpuDto, SortSpuDtoBuilder> {
  /// Key of Entity to sort
  @BuiltValueField(wireName: r'orderBy')
  String get orderBy;

  /// Order of sorting
  @BuiltValueField(wireName: r'order')
  SortSpuDtoOrderEnum get order;
  // enum orderEnum {  asc,  desc,  };

  SortSpuDto._();

  factory SortSpuDto([void updates(SortSpuDtoBuilder b)]) = _$SortSpuDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SortSpuDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SortSpuDto> get serializer => _$SortSpuDtoSerializer();
}

class _$SortSpuDtoSerializer implements PrimitiveSerializer<SortSpuDto> {
  @override
  final Iterable<Type> types = const [SortSpuDto, _$SortSpuDto];

  @override
  final String wireName = r'SortSpuDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SortSpuDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'orderBy';
    yield serializers.serialize(
      object.orderBy,
      specifiedType: const FullType(String),
    );
    yield r'order';
    yield serializers.serialize(
      object.order,
      specifiedType: const FullType(SortSpuDtoOrderEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SortSpuDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SortSpuDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'orderBy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.orderBy = valueDes;
          break;
        case r'order':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SortSpuDtoOrderEnum),
          ) as SortSpuDtoOrderEnum;
          result.order = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SortSpuDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SortSpuDtoBuilder();
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

class SortSpuDtoOrderEnum extends EnumClass {

  /// Order of sorting
  @BuiltValueEnumConst(wireName: r'asc')
  static const SortSpuDtoOrderEnum asc = _$sortSpuDtoOrderEnum_asc;
  /// Order of sorting
  @BuiltValueEnumConst(wireName: r'desc')
  static const SortSpuDtoOrderEnum desc = _$sortSpuDtoOrderEnum_desc;

  static Serializer<SortSpuDtoOrderEnum> get serializer => _$sortSpuDtoOrderEnumSerializer;

  const SortSpuDtoOrderEnum._(String name): super(name);

  static BuiltSet<SortSpuDtoOrderEnum> get values => _$sortSpuDtoOrderEnumValues;
  static SortSpuDtoOrderEnum valueOf(String name) => _$sortSpuDtoOrderEnumValueOf(name);
}

