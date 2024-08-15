import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:kuwot/core/data/remote/hosts.dart';
import 'package:kuwot/core/network/network.dart';

abstract class DeeplApiRemoteDataSource {
  Future<String> translateText(String text, String targetLang);
}

class DeeplApiRemoteDataSourceImpl implements DeeplApiRemoteDataSource {
  final Network network;

  DeeplApiRemoteDataSourceImpl({required this.network});

  @override
  Future<String> translateText(String text, String targetLang) async {
    final uri = Uri(
      scheme: 'https',
      host: deeplApiHost,
      path: 'v2/translate',
    );
    final headers = {
      'Authorization': 'DeepL-Auth-Key ${dotenv.get('DEEPL_API_KEY')}',
      'Content-Type': 'application/json',
    };
    final body = {
      'text': <String>[text],
      'target_lang': targetLang,
    };
    final response = await network.post(
      uri,
      body: jsonEncode(body),
      headers: headers,
    );
    final jsonResponse = jsonDecode(response) as Map<String, dynamic>;
    return jsonResponse['translations'][0]['text'];
  }
}
