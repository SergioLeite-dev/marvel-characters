import 'package:marvel_characters/models/resource_model.dart';
import 'package:marvel_characters/models/stories_model.dart';
import 'package:marvel_characters/models/thumbnail_model.dart';
import 'package:marvel_characters/models/url_model.dart';

class Character {
  int? id;
  String? name;
  String? description;
  String? modified;
  Thumbnail? thumbnail;
  String? resourceUri;
  Resource? comics;
  Resource? series;
  Stories? stories;
  Resource? events;
  List<Url>? urls;

  Character._({
    this.id,
    this.name,
    this.description,
    this.modified,
    this.thumbnail,
    this.resourceUri,
    this.comics,
    this.series,
    this.stories,
    this.events,
    this.urls,
  });

  factory Character.fromJson(Map<String, dynamic> json) {
    return Character._(
      id: json["id"],
      name: json["name"],
      description: json["description"],
      modified: json["modified"],
      thumbnail: json["thumbnail"] == null ? null : Thumbnail.fromJson(json["thumbnail"]),
      resourceUri: json["resourceURI"],
      comics: json["comics"] == null ? null : Resource.fromJson(json["comics"]),
      series: json["series"] == null ? null : Resource.fromJson(json["series"]),
      stories: json["stories"] == null ? null : Stories.fromJson(json["stories"]),
      events: json["events"] == null ? null : Resource.fromJson(json["events"]),
      urls: json["urls"] == null ? null : List<Url>.from(json["urls"]!.map((x) => Url.fromJson(x))),
    );
  }
}
