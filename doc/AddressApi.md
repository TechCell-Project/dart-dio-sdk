# dart_dio_sdk.api.AddressApi

## Load the API package
```dart
import 'package:dart_dio_sdk/api.dart';
```

All URIs are relative to *https://api.techcell.cloud*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addressControllerGetDistricts**](AddressApi.md#addresscontrollergetdistricts) | **GET** /api/address/districts/{province_id} | Get districts
[**addressControllerGetProvinces**](AddressApi.md#addresscontrollergetprovinces) | **GET** /api/address/provinces | Get provinces
[**addressControllerGetWards**](AddressApi.md#addresscontrollergetwards) | **GET** /api/address/wards/{district_id} | Get wards


# **addressControllerGetDistricts**
> BuiltList<GhnDistrictDTO> addressControllerGetDistricts(provinceId)

Get districts

### Example
```dart
import 'package:dart_dio_sdk/api.dart';

final api = DartDioSdk().getAddressApi();
final num provinceId = 201; // num | Mã tỉnh thành

try {
    final response = api.addressControllerGetDistricts(provinceId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AddressApi->addressControllerGetDistricts: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **provinceId** | **num**| Mã tỉnh thành | 

### Return type

[**BuiltList&lt;GhnDistrictDTO&gt;**](GhnDistrictDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addressControllerGetProvinces**
> BuiltList<GhnProvinceDTO> addressControllerGetProvinces()

Get provinces

### Example
```dart
import 'package:dart_dio_sdk/api.dart';

final api = DartDioSdk().getAddressApi();

try {
    final response = api.addressControllerGetProvinces();
    print(response);
} catch on DioException (e) {
    print('Exception when calling AddressApi->addressControllerGetProvinces: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;GhnProvinceDTO&gt;**](GhnProvinceDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addressControllerGetWards**
> BuiltList<GhnWardDTO> addressControllerGetWards(districtId)

Get wards

### Example
```dart
import 'package:dart_dio_sdk/api.dart';

final api = DartDioSdk().getAddressApi();
final num districtId = 1490; // num | Mã quận huyện

try {
    final response = api.addressControllerGetWards(districtId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AddressApi->addressControllerGetWards: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **districtId** | **num**| Mã quận huyện | 

### Return type

[**BuiltList&lt;GhnWardDTO&gt;**](GhnWardDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

