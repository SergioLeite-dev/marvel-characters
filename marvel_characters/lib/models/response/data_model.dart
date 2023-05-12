import 'package:marvel_characters/models/response/character_model.dart';

class Data {
  final int? offset;
  final int? limit;
  final int? total;
  final int? count;
  final List<Character>? results;

  Data._({
    this.offset,
    this.limit,
    this.total,
    this.count,
    this.results,
  });

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data._(
      offset: json["offset"],
      limit: json["limit"],
      total: json["total"],
      count: json["count"],
      results: json["results"] == null ? null : List<Character>.from(json["results"].map((x) => Character.fromJson(x))),
    );
  }
}
