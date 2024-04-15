//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tag.g.dart';

/// Tag
///
/// Properties:
/// * [slug] 
/// * [name] 
/// * [description] 
/// * [status] 
@BuiltValue()
abstract class Tag implements Built<Tag, TagBuilder> {
  @BuiltValueField(wireName: r'slug')
  String get slug;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'description')
  String get description;

  @BuiltValueField(wireName: r'status')
  TagStatusEnum get status;
  // enum statusEnum {  active,  deleted,  };

  Tag._();

  factory Tag([void updates(TagBuilder b)]) = _$Tag;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TagBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Tag> get serializer => _$TagSerializer();
}

class _$TagSerializer implements PrimitiveSerializer<Tag> {
  @override
  final Iterable<Type> types = const [Tag, _$Tag];

  @override
  final String wireName = r'Tag';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Tag object, {
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
      specifiedType: const FullType(TagStatusEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    Tag object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TagBuilder result,
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
            specifiedType: const FullType(TagStatusEnum),
          ) as TagStatusEnum;
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
  Tag deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TagBuilder();
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

class TagStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'active')
  static const TagStatusEnum active = _$tagStatusEnum_active;
  @BuiltValueEnumConst(wireName: r'deleted')
  static const TagStatusEnum deleted = _$tagStatusEnum_deleted;

  static Serializer<TagStatusEnum> get serializer => _$tagStatusEnumSerializer;

  const TagStatusEnum._(String name): super(name);

  static BuiltSet<TagStatusEnum> get values => _$tagStatusEnumValues;
  static TagStatusEnum valueOf(String name) => _$tagStatusEnumValueOf(name);
}

