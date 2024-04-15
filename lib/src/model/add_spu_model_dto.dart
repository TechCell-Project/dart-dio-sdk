//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:dart_dio_sdk/src/model/spu_model_schema_dto.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'add_spu_model_dto.g.dart';

/// AddSpuModelDto
///
/// Properties:
/// * [models] - Models
@BuiltValue()
abstract class AddSpuModelDto implements Built<AddSpuModelDto, AddSpuModelDtoBuilder> {
  /// Models
  @BuiltValueField(wireName: r'models')
  BuiltList<SPUModelSchemaDto>? get models;

  AddSpuModelDto._();

  factory AddSpuModelDto([void updates(AddSpuModelDtoBuilder b)]) = _$AddSpuModelDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AddSpuModelDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AddSpuModelDto> get serializer => _$AddSpuModelDtoSerializer();
}

class _$AddSpuModelDtoSerializer implements PrimitiveSerializer<AddSpuModelDto> {
  @override
  final Iterable<Type> types = const [AddSpuModelDto, _$AddSpuModelDto];

  @override
  final String wireName = r'AddSpuModelDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AddSpuModelDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.models != null) {
      yield r'models';
      yield serializers.serialize(
        object.models,
        specifiedType: const FullType(BuiltList, [FullType(SPUModelSchemaDto)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AddSpuModelDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AddSpuModelDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'models':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SPUModelSchemaDto)]),
          ) as BuiltList<SPUModelSchemaDto>;
          result.models.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AddSpuModelDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AddSpuModelDtoBuilder();
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

