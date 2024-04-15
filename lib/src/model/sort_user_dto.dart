//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sort_user_dto.g.dart';

/// SortUserDto
///
/// Properties:
/// * [orderBy] - Key of User
/// * [order] - Order of sorting
@BuiltValue()
abstract class SortUserDto implements Built<SortUserDto, SortUserDtoBuilder> {
  /// Key of User
  @BuiltValueField(wireName: r'orderBy')
  String get orderBy;

  /// Order of sorting
  @BuiltValueField(wireName: r'order')
  SortUserDtoOrderEnum get order;
  // enum orderEnum {  asc,  desc,  };

  SortUserDto._();

  factory SortUserDto([void updates(SortUserDtoBuilder b)]) = _$SortUserDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SortUserDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SortUserDto> get serializer => _$SortUserDtoSerializer();
}

class _$SortUserDtoSerializer implements PrimitiveSerializer<SortUserDto> {
  @override
  final Iterable<Type> types = const [SortUserDto, _$SortUserDto];

  @override
  final String wireName = r'SortUserDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SortUserDto object, {
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
      specifiedType: const FullType(SortUserDtoOrderEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SortUserDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SortUserDtoBuilder result,
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
            specifiedType: const FullType(SortUserDtoOrderEnum),
          ) as SortUserDtoOrderEnum;
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
  SortUserDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SortUserDtoBuilder();
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

class SortUserDtoOrderEnum extends EnumClass {

  /// Order of sorting
  @BuiltValueEnumConst(wireName: r'asc')
  static const SortUserDtoOrderEnum asc = _$sortUserDtoOrderEnum_asc;
  /// Order of sorting
  @BuiltValueEnumConst(wireName: r'desc')
  static const SortUserDtoOrderEnum desc = _$sortUserDtoOrderEnum_desc;

  static Serializer<SortUserDtoOrderEnum> get serializer => _$sortUserDtoOrderEnumSerializer;

  const SortUserDtoOrderEnum._(String name): super(name);

  static BuiltSet<SortUserDtoOrderEnum> get values => _$sortUserDtoOrderEnumValues;
  static SortUserDtoOrderEnum valueOf(String name) => _$sortUserDtoOrderEnumValueOf(name);
}

