# BackendClientApi.api.PlaylistItemApi

## Load the API package
```dart
import 'package:BackendClientApi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addPlaylistItemToPlaylist**](PlaylistItemApi.md#addplaylistitemtoplaylist) | **POST** /api/playlistItem | 
[**deletePlaylistItemFromPlaylist**](PlaylistItemApi.md#deleteplaylistitemfromplaylist) | **DELETE** /api/playlistItem | 
[**incrementPlayCount**](PlaylistItemApi.md#incrementplaycount) | **POST** /api/playlistItem/inc | 


# **addPlaylistItemToPlaylist**
> PlaylistItemReadDto addPlaylistItemToPlaylist(playlistItemAddRequest)



### Example
```dart
import 'package:BackendClientApi/api.dart';
// TODO Configure HTTP Bearer authorization: Bearer
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer').setAccessToken(yourTokenGeneratorFunction);

final api_instance = PlaylistItemApi();
final playlistItemAddRequest = PlaylistItemAddRequest(); // PlaylistItemAddRequest | 

try {
    final result = api_instance.addPlaylistItemToPlaylist(playlistItemAddRequest);
    print(result);
} catch (e) {
    print('Exception when calling PlaylistItemApi->addPlaylistItemToPlaylist: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **playlistItemAddRequest** | [**PlaylistItemAddRequest**](PlaylistItemAddRequest.md)|  | [optional] 

### Return type

[**PlaylistItemReadDto**](PlaylistItemReadDto.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deletePlaylistItemFromPlaylist**
> deletePlaylistItemFromPlaylist(playlistItemDeleteRequest)



### Example
```dart
import 'package:BackendClientApi/api.dart';
// TODO Configure HTTP Bearer authorization: Bearer
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer').setAccessToken(yourTokenGeneratorFunction);

final api_instance = PlaylistItemApi();
final playlistItemDeleteRequest = PlaylistItemDeleteRequest(); // PlaylistItemDeleteRequest | 

try {
    api_instance.deletePlaylistItemFromPlaylist(playlistItemDeleteRequest);
} catch (e) {
    print('Exception when calling PlaylistItemApi->deletePlaylistItemFromPlaylist: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **playlistItemDeleteRequest** | [**PlaylistItemDeleteRequest**](PlaylistItemDeleteRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **incrementPlayCount**
> incrementPlayCount(playlistId, trackId)



### Example
```dart
import 'package:BackendClientApi/api.dart';
// TODO Configure HTTP Bearer authorization: Bearer
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('Bearer').setAccessToken(yourTokenGeneratorFunction);

final api_instance = PlaylistItemApi();
final playlistId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final trackId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    api_instance.incrementPlayCount(playlistId, trackId);
} catch (e) {
    print('Exception when calling PlaylistItemApi->incrementPlayCount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **playlistId** | **String**|  | [optional] 
 **trackId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

