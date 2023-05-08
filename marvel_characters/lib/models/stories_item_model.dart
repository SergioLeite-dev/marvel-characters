class StoriesItem {
  String? resourceUri;
  String? name;
  String? type;

  StoriesItem._({
    this.resourceUri,
    this.name,
    this.type,
  });

  factory StoriesItem.fromJson(Map<String, dynamic> json) {
    return StoriesItem._(
      resourceUri: json["resourceURI"],
      name: json["name"],
      type: json["type"],
    );
  }
}
