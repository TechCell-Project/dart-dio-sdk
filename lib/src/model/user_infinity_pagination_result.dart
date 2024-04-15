//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:dart_dio_sdk/src/model/user.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_infinity_pagination_result.g.dart';

/// UserInfinityPaginationResult
///
/// Properties:
/// * [data] 
/// * [hasNextPage] 
@BuiltValue()
abstract class UserInfinityPaginationResult implements Built<UserInfinityPaginationResult, UserInfinityPaginationResultBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<User> get data;

  @BuiltValueField(wireName: r'hasNextPage')
  bool get hasNextPage;

  UserInfinityPaginationResult._();

  factory UserInfinityPaginationResult([void updates(UserInfinityPaginationResultBuilder b)]) = _$UserInfinityPaginationResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserInfinityPaginationResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserInfinityPaginationResult> get serializer => _$UserInfinityPaginationResultSerializer();
}

class _$UserInfinityPaginationResultSerializer implements PrimitiveSerializer<UserInfinityPaginationResult> {
  @override
  final Iterable<Type> types = const [UserInfinityPaginationResult, _$UserInfinityPaginationResult];

  @override
  final String wireName = r'UserInfinityPaginationResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserInfinityPaginationResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType: const FullType(BuiltList, [FullType(User)]),
    );
    yield r'hasNextPage';
    yield serializers.serialize(
      object.hasNextPage,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    UserInfinityPaginationResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UserInfinityPaginationResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(User)]),
          ) as BuiltList<User>;
          result.data.replace(valueDes);
          break;
        case r'hasNextPage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hasNextPage = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserInfinityPaginationResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserInfinityPaginationResultBuilder();
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

