//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sort_sku_dto.g.dart';

/// SortSkuDto
///
/// Properties:
/// * [orderBy] - Key of Entity to sort
/// * [order] - Order of sorting
@BuiltValue()
abstract class SortSkuDto implements Built<SortSkuDto, SortSkuDtoBuilder> {
  /// Key of Entity to sort
  @BuiltValueField(wireName: r'orderBy')
  String get orderBy;

  /// Order of sorting
  @BuiltValueField(wireName: r'order')
  SortSkuDtoOrderEnum get order;
  // enum orderEnum {  asc,  desc,  };

  SortSkuDto._();

  factory SortSkuDto([void updates(SortSkuDtoBuilder b)]) = _$SortSkuDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SortSkuDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SortSkuDto> get serializer => _$SortSkuDtoSerializer();
}

class _$SortSkuDtoSerializer implements PrimitiveSerializer<SortSkuDto> {
  @override
  final Iterable<Type> types = const [SortSkuDto, _$SortSkuDto];

  @override
  final String wireName = r'SortSkuDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SortSkuDto object, {
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
      specifiedType: const FullType(SortSkuDtoOrderEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SortSkuDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SortSkuDtoBuilder result,
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
            specifiedType: const FullType(SortSkuDtoOrderEnum),
          ) as SortSkuDtoOrderEnum;
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
  SortSkuDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SortSkuDtoBuilder();
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

class SortSkuDtoOrderEnum extends EnumClass {

  /// Order of sorting
  @BuiltValueEnumConst(wireName: r'asc')
  static const SortSkuDtoOrderEnum asc = _$sortSkuDtoOrderEnum_asc;
  /// Order of sorting
  @BuiltValueEnumConst(wireName: r'desc')
  static const SortSkuDtoOrderEnum desc = _$sortSkuDtoOrderEnum_desc;

  static Serializer<SortSkuDtoOrderEnum> get serializer => _$sortSkuDtoOrderEnumSerializer;

  const SortSkuDtoOrderEnum._(String name): super(name);

  static BuiltSet<SortSkuDtoOrderEnum> get values => _$sortSkuDtoOrderEnumValues;
  static SortSkuDtoOrderEnum valueOf(String name) => _$sortSkuDtoOrderEnumValueOf(name);
}

