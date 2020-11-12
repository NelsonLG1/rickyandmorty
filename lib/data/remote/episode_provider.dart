import 'package:rickyandmorty/domain/entities/episode.dart';
import 'package:rickyandmorty/managers/http_manager.dart';

class EpisodesApiProvider {
  final HttpManager httpManager = HttpManager();
  EpisodesApiProvider._privateConstructor();

  static final EpisodesApiProvider _instance =
      EpisodesApiProvider._privateConstructor();

  factory EpisodesApiProvider() {
    return _instance;
  }

  Future<List<Episode>> getEpisodes() async {
    var response = await httpManager.get('episode');
    List responseJson = response['results'];
    var episodesList = Episode.fromJSONList(responseJson);
    return episodesList;
  }

}
