import 'package:marvel_characters/configuration/environment_values.dart';

class CharactersRequestModel {
  final String apikey = EnvironmentValues.publicKey;
  final String hash = EnvironmentValues.hash;
  final String ts = EnvironmentValues.ts;
  final int offset;

  CharactersRequestModel({
    required this.offset,
  });

  CharactersRequestModel copyWith({
    int? offset,
  }) {
    return CharactersRequestModel(
      offset: offset ?? this.offset,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "apikey": apikey,
      "hash": hash,
      "ts": ts,
      "offset": offset,
    };
  }
}
