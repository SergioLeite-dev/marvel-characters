import 'package:marvel_characters/models/response/resource_item_model.dart';

class Resource {
  final int? available;
  final String? collectionUri;
  final List<ResourceItem>? items;
  final int? returned;

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
