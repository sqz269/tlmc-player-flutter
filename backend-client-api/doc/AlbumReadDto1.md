# BackendClientApi.model.AlbumReadDto1

## Load the model package
```dart
import 'package:BackendClientApi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**albumName** | [**LocalizedField1**](LocalizedField1.md) |  | [optional] 
**releaseDate** | [**DateTime**](DateTime.md) |  | [optional] 
**releaseConvention** | **String** |  | [optional] 
**catalogNumber** | **String** |  | [optional] 
**numberOfDiscs** | **int** |  | [optional] 
**website** | **List<String>** |  | [optional] [default to const []]
**albumArtist** | [**List<CircleReadDto1>**](CircleReadDto1.md) |  | [optional] [default to const []]
**dataSource** | **List<String>** |  | [optional] [default to const []]
**tracks** | [**List<TrackReadDto1>**](TrackReadDto1.md) |  | [optional] [default to const []]
**thumbnail** | [**ThumbnailReadDto**](ThumbnailReadDto.md) |  | [optional] 
**otherFiles** | [**List<AssetReadDto>**](AssetReadDto.md) |  | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


