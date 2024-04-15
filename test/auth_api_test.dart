import 'package:test/test.dart';
import 'package:dart_dio_sdk/dart_dio_sdk.dart';


/// tests for AuthApi
void main() {
  final instance = DartDioSdk().getAuthApi();

  group(AuthApi, () {
    //Future authControllerConfirmEmail(AuthConfirmEmailDto authConfirmEmailDto) async
    test('test authControllerConfirmEmail', () async {
      // TODO
    });

    //Future authControllerForgotPassword(AuthForgotPasswordDto authForgotPasswordDto) async
    test('test authControllerForgotPassword', () async {
      // TODO
    });

    //Future<User> authControllerGetMe() async
    test('test authControllerGetMe', () async {
      // TODO
    });

    //Future<LoginResponseDto> authControllerLogin(AuthEmailLoginDto authEmailLoginDto) async
    test('test authControllerLogin', () async {
      // TODO
    });

    //Future authControllerLogout() async
    test('test authControllerLogout', () async {
      // TODO
    });

    //Future<RefreshTokenResponseDto> authControllerRefresh(RefreshTokenDto refreshTokenDto) async
    test('test authControllerRefresh', () async {
      // TODO
    });

    //Future authControllerRegister(AuthSignupDto authSignupDto) async
    test('test authControllerRegister', () async {
      // TODO
    });

    //Future authControllerResendConfirmEmail(ResendConfirmEmail resendConfirmEmail) async
    test('test authControllerResendConfirmEmail', () async {
      // TODO
    });

    //Future authControllerResetPassword(AuthResetPasswordDto authResetPasswordDto) async
    test('test authControllerResetPassword', () async {
      // TODO
    });

    //Future authControllerUpdateMe(AuthUpdateDto authUpdateDto) async
    test('test authControllerUpdateMe', () async {
      // TODO
    });

    //Future<LoginResponseDto> authFacebookControllerLogin(AuthFacebookLoginDto authFacebookLoginDto) async
    test('test authFacebookControllerLogin', () async {
      // TODO
    });

    //Future<LoginResponseDto> authGoogleControllerLogin(AuthGoogleLoginDto authGoogleLoginDto) async
    test('test authGoogleControllerLogin', () async {
      // TODO
    });

  });
}
