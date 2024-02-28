import 'package:BackendClientApi/api.dart';
import 'package:get/get.dart';

abstract class IPlaylistService {
  Rx<bool> get isReady;

  RxList<PlaylistReadDto> get playlists;
  Rx<PlaylistReadDto> get favoriate;
  Rx<PlaylistReadDto> get history;
  Rx<PlaylistReadDto> get queue;

  Future<List<PlaylistReadDto>> getPlaylists();
  Future<PlaylistReadDto> getPlaylist(String id);
  Future<List<TrackReadDto>> getPlaylistTracks(String id);
  Future<PlaylistReadDto> createPlaylist(
      String name, PlaylistVisibility visibility);
  Future<void> updatePlaylist(
      String id, String name, PlaylistVisibility visibility);
  Future<void> deletePlaylist(String id);
  Future<void> addTrackToPlaylist(String playlistId, String trackId);
  Future<void> addTrackToFavoriate(String trackId);
  Future<void> addTrackToHistory(String trackId);
  Future<void> removeTrackFromFavoriate(String trackId);
  Future<void> removeTrackFromPlaylist(String playlistId, String trackId);
}
