# dart_dio_sdk.api.ImagesApi

## Load the API package
```dart
import 'package:dart_dio_sdk/api.dart';
```

All URIs are relative to *https://api.techcell.cloud*

Method | HTTP request | Description
------------- | ------------- | -------------
[**imagesControllerGetImageByPublicId**](ImagesApi.md#imagescontrollergetimagebypublicid) | **GET** /api/images/{publicId} | Get image by public id
[**imagesControllerUploadArrayImages**](ImagesApi.md#imagescontrolleruploadarrayimages) | **POST** /api/images | Upload multiple image


# **imagesControllerGetImageByPublicId**
> ImageUploadedResponseDTO imagesControllerGetImageByPublicId(publicId)

Get image by public id

### Example
```dart
import 'package:dart_dio_sdk/api.dart';

final api = DartDioSdk().getImagesApi();
final String publicId = publicId_example; // String | Image public id

try {
    final response = api.imagesControllerGetImageByPublicId(publicId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ImagesApi->imagesControllerGetImageByPublicId: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **publicId** | **String**| Image public id | 

### Return type

[**ImageUploadedResponseDTO**](ImageUploadedResponseDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **imagesControllerUploadArrayImages**
> BuiltList<ImageUploadedResponseDTO> imagesControllerUploadArrayImages(images)

Upload multiple image

### Example
```dart
import 'package:dart_dio_sdk/api.dart';

final api = DartDioSdk().getImagesApi();
final BuiltList<MultipartFile> images = /path/to/file.txt; // BuiltList<MultipartFile> | 

try {
    final response = api.imagesControllerUploadArrayImages(images);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ImagesApi->imagesControllerUploadArrayImages: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **images** | [**BuiltList&lt;MultipartFile&gt;**](MultipartFile.md)|  | [optional] 

### Return type

[**BuiltList&lt;ImageUploadedResponseDTO&gt;**](ImageUploadedResponseDTO.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

