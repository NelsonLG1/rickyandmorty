import 'package:rickyandmorty/domain/entities/character.dart';
import 'package:rickyandmorty/managers/http_manager.dart';

class CharacterApiProvider {
  final HttpManager httpManager = HttpManager();
  CharacterApiProvider._privateConstructor();

  static final CharacterApiProvider _instance =
      CharacterApiProvider._privateConstructor();

  factory CharacterApiProvider() {
    return _instance;
  }

  Future<List<Character>> getCharacters() async {
    var response = await httpManager.get('character');
    List responseJson = response['results'];
    var characterList = Character.fromJSONList(responseJson);
    return characterList;
  }

  Future getCharacter(String idCharacter) async {
    return await httpManager.get('character/$idCharacter');
  }
}
