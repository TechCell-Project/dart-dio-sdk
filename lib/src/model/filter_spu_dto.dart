//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'filter_spu_dto.g.dart';

/// FilterSpuDto
///
/// Properties:
/// * [status] - List of status of SPU
@BuiltValue()
abstract class FilterSpuDto implements Built<FilterSpuDto, FilterSpuDtoBuilder> {
  /// List of status of SPU
  @BuiltValueField(wireName: r'status')
  BuiltList<FilterSpuDtoStatusEnum>? get status;
  // enum statusEnum {  available,  deleted,  };

  FilterSpuDto._();

  factory FilterSpuDto([void updates(FilterSpuDtoBuilder b)]) = _$FilterSpuDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FilterSpuDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FilterSpuDto> get serializer => _$FilterSpuDtoSerializer();
}

class _$FilterSpuDtoSerializer implements PrimitiveSerializer<FilterSpuDto> {
  @override
  final Iterable<Type> types = const [FilterSpuDto, _$FilterSpuDto];

  @override
  final String wireName = r'FilterSpuDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FilterSpuDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(BuiltList, [FullType(FilterSpuDtoStatusEnum)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FilterSpuDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FilterSpuDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(FilterSpuDtoStatusEnum)]),
          ) as BuiltList<FilterSpuDtoStatusEnum>;
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
  FilterSpuDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FilterSpuDtoBuilder();
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

class FilterSpuDtoStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'available')
  static const FilterSpuDtoStatusEnum available = _$filterSpuDtoStatusEnum_available;
  @BuiltValueEnumConst(wireName: r'deleted')
  static const FilterSpuDtoStatusEnum deleted = _$filterSpuDtoStatusEnum_deleted;

  static Serializer<FilterSpuDtoStatusEnum> get serializer => _$filterSpuDtoStatusEnumSerializer;

  const FilterSpuDtoStatusEnum._(String name): super(name);

  static BuiltSet<FilterSpuDtoStatusEnum> get values => _$filterSpuDtoStatusEnumValues;
  static FilterSpuDtoStatusEnum valueOf(String name) => _$filterSpuDtoStatusEnumValueOf(name);
}

