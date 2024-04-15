//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sort_attribute_dto.g.dart';

/// SortAttributeDto
///
/// Properties:
/// * [orderBy] 
/// * [order] 
@BuiltValue()
abstract class SortAttributeDto implements Built<SortAttributeDto, SortAttributeDtoBuilder> {
  @BuiltValueField(wireName: r'orderBy')
  String get orderBy;

  @BuiltValueField(wireName: r'order')
  SortAttributeDtoOrderEnum get order;
  // enum orderEnum {  asc,  desc,  };

  SortAttributeDto._();

  factory SortAttributeDto([void updates(SortAttributeDtoBuilder b)]) = _$SortAttributeDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SortAttributeDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SortAttributeDto> get serializer => _$SortAttributeDtoSerializer();
}

class _$SortAttributeDtoSerializer implements PrimitiveSerializer<SortAttributeDto> {
  @override
  final Iterable<Type> types = const [SortAttributeDto, _$SortAttributeDto];

  @override
  final String wireName = r'SortAttributeDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SortAttributeDto object, {
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
      specifiedType: const FullType(SortAttributeDtoOrderEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SortAttributeDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SortAttributeDtoBuilder result,
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
            specifiedType: const FullType(SortAttributeDtoOrderEnum),
          ) as SortAttributeDtoOrderEnum;
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
  SortAttributeDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SortAttributeDtoBuilder();
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

class SortAttributeDtoOrderEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'asc')
  static const SortAttributeDtoOrderEnum asc = _$sortAttributeDtoOrderEnum_asc;
  @BuiltValueEnumConst(wireName: r'desc')
  static const SortAttributeDtoOrderEnum desc = _$sortAttributeDtoOrderEnum_desc;

  static Serializer<SortAttributeDtoOrderEnum> get serializer => _$sortAttributeDtoOrderEnumSerializer;

  const SortAttributeDtoOrderEnum._(String name): super(name);

  static BuiltSet<SortAttributeDtoOrderEnum> get values => _$sortAttributeDtoOrderEnumValues;
  static SortAttributeDtoOrderEnum valueOf(String name) => _$sortAttributeDtoOrderEnumValueOf(name);
}

