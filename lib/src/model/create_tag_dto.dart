//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_tag_dto.g.dart';

/// CreateTagDto
///
/// Properties:
/// * [name] - Tên nhãn
/// * [description] - Mô tả
/// * [status] 
@BuiltValue()
abstract class CreateTagDto implements Built<CreateTagDto, CreateTagDtoBuilder> {
  /// Tên nhãn
  @BuiltValueField(wireName: r'name')
  String get name;

  /// Mô tả
  @BuiltValueField(wireName: r'description')
  String get description;

  @BuiltValueField(wireName: r'status')
  CreateTagDtoStatusEnum? get status;
  // enum statusEnum {  active,  deleted,  };

  CreateTagDto._();

  factory CreateTagDto([void updates(CreateTagDtoBuilder b)]) = _$CreateTagDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateTagDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateTagDto> get serializer => _$CreateTagDtoSerializer();
}

class _$CreateTagDtoSerializer implements PrimitiveSerializer<CreateTagDto> {
  @override
  final Iterable<Type> types = const [CreateTagDto, _$CreateTagDto];

  @override
  final String wireName = r'CreateTagDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateTagDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(CreateTagDtoStatusEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateTagDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateTagDtoBuilder result,
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
            specifiedType: const FullType(CreateTagDtoStatusEnum),
          ) as CreateTagDtoStatusEnum;
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
  CreateTagDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateTagDtoBuilder();
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

class CreateTagDtoStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'active')
  static const CreateTagDtoStatusEnum active = _$createTagDtoStatusEnum_active;
  @BuiltValueEnumConst(wireName: r'deleted')
  static const CreateTagDtoStatusEnum deleted = _$createTagDtoStatusEnum_deleted;

  static Serializer<CreateTagDtoStatusEnum> get serializer => _$createTagDtoStatusEnumSerializer;

  const CreateTagDtoStatusEnum._(String name): super(name);

  static BuiltSet<CreateTagDtoStatusEnum> get values => _$createTagDtoStatusEnumValues;
  static CreateTagDtoStatusEnum valueOf(String name) => _$createTagDtoStatusEnumValueOf(name);
}

