//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'filter_tag_dto.g.dart';

/// FilterTagDto
///
/// Properties:
/// * [slug] 
/// * [keyword] - Search by keyword
/// * [status] 
@BuiltValue()
abstract class FilterTagDto implements Built<FilterTagDto, FilterTagDtoBuilder> {
  @BuiltValueField(wireName: r'slug')
  String? get slug;

  /// Search by keyword
  @BuiltValueField(wireName: r'keyword')
  String? get keyword;

  @BuiltValueField(wireName: r'status')
  BuiltList<FilterTagDtoStatusEnum> get status;
  // enum statusEnum {  active,  deleted,  };

  FilterTagDto._();

  factory FilterTagDto([void updates(FilterTagDtoBuilder b)]) = _$FilterTagDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FilterTagDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FilterTagDto> get serializer => _$FilterTagDtoSerializer();
}

class _$FilterTagDtoSerializer implements PrimitiveSerializer<FilterTagDto> {
  @override
  final Iterable<Type> types = const [FilterTagDto, _$FilterTagDto];

  @override
  final String wireName = r'FilterTagDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FilterTagDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.slug != null) {
      yield r'slug';
      yield serializers.serialize(
        object.slug,
        specifiedType: const FullType(String),
      );
    }
    if (object.keyword != null) {
      yield r'keyword';
      yield serializers.serialize(
        object.keyword,
        specifiedType: const FullType(String),
      );
    }
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(BuiltList, [FullType(FilterTagDtoStatusEnum)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    FilterTagDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FilterTagDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'slug':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.slug = valueDes;
          break;
        case r'keyword':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.keyword = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(FilterTagDtoStatusEnum)]),
          ) as BuiltList<FilterTagDtoStatusEnum>;
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
  FilterTagDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FilterTagDtoBuilder();
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

class FilterTagDtoStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'active')
  static const FilterTagDtoStatusEnum active = _$filterTagDtoStatusEnum_active;
  @BuiltValueEnumConst(wireName: r'deleted')
  static const FilterTagDtoStatusEnum deleted = _$filterTagDtoStatusEnum_deleted;

  static Serializer<FilterTagDtoStatusEnum> get serializer => _$filterTagDtoStatusEnumSerializer;

  const FilterTagDtoStatusEnum._(String name): super(name);

  static BuiltSet<FilterTagDtoStatusEnum> get values => _$filterTagDtoStatusEnumValues;
  static FilterTagDtoStatusEnum valueOf(String name) => _$filterTagDtoStatusEnumValueOf(name);
}

