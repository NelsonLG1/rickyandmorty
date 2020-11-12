import 'package:rickyandmorty/domain/entities/location.dart';

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}

enum Gender { MALE, FEMALE, UNKNOWN }
final genderValues = EnumValues(
    {"Female": Gender.FEMALE, "Male": Gender.MALE, "unknown": Gender.UNKNOWN});

class Character {
  int id;
  String name;
  String image;
  String url;
  String status;
  String type;
  Gender gender;
  Location origin;
  Location location;
  List<String> episode;
  DateTime created;
  Character({this.id, this.name, this.image, this.url, this.status, this.type,this.gender,this.origin,this.location,this.episode,this.created});

  factory Character.fromJson(Map<String, dynamic> json) {
    return Character(
      id: json['id'] ?? 0,
      name: json['name'] ?? "",
      image: json['image'] ?? "",
      url: json['url'] ?? "",
      status: "",
      type: json["type"]?? "",
      gender: genderValues.map[json["gender"]] ?? "",
      origin: Location.fromJson(json["origin"]),
      location: Location.fromJson(json["location"]),
      episode: List<String>.from(json["episode"].map((x) => x)),
      created: DateTime.parse(json["created"]),
    );
  }

  static List<Character> fromJSONList(List<dynamic> jsonlist) {
    List<Character> items = List<Character>();
    jsonlist.forEach((dynamic json) {
      items.add(Character.fromJson(json));
    });
    return items;
  }
}
