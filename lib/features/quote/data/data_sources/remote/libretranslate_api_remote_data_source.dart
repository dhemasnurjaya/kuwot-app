import 'dart:convert';

import 'package:kuwot/core/data/remote/hosts.dart';
import 'package:kuwot/core/network/network.dart';

abstract class LibretranslateApiRemoteDataSource {
  Future<String> translateText(String text, String targetLang);
}

class LibretranslateApiRemoteDataSourceImpl
    implements LibretranslateApiRemoteDataSource {
  final Network network;

  LibretranslateApiRemoteDataSourceImpl({required this.network});

  @override
  Future<String> translateText(String text, String targetLang) async {
    final uri = Uri(
      scheme: 'https',
      host: libretranslateApiHost,
      path: 'translate',
    );
    final headers = {
      'Content-Type': 'application/json',
    };
    final body = {
      'q': text,
      'source': 'auto',
      'target': targetLang,
    };
    final response = await network.post(
      uri,
      headers: headers,
      body: jsonEncode(body),
    );
    final jsonResponse = jsonDecode(response) as Map<String, dynamic>;
    return jsonResponse['translatedText'];
  }
}
