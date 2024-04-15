//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'filter_attribute_dto.g.dart';

/// FilterAttributeDto
///
/// Properties:
/// * [label] - Attribute label, unique
/// * [name] - Attribute name, can be translated
/// * [unit] - Attribute unit
/// * [description] 
/// * [status] 
@BuiltValue()
abstract class FilterAttributeDto implements Built<FilterAttributeDto, FilterAttributeDtoBuilder> {
  /// Attribute label, unique
  @BuiltValueField(wireName: r'label')
  String? get label;

  /// Attribute name, can be translated
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// Attribute unit
  @BuiltValueField(wireName: r'unit')
  String? get unit;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'status')
  BuiltList<FilterSpuDtoStatusEnum>? get status;
  // enum statusEnum {  available,  deleted,  };

  FilterAttributeDto._();

  factory FilterAttributeDto([void updates(FilterAttributeDtoBuilder b)]) = _$FilterAttributeDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FilterAttributeDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FilterAttributeDto> get serializer => _$FilterAttributeDtoSerializer();
}

class _$FilterAttributeDtoSerializer implements PrimitiveSerializer<FilterAttributeDto> {
  @override
  final Iterable<Type> types = const [FilterAttributeDto, _$FilterAttributeDto];

  @override
  final String wireName = r'FilterAttributeDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FilterAttributeDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.label != null) {
      yield r'label';
      yield serializers.serialize(
        object.label,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.unit != null) {
      yield r'unit';
      yield serializers.serialize(
        object.unit,
        specifiedType: const FullType(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
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
    FilterAttributeDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FilterAttributeDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'label':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.label = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'unit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.unit = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
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
  FilterAttributeDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FilterAttributeDtoBuilder();
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

