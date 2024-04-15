//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'block_activity_log_dto.g.dart';

/// BlockActivityLogDto
///
/// Properties:
/// * [reason] 
/// * [note] 
@BuiltValue()
abstract class BlockActivityLogDto implements Built<BlockActivityLogDto, BlockActivityLogDtoBuilder> {
  @BuiltValueField(wireName: r'reason')
  String get reason;

  @BuiltValueField(wireName: r'note')
  String? get note;

  BlockActivityLogDto._();

  factory BlockActivityLogDto([void updates(BlockActivityLogDtoBuilder b)]) = _$BlockActivityLogDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BlockActivityLogDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BlockActivityLogDto> get serializer => _$BlockActivityLogDtoSerializer();
}

class _$BlockActivityLogDtoSerializer implements PrimitiveSerializer<BlockActivityLogDto> {
  @override
  final Iterable<Type> types = const [BlockActivityLogDto, _$BlockActivityLogDto];

  @override
  final String wireName = r'BlockActivityLogDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BlockActivityLogDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'reason';
    yield serializers.serialize(
      object.reason,
      specifiedType: const FullType(String),
    );
    if (object.note != null) {
      yield r'note';
      yield serializers.serialize(
        object.note,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BlockActivityLogDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BlockActivityLogDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.reason = valueDes;
          break;
        case r'note':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.note = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BlockActivityLogDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BlockActivityLogDtoBuilder();
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

