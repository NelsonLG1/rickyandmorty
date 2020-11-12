import 'package:flutter/material.dart';
import 'package:rickyandmorty/apps/utils/colors.dart';
import 'package:rickyandmorty/domain/entities/episode.dart';

class ListItemEpisode extends StatelessWidget {
  
  const ListItemEpisode({
    Key key,
    @required this.episode,
  }) : super(key: key);

  final Episode episode;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 10, left: 10),
      child: Card(
          margin: EdgeInsets.only(bottom: 20),
          elevation: 10,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: appSecondColor,
              width: 1,
            ),
          ),
          child: ListTile(
            title: Text(episode.name, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20 ),),
            subtitle:Text(episode.airDate.toString(), style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20 ),) ,
            trailing: Text(episode.episode, style: TextStyle(fontStyle: FontStyle.italic)),
            contentPadding: EdgeInsets.all(20),
          ) ),
    );
  }
}
