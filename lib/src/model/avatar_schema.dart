//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'avatar_schema.g.dart';

/// AvatarSchema
///
/// Properties:
/// * [publicId] 
/// * [url] 
@BuiltValue()
abstract class AvatarSchema implements Built<AvatarSchema, AvatarSchemaBuilder> {
  @BuiltValueField(wireName: r'publicId')
  String get publicId;

  @BuiltValueField(wireName: r'url')
  String get url;

  AvatarSchema._();

  factory AvatarSchema([void updates(AvatarSchemaBuilder b)]) = _$AvatarSchema;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AvatarSchemaBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AvatarSchema> get serializer => _$AvatarSchemaSerializer();
}

class _$AvatarSchemaSerializer implements PrimitiveSerializer<AvatarSchema> {
  @override
  final Iterable<Type> types = const [AvatarSchema, _$AvatarSchema];

  @override
  final String wireName = r'AvatarSchema';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AvatarSchema object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'publicId';
    yield serializers.serialize(
      object.publicId,
      specifiedType: const FullType(String),
    );
    yield r'url';
    yield serializers.serialize(
      object.url,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AvatarSchema object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AvatarSchemaBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'publicId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.publicId = valueDes;
          break;
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.url = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AvatarSchema deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AvatarSchemaBuilder();
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

