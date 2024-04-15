# dart_dio_sdk.api.AuthApi

## Load the API package
```dart
import 'package:dart_dio_sdk/api.dart';
```

All URIs are relative to *https://api.techcell.cloud*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authControllerConfirmEmail**](AuthApi.md#authcontrollerconfirmemail) | **POST** /api/auth/email/confirm | 
[**authControllerForgotPassword**](AuthApi.md#authcontrollerforgotpassword) | **POST** /api/auth/forgot/password | 
[**authControllerGetMe**](AuthApi.md#authcontrollergetme) | **GET** /api/auth/me | 
[**authControllerLogin**](AuthApi.md#authcontrollerlogin) | **POST** /api/auth/email/login | 
[**authControllerLogout**](AuthApi.md#authcontrollerlogout) | **POST** /api/auth/logout | 
[**authControllerRefresh**](AuthApi.md#authcontrollerrefresh) | **POST** /api/auth/refresh | 
[**authControllerRegister**](AuthApi.md#authcontrollerregister) | **POST** /api/auth/email/register | 
[**authControllerResendConfirmEmail**](AuthApi.md#authcontrollerresendconfirmemail) | **POST** /api/auth/email/resend-confirm | 
[**authControllerResetPassword**](AuthApi.md#authcontrollerresetpassword) | **POST** /api/auth/reset/password | 
[**authControllerUpdateMe**](AuthApi.md#authcontrollerupdateme) | **PATCH** /api/auth/me | 
[**authFacebookControllerLogin**](AuthApi.md#authfacebookcontrollerlogin) | **POST** /api/auth/facebook/login | 
[**authGoogleControllerLogin**](AuthApi.md#authgooglecontrollerlogin) | **POST** /api/auth/google/login | 


# **authControllerConfirmEmail**
> authControllerConfirmEmail(authConfirmEmailDto)



### Example
```dart
import 'package:dart_dio_sdk/api.dart';

final api = DartDioSdk().getAuthApi();
final AuthConfirmEmailDto authConfirmEmailDto = ; // AuthConfirmEmailDto | 

try {
    api.authControllerConfirmEmail(authConfirmEmailDto);
} catch on DioException (e) {
    print('Exception when calling AuthApi->authControllerConfirmEmail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authConfirmEmailDto** | [**AuthConfirmEmailDto**](AuthConfirmEmailDto.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authControllerForgotPassword**
> authControllerForgotPassword(authForgotPasswordDto)



### Example
```dart
import 'package:dart_dio_sdk/api.dart';

final api = DartDioSdk().getAuthApi();
final AuthForgotPasswordDto authForgotPasswordDto = ; // AuthForgotPasswordDto | 

try {
    api.authControllerForgotPassword(authForgotPasswordDto);
} catch on DioException (e) {
    print('Exception when calling AuthApi->authControllerForgotPassword: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authForgotPasswordDto** | [**AuthForgotPasswordDto**](AuthForgotPasswordDto.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authControllerGetMe**
> User authControllerGetMe()



### Example
```dart
import 'package:dart_dio_sdk/api.dart';

final api = DartDioSdk().getAuthApi();

try {
    final response = api.authControllerGetMe();
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->authControllerGetMe: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**User**](User.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authControllerLogin**
> LoginResponseDto authControllerLogin(authEmailLoginDto)



### Example
```dart
import 'package:dart_dio_sdk/api.dart';

final api = DartDioSdk().getAuthApi();
final AuthEmailLoginDto authEmailLoginDto = ; // AuthEmailLoginDto | 

try {
    final response = api.authControllerLogin(authEmailLoginDto);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->authControllerLogin: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authEmailLoginDto** | [**AuthEmailLoginDto**](AuthEmailLoginDto.md)|  | 

### Return type

[**LoginResponseDto**](LoginResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authControllerLogout**
> authControllerLogout()



### Example
```dart
import 'package:dart_dio_sdk/api.dart';

final api = DartDioSdk().getAuthApi();

try {
    api.authControllerLogout();
} catch on DioException (e) {
    print('Exception when calling AuthApi->authControllerLogout: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authControllerRefresh**
> RefreshTokenResponseDto authControllerRefresh(refreshTokenDto)



### Example
```dart
import 'package:dart_dio_sdk/api.dart';

final api = DartDioSdk().getAuthApi();
final RefreshTokenDto refreshTokenDto = ; // RefreshTokenDto | 

try {
    final response = api.authControllerRefresh(refreshTokenDto);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->authControllerRefresh: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **refreshTokenDto** | [**RefreshTokenDto**](RefreshTokenDto.md)|  | 

### Return type

[**RefreshTokenResponseDto**](RefreshTokenResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authControllerRegister**
> authControllerRegister(authSignupDto)



### Example
```dart
import 'package:dart_dio_sdk/api.dart';

final api = DartDioSdk().getAuthApi();
final AuthSignupDto authSignupDto = ; // AuthSignupDto | 

try {
    api.authControllerRegister(authSignupDto);
} catch on DioException (e) {
    print('Exception when calling AuthApi->authControllerRegister: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authSignupDto** | [**AuthSignupDto**](AuthSignupDto.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authControllerResendConfirmEmail**
> authControllerResendConfirmEmail(resendConfirmEmail)



### Example
```dart
import 'package:dart_dio_sdk/api.dart';

final api = DartDioSdk().getAuthApi();
final ResendConfirmEmail resendConfirmEmail = ; // ResendConfirmEmail | 

try {
    api.authControllerResendConfirmEmail(resendConfirmEmail);
} catch on DioException (e) {
    print('Exception when calling AuthApi->authControllerResendConfirmEmail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resendConfirmEmail** | [**ResendConfirmEmail**](ResendConfirmEmail.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authControllerResetPassword**
> authControllerResetPassword(authResetPasswordDto)



### Example
```dart
import 'package:dart_dio_sdk/api.dart';

final api = DartDioSdk().getAuthApi();
final AuthResetPasswordDto authResetPasswordDto = ; // AuthResetPasswordDto | 

try {
    api.authControllerResetPassword(authResetPasswordDto);
} catch on DioException (e) {
    print('Exception when calling AuthApi->authControllerResetPassword: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authResetPasswordDto** | [**AuthResetPasswordDto**](AuthResetPasswordDto.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authControllerUpdateMe**
> authControllerUpdateMe(authUpdateDto)



### Example
```dart
import 'package:dart_dio_sdk/api.dart';

final api = DartDioSdk().getAuthApi();
final AuthUpdateDto authUpdateDto = ; // AuthUpdateDto | 

try {
    api.authControllerUpdateMe(authUpdateDto);
} catch on DioException (e) {
    print('Exception when calling AuthApi->authControllerUpdateMe: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authUpdateDto** | [**AuthUpdateDto**](AuthUpdateDto.md)|  | 

### Return type

void (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authFacebookControllerLogin**
> LoginResponseDto authFacebookControllerLogin(authFacebookLoginDto)



### Example
```dart
import 'package:dart_dio_sdk/api.dart';

final api = DartDioSdk().getAuthApi();
final AuthFacebookLoginDto authFacebookLoginDto = ; // AuthFacebookLoginDto | 

try {
    final response = api.authFacebookControllerLogin(authFacebookLoginDto);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->authFacebookControllerLogin: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authFacebookLoginDto** | [**AuthFacebookLoginDto**](AuthFacebookLoginDto.md)|  | 

### Return type

[**LoginResponseDto**](LoginResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authGoogleControllerLogin**
> LoginResponseDto authGoogleControllerLogin(authGoogleLoginDto)



### Example
```dart
import 'package:dart_dio_sdk/api.dart';

final api = DartDioSdk().getAuthApi();
final AuthGoogleLoginDto authGoogleLoginDto = ; // AuthGoogleLoginDto | 

try {
    final response = api.authGoogleControllerLogin(authGoogleLoginDto);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->authGoogleControllerLogin: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authGoogleLoginDto** | [**AuthGoogleLoginDto**](AuthGoogleLoginDto.md)|  | 

### Return type

[**LoginResponseDto**](LoginResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

