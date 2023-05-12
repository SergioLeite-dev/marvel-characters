import 'package:marvel_characters/models/response/data_model.dart';

class DefaultResponse {
  final int? code;
  final String? status;
  final String? copyright;
  final String? attributionText;
  final String? attributionHtml;
  final String? etag;
  final Data? data;

  DefaultResponse._({
    this.code,
    this.status,
    this.copyright,
    this.attributionText,
    this.attributionHtml,
    this.etag,
    this.data,
  });

  factory DefaultResponse.fromJson(Map<String, dynamic> json) {
    return DefaultResponse._(
      code: json["code"],
      status: json["status"],
      copyright: json["copyright"],
      attributionText: json["attributionText"],
      attributionHtml: json["attributionHTML"],
      etag: json["etag"],
      data: json["data"] == null ? null : Data.fromJson(json["data"]),
    );
  }
}
