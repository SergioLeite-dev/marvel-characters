class Url {
  final String? type;
  final String? url;

  Url._({
    this.type,
    this.url,
  });

  factory Url.fromJson(Map<String, dynamic> json) {
    return Url._(
      type: json["type"],
      url: json["url"],
    );
  }
}
