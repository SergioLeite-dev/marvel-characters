import 'package:marvel_characters/models/response/stories_item_model.dart';

class Stories {
  final int? available;
  final String? collectionUri;
  final List<StoriesItem>? items;
  final int? returned;

  Stories._({
    this.available,
    this.collectionUri,
    this.items,
    this.returned,
  });

  factory Stories.fromJson(Map<String, dynamic> json) {
    return Stories._(
      available: json["available"],
      collectionUri: json["collectionURI"],
      items: json["items"] == null ? [] : List<StoriesItem>.from(json["items"]!.map((x) => StoriesItem.fromJson(x))),
      returned: json["returned"],
    );
  }
}
