# dart_dio_sdk.api.UsersApi

## Load the API package
```dart
import 'package:dart_dio_sdk/api.dart';
```

All URIs are relative to *https://api.techcell.cloud*

Method | HTTP request | Description
------------- | ------------- | -------------
[**usersControllerCreate**](UsersApi.md#userscontrollercreate) | **POST** /api/users | 
[**usersControllerGetUserId**](UsersApi.md#userscontrollergetuserid) | **GET** /api/users/{id} | 
[**usersControllerGetUsers**](UsersApi.md#userscontrollergetusers) | **GET** /api/users | 
[**usersControllerUpdateUserMnt**](UsersApi.md#userscontrollerupdateusermnt) | **PATCH** /api/users/{id} | 


# **usersControllerCreate**
> User usersControllerCreate(createUserDto)



### Example
```dart
import 'package:dart_dio_sdk/api.dart';

final api = DartDioSdk().getUsersApi();
final CreateUserDto createUserDto = ; // CreateUserDto | 

try {
    final response = api.usersControllerCreate(createUserDto);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UsersApi->usersControllerCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createUserDto** | [**CreateUserDto**](CreateUserDto.md)|  | 

### Return type

[**User**](User.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersControllerGetUserId**
> User usersControllerGetUserId(id)



### Example
```dart
import 'package:dart_dio_sdk/api.dart';

final api = DartDioSdk().getUsersApi();
final String id = 66164ef6c4165e4833949722; // String | 

try {
    final response = api.usersControllerGetUserId(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UsersApi->usersControllerGetUserId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**User**](User.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersControllerGetUsers**
> UserInfinityPaginationResult usersControllerGetUsers(page, limit, filters, sort)



### Example
```dart
import 'package:dart_dio_sdk/api.dart';

final api = DartDioSdk().getUsersApi();
final num page = 8.14; // num | 
final num limit = 8.14; // num | 
final String filters = filters_example; // String | JSON string of FilterUserDto
final String sort = sort_example; // String | JSON string of SortUserDto

try {
    final response = api.usersControllerGetUsers(page, limit, filters, sort);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UsersApi->usersControllerGetUsers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **num**|  | [optional] 
 **limit** | **num**|  | [optional] 
 **filters** | **String**| JSON string of FilterUserDto | [optional] 
 **sort** | **String**| JSON string of SortUserDto | [optional] 

### Return type

[**UserInfinityPaginationResult**](UserInfinityPaginationResult.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersControllerUpdateUserMnt**
> User usersControllerUpdateUserMnt(id, updateUserMntDto)



### Example
```dart
import 'package:dart_dio_sdk/api.dart';

final api = DartDioSdk().getUsersApi();
final String id = 66164ef6c4165e4833949722; // String | 
final UpdateUserMntDto updateUserMntDto = ; // UpdateUserMntDto | 

try {
    final response = api.usersControllerUpdateUserMnt(id, updateUserMntDto);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UsersApi->usersControllerUpdateUserMnt: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **updateUserMntDto** | [**UpdateUserMntDto**](UpdateUserMntDto.md)|  | 

### Return type

[**User**](User.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

