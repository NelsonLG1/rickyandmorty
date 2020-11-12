import 'package:flutter/material.dart';
import 'package:rickyandmorty/apps/widgets/loading.dart';
import 'package:rickyandmorty/data/remote/character_provider.dart';
import 'package:rickyandmorty/domain/entities/character.dart';

import 'list_item_character.dart';

class ListCharacters extends StatelessWidget {
  const ListCharacters({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder<List<Character>>(
        future: CharacterApiProvider().getCharacters(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          final List<Character> characters = snapshot.data;

          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: characters.length,
              itemBuilder: (BuildContext ctxt, int index) {
                return ListItemCharacter(character: characters[index]);
              },
            );
          }
        return LoadingHome();
        },
      ),
    );
  }
}
