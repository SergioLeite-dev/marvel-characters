class ResourceItem {
  final String? resourceUri;
  final String? name;

  ResourceItem._({
    this.resourceUri,
    this.name,
  });

  factory ResourceItem.fromJson(Map<String, dynamic> json) {
    return ResourceItem._(
      resourceUri: json["resourceURI"],
      name: json["name"],
    );
  }
}
