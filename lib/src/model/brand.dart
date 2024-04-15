//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'brand.g.dart';

/// Brand
///
/// Properties:
/// * [slug] 
/// * [name] 
/// * [description] 
/// * [status] 
@BuiltValue()
abstract class Brand implements Built<Brand, BrandBuilder> {
  @BuiltValueField(wireName: r'slug')
  String get slug;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'description')
  String get description;

  @BuiltValueField(wireName: r'status')
  BrandStatusEnum get status;
  // enum statusEnum {  active,  inactive,  deleted,  };

  Brand._();

  factory Brand([void updates(BrandBuilder b)]) = _$Brand;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BrandBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Brand> get serializer => _$BrandSerializer();
}

class _$BrandSerializer implements PrimitiveSerializer<Brand> {
  @override
  final Iterable<Type> types = const [Brand, _$Brand];

  @override
  final String wireName = r'Brand';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Brand object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'slug';
    yield serializers.serialize(
      object.slug,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'description';
    yield serializers.serialize(
      object.description,
      specifiedType: const FullType(String),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(BrandStatusEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    Brand object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BrandBuilder result,
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
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
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
            specifiedType: const FullType(BrandStatusEnum),
          ) as BrandStatusEnum;
          result.status = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Brand deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BrandBuilder();
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

class BrandStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'active')
  static const BrandStatusEnum active = _$brandStatusEnum_active;
  @BuiltValueEnumConst(wireName: r'inactive')
  static const BrandStatusEnum inactive = _$brandStatusEnum_inactive;
  @BuiltValueEnumConst(wireName: r'deleted')
  static const BrandStatusEnum deleted = _$brandStatusEnum_deleted;

  static Serializer<BrandStatusEnum> get serializer => _$brandStatusEnumSerializer;

  const BrandStatusEnum._(String name): super(name);

  static BuiltSet<BrandStatusEnum> get values => _$brandStatusEnumValues;
  static BrandStatusEnum valueOf(String name) => _$brandStatusEnumValueOf(name);
}

