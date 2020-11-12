class Episode {
  int id;
  String name;
  String airDate;
  String episode;
  String url;
  DateTime created;

  Episode(
      {this.id, this.name, this.airDate, this.episode, this.url, this.created});

  factory Episode.fromJson(Map<String, dynamic> json) {
    return Episode(
      id: json['id'] ?? 0,
      name: json['name'] ?? "",
      airDate: json['air_date'] ?? "",
      episode: json['episode'] ?? "",
      url: json['url'] ?? "",
      created: DateTime.parse(json['created']) ?? "",
    );
  }

  static List<Episode> fromJSONList(List<dynamic> jsonlist) {
    List<Episode> items = List<Episode>();
    jsonlist.forEach((dynamic json) {
      items.add(Episode.fromJson(json));
    });
    return items;
  }
}
