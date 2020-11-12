import 'package:flutter/material.dart';
import 'package:rickyandmorty/apps/utils/colors.dart';
import 'package:rickyandmorty/domain/entities/character.dart';

class ListItemCharacter extends StatelessWidget {
  
  const ListItemCharacter({
    Key key,
    @required this.character,
  }) : super(key: key);

  final Character character;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
          margin: EdgeInsets.only(bottom: 20),
          elevation: 10,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: appSecondColor,
              width: 1,
            ),
          ),
          child: Column(
            children: [
              Image.network(character.image),
              Text(
                character.name,
                style: TextStyle(fontSize: 30),
              )
            ],
          )),
    );
  }
}
