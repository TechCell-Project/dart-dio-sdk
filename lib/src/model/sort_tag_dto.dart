//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sort_tag_dto.g.dart';

/// SortTagDto
///
/// Properties:
/// * [orderBy] 
/// * [order] 
@BuiltValue()
abstract class SortTagDto implements Built<SortTagDto, SortTagDtoBuilder> {
  @BuiltValueField(wireName: r'orderBy')
  String get orderBy;

  @BuiltValueField(wireName: r'order')
  SortTagDtoOrderEnum get order;
  // enum orderEnum {  asc,  desc,  };

  SortTagDto._();

  factory SortTagDto([void updates(SortTagDtoBuilder b)]) = _$SortTagDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SortTagDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SortTagDto> get serializer => _$SortTagDtoSerializer();
}

class _$SortTagDtoSerializer implements PrimitiveSerializer<SortTagDto> {
  @override
  final Iterable<Type> types = const [SortTagDto, _$SortTagDto];

  @override
  final String wireName = r'SortTagDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SortTagDto object, {
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
      specifiedType: const FullType(SortTagDtoOrderEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SortTagDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SortTagDtoBuilder result,
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
            specifiedType: const FullType(SortTagDtoOrderEnum),
          ) as SortTagDtoOrderEnum;
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
  SortTagDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SortTagDtoBuilder();
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

class SortTagDtoOrderEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'asc')
  static const SortTagDtoOrderEnum asc = _$sortTagDtoOrderEnum_asc;
  @BuiltValueEnumConst(wireName: r'desc')
  static const SortTagDtoOrderEnum desc = _$sortTagDtoOrderEnum_desc;

  static Serializer<SortTagDtoOrderEnum> get serializer => _$sortTagDtoOrderEnumSerializer;

  const SortTagDtoOrderEnum._(String name): super(name);

  static BuiltSet<SortTagDtoOrderEnum> get values => _$sortTagDtoOrderEnumValues;
  static SortTagDtoOrderEnum valueOf(String name) => _$sortTagDtoOrderEnumValueOf(name);
}

