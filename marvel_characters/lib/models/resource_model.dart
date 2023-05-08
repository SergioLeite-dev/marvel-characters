import 'package:marvel_characters/models/resource_item_model.dart';

class Resource {
  int? available;
  String? collectionUri;
  List<ResourceItem>? items;
  int? returned;

  Resource._({
    this.available,
    this.collectionUri,
    this.items,
    this.returned,
  });

  factory Resource.fromJson(Map<String, dynamic> json) {
    return Resource._(
      available: json["available"],
      collectionUri: json["collectionURI"],
      items: json["items"] == null ? [] : List<ResourceItem>.from(json["items"]!.map((x) => ResourceItem.fromJson(x))),
      returned: json["returned"],
    );
  }
}
