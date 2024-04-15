# dart_dio_sdk.api.SkusApi

## Load the API package
```dart
import 'package:dart_dio_sdk/api.dart';
```

All URIs are relative to *https://api.techcell.cloud*

Method | HTTP request | Description
------------- | ------------- | -------------
[**skusControllerAddSerialNumbers**](SkusApi.md#skuscontrolleraddserialnumbers) | **POST** /api/skus/{id}/serial-numbers | 
[**skusControllerCreateSku**](SkusApi.md#skuscontrollercreatesku) | **POST** /api/skus | 
[**skusControllerGetSkuById**](SkusApi.md#skuscontrollergetskubyid) | **GET** /api/skus/{id} | 
[**skusControllerGetSkus**](SkusApi.md#skuscontrollergetskus) | **GET** /api/skus | 
[**skusControllerUpdateSkuById**](SkusApi.md#skuscontrollerupdateskubyid) | **PATCH** /api/skus/{id} | 


# **skusControllerAddSerialNumbers**
> AddSerialNumberResponseDto skusControllerAddSerialNumbers(id, addSerialNumberDto)



### Example
```dart
import 'package:dart_dio_sdk/api.dart';

final api = DartDioSdk().getSkusApi();
final String id = 66164ef6c4165e4833949722; // String | 
final AddSerialNumberDto addSerialNumberDto = ; // AddSerialNumberDto | 

try {
    final response = api.skusControllerAddSerialNumbers(id, addSerialNumberDto);
    print(response);
} catch on DioException (e) {
    print('Exception when calling SkusApi->skusControllerAddSerialNumbers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **addSerialNumberDto** | [**AddSerialNumberDto**](AddSerialNumberDto.md)|  | 

### Return type

[**AddSerialNumberResponseDto**](AddSerialNumberResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **skusControllerCreateSku**
> skusControllerCreateSku(createSkuDto)



### Example
```dart
import 'package:dart_dio_sdk/api.dart';

final api = DartDioSdk().getSkusApi();
final CreateSkuDto createSkuDto = ; // CreateSkuDto | 

try {
    api.skusControllerCreateSku(createSkuDto);
} catch on DioException (e) {
    print('Exception when calling SkusApi->skusControllerCreateSku: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createSkuDto** | [**CreateSkuDto**](CreateSkuDto.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **skusControllerGetSkuById**
> SKU skusControllerGetSkuById(id)



### Example
```dart
import 'package:dart_dio_sdk/api.dart';

final api = DartDioSdk().getSkusApi();
final String id = 66164ef6c4165e4833949722; // String | 

try {
    final response = api.skusControllerGetSkuById(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling SkusApi->skusControllerGetSkuById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**SKU**](SKU.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **skusControllerGetSkus**
> SkuInfinityPaginationResult skusControllerGetSkus()



### Example
```dart
import 'package:dart_dio_sdk/api.dart';

final api = DartDioSdk().getSkusApi();

try {
    final response = api.skusControllerGetSkus();
    print(response);
} catch on DioException (e) {
    print('Exception when calling SkusApi->skusControllerGetSkus: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SkuInfinityPaginationResult**](SkuInfinityPaginationResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **skusControllerUpdateSkuById**
> skusControllerUpdateSkuById(id, createSkuDto)



### Example
```dart
import 'package:dart_dio_sdk/api.dart';

final api = DartDioSdk().getSkusApi();
final String id = 66164ef6c4165e4833949722; // String | 
final CreateSkuDto createSkuDto = ; // CreateSkuDto | 

try {
    api.skusControllerUpdateSkuById(id, createSkuDto);
} catch on DioException (e) {
    print('Exception when calling SkusApi->skusControllerUpdateSkuById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **createSkuDto** | [**CreateSkuDto**](CreateSkuDto.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

