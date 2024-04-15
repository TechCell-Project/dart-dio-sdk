import 'package:test/test.dart';
import 'package:dart_dio_sdk/dart_dio_sdk.dart';


/// tests for UsersApi
void main() {
  final instance = DartDioSdk().getUsersApi();

  group(UsersApi, () {
    //Future<User> usersControllerCreate(CreateUserDto createUserDto) async
    test('test usersControllerCreate', () async {
      // TODO
    });

    //Future<User> usersControllerGetUserId(String id) async
    test('test usersControllerGetUserId', () async {
      // TODO
    });

    //Future<UserInfinityPaginationResult> usersControllerGetUsers({ num page, num limit, String filters, String sort }) async
    test('test usersControllerGetUsers', () async {
      // TODO
    });

    //Future<User> usersControllerUpdateUserMnt(String id, UpdateUserMntDto updateUserMntDto) async
    test('test usersControllerUpdateUserMnt', () async {
      // TODO
    });

  });
}
