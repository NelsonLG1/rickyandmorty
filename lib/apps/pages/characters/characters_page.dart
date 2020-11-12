import 'package:flutter/material.dart';

import 'widgets/list_character.dart';

class CharactersPage extends StatelessWidget {
  static String routeName = 'characters';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Personajes'),
        ),
        body: Padding(padding: EdgeInsets.all(10), child: ListCharacters()));
  }
}
