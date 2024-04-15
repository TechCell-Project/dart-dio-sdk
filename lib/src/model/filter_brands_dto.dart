//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'filter_brands_dto.g.dart';

/// FilterBrandsDto
///
/// Properties:
/// * [status] 
@BuiltValue()
abstract class FilterBrandsDto implements Built<FilterBrandsDto, FilterBrandsDtoBuilder> {
  @BuiltValueField(wireName: r'status')
  BuiltList<FilterBrandsDtoStatusEnum>? get status;
  // enum statusEnum {  active,  inactive,  deleted,  };

  FilterBrandsDto._();

  factory FilterBrandsDto([void updates(FilterBrandsDtoBuilder b)]) = _$FilterBrandsDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FilterBrandsDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FilterBrandsDto> get serializer => _$FilterBrandsDtoSerializer();
}

class _$FilterBrandsDtoSerializer implements PrimitiveSerializer<FilterBrandsDto> {
  @override
  final Iterable<Type> types = const [FilterBrandsDto, _$FilterBrandsDto];

  @override
  final String wireName = r'FilterBrandsDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FilterBrandsDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(BuiltList, [FullType(FilterBrandsDtoStatusEnum)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FilterBrandsDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FilterBrandsDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(FilterBrandsDtoStatusEnum)]),
          ) as BuiltList<FilterBrandsDtoStatusEnum>;
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
  FilterBrandsDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FilterBrandsDtoBuilder();
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

class FilterBrandsDtoStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'active')
  static const FilterBrandsDtoStatusEnum active = _$filterBrandsDtoStatusEnum_active;
  @BuiltValueEnumConst(wireName: r'inactive')
  static const FilterBrandsDtoStatusEnum inactive = _$filterBrandsDtoStatusEnum_inactive;
  @BuiltValueEnumConst(wireName: r'deleted')
  static const FilterBrandsDtoStatusEnum deleted = _$filterBrandsDtoStatusEnum_deleted;

  static Serializer<FilterBrandsDtoStatusEnum> get serializer => _$filterBrandsDtoStatusEnumSerializer;

  const FilterBrandsDtoStatusEnum._(String name): super(name);

  static BuiltSet<FilterBrandsDtoStatusEnum> get values => _$filterBrandsDtoStatusEnumValues;
  static FilterBrandsDtoStatusEnum valueOf(String name) => _$filterBrandsDtoStatusEnumValueOf(name);
}

