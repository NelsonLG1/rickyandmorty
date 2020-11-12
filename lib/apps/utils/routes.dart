import 'package:flutter/material.dart';
import 'package:rickyandmorty/apps/pages/characters/characters_page.dart';
import 'package:rickyandmorty/apps/pages/episodes/episodes_page.dart';
import 'package:rickyandmorty/apps/pages/home/home_page.dart';

final Map<String, WidgetBuilder> appRoutes = {
  HomePage.routeName: (_) => HomePage(),
  EpisodesPage.routeName: (_) => EpisodesPage(),
  CharactersPage.routeName: (_) => CharactersPage(),
  // CharacterDetail.routeName: (_) => CharacterDetail()
};
