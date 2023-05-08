class Thumbnail {
  String? path;
  String? extension;

  Thumbnail._({
    this.path,
    this.extension,
  });

  factory Thumbnail.fromJson(Map<String, dynamic> json) {
    return Thumbnail._(
      path: json["path"],
      extension: json["extension"],
    );
  }
}
