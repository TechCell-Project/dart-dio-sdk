//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'filter_sku_dto.g.dart';

/// FilterSkuDto
///
/// Properties:
/// * [status] - List of status of SKU
@BuiltValue()
abstract class FilterSkuDto implements Built<FilterSkuDto, FilterSkuDtoBuilder> {
  /// List of status of SKU
  @BuiltValueField(wireName: r'status')
  BuiltList<FilterSkuDtoStatusEnum>? get status;
  // enum statusEnum {  selling,  deleted,  newly-released,  };

  FilterSkuDto._();

  factory FilterSkuDto([void updates(FilterSkuDtoBuilder b)]) = _$FilterSkuDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FilterSkuDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FilterSkuDto> get serializer => _$FilterSkuDtoSerializer();
}

class _$FilterSkuDtoSerializer implements PrimitiveSerializer<FilterSkuDto> {
  @override
  final Iterable<Type> types = const [FilterSkuDto, _$FilterSkuDto];

  @override
  final String wireName = r'FilterSkuDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FilterSkuDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(BuiltList, [FullType(FilterSkuDtoStatusEnum)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FilterSkuDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FilterSkuDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(FilterSkuDtoStatusEnum)]),
          ) as BuiltList<FilterSkuDtoStatusEnum>;
          result.status.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FilterSkuDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FilterSkuDtoBuilder();
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

class FilterSkuDtoStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'selling')
  static const FilterSkuDtoStatusEnum selling = _$filterSkuDtoStatusEnum_selling;
  @BuiltValueEnumConst(wireName: r'deleted')
  static const FilterSkuDtoStatusEnum deleted = _$filterSkuDtoStatusEnum_deleted;
  @BuiltValueEnumConst(wireName: r'newly-released')
  static const FilterSkuDtoStatusEnum newlyReleased = _$filterSkuDtoStatusEnum_newlyReleased;

  static Serializer<FilterSkuDtoStatusEnum> get serializer => _$filterSkuDtoStatusEnumSerializer;

  const FilterSkuDtoStatusEnum._(String name): super(name);

  static BuiltSet<FilterSkuDtoStatusEnum> get values => _$filterSkuDtoStatusEnumValues;
  static FilterSkuDtoStatusEnum valueOf(String name) => _$filterSkuDtoStatusEnumValueOf(name);
}

