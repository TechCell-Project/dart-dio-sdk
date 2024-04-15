//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_attribute_dto.g.dart';

/// UpdateAttributeDto
///
/// Properties:
/// * [name] - Attribute name, can be translated
/// * [description] 
/// * [status] - Attribute status
@BuiltValue()
abstract class UpdateAttributeDto implements Built<UpdateAttributeDto, UpdateAttributeDtoBuilder> {
  /// Attribute name, can be translated
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'description')
  String? get description;

  /// Attribute status
  @BuiltValueField(wireName: r'status')
  UpdateAttributeDtoStatusEnum? get status;
  // enum statusEnum {  available,  deleted,  };

  UpdateAttributeDto._();

  factory UpdateAttributeDto([void updates(UpdateAttributeDtoBuilder b)]) = _$UpdateAttributeDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateAttributeDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateAttributeDto> get serializer => _$UpdateAttributeDtoSerializer();
}

class _$UpdateAttributeDtoSerializer implements PrimitiveSerializer<UpdateAttributeDto> {
  @override
  final Iterable<Type> types = const [UpdateAttributeDto, _$UpdateAttributeDto];

  @override
  final String wireName = r'UpdateAttributeDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateAttributeDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
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
        specifiedType: const FullType(UpdateAttributeDtoStatusEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateAttributeDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateAttributeDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
            specifiedType: const FullType(UpdateAttributeDtoStatusEnum),
          ) as UpdateAttributeDtoStatusEnum;
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
  UpdateAttributeDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateAttributeDtoBuilder();
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

class UpdateAttributeDtoStatusEnum extends EnumClass {

  /// Attribute status
  @BuiltValueEnumConst(wireName: r'available')
  static const UpdateAttributeDtoStatusEnum available = _$updateAttributeDtoStatusEnum_available;
  /// Attribute status
  @BuiltValueEnumConst(wireName: r'deleted')
  static const UpdateAttributeDtoStatusEnum deleted = _$updateAttributeDtoStatusEnum_deleted;

  static Serializer<UpdateAttributeDtoStatusEnum> get serializer => _$updateAttributeDtoStatusEnumSerializer;

  const UpdateAttributeDtoStatusEnum._(String name): super(name);

  static BuiltSet<UpdateAttributeDtoStatusEnum> get values => _$updateAttributeDtoStatusEnumValues;
  static UpdateAttributeDtoStatusEnum valueOf(String name) => _$updateAttributeDtoStatusEnumValueOf(name);
}

