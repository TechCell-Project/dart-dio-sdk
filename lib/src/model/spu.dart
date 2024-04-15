//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:dart_dio_sdk/src/model/spu_model_schema.dart';
import 'package:built_collection/built_collection.dart';
import 'package:dart_dio_sdk/src/model/attribute_in_product_schema.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'spu.g.dart';

/// SPU
///
/// Properties:
/// * [brandId] 
/// * [slug] 
/// * [name] 
/// * [description] 
/// * [commonAttributes] 
/// * [models] 
/// * [status] 
@BuiltValue()
abstract class SPU implements Built<SPU, SPUBuilder> {
  @BuiltValueField(wireName: r'brandId')
  String get brandId;

  @BuiltValueField(wireName: r'slug')
  String get slug;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'commonAttributes')
  BuiltList<AttributeInProductSchema> get commonAttributes;

  @BuiltValueField(wireName: r'models')
  BuiltList<SPUModelSchema> get models;

  @BuiltValueField(wireName: r'status')
  SPUStatusEnum get status;
  // enum statusEnum {  available,  deleted,  };

  SPU._();

  factory SPU([void updates(SPUBuilder b)]) = _$SPU;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SPUBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SPU> get serializer => _$SPUSerializer();
}

class _$SPUSerializer implements PrimitiveSerializer<SPU> {
  @override
  final Iterable<Type> types = const [SPU, _$SPU];

  @override
  final String wireName = r'SPU';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SPU object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'brandId';
    yield serializers.serialize(
      object.brandId,
      specifiedType: const FullType(String),
    );
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
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    yield r'commonAttributes';
    yield serializers.serialize(
      object.commonAttributes,
      specifiedType: const FullType(BuiltList, [FullType(AttributeInProductSchema)]),
    );
    yield r'models';
    yield serializers.serialize(
      object.models,
      specifiedType: const FullType(BuiltList, [FullType(SPUModelSchema)]),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(SPUStatusEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SPU object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SPUBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'brandId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.brandId = valueDes;
          break;
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
        case r'commonAttributes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(AttributeInProductSchema)]),
          ) as BuiltList<AttributeInProductSchema>;
          result.commonAttributes.replace(valueDes);
          break;
        case r'models':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SPUModelSchema)]),
          ) as BuiltList<SPUModelSchema>;
          result.models.replace(valueDes);
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SPUStatusEnum),
          ) as SPUStatusEnum;
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
  SPU deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SPUBuilder();
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

class SPUStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'available')
  static const SPUStatusEnum available = _$sPUStatusEnum_available;
  @BuiltValueEnumConst(wireName: r'deleted')
  static const SPUStatusEnum deleted = _$sPUStatusEnum_deleted;

  static Serializer<SPUStatusEnum> get serializer => _$sPUStatusEnumSerializer;

  const SPUStatusEnum._(String name): super(name);

  static BuiltSet<SPUStatusEnum> get values => _$sPUStatusEnumValues;
  static SPUStatusEnum valueOf(String name) => _$sPUStatusEnumValueOf(name);
}

