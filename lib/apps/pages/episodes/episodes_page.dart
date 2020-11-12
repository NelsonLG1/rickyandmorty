import 'package:flutter/material.dart';

import 'widgets/list_episode.dart';

class EpisodesPage extends StatelessWidget {
  static String routeName = 'episodes';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Episodios'),
        ),
        body: Padding(padding: EdgeInsets.all(20), child: ListEpisodes()));
  }
}
