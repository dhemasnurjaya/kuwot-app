import 'dart:convert';

import 'package:kuwot/core/auth/auth.dart';
import 'package:kuwot/core/env.dart';
import 'package:kuwot/core/network/network.dart';
import 'package:kuwot/features/quote/data/models/image_model.dart';
import 'package:kuwot/features/quote/data/models/quote_model.dart';
import 'package:kuwot/features/quote/data/models/translation_model.dart';

const imagesPerPage = 10;

abstract class KuwotApiRemoteDataSource {
  Future<QuoteModel> getQuote({String? query});

  Future<QuoteModel> getTranslatedQuote(int id, {String? query});

  Future<List<ImageModel>> getRandomImages();

  Future<List<TranslationModel>> getTranslations();
}

class KuwotApiRemoteApiImpl implements KuwotApiRemoteDataSource {
  final Env env;
  final Auth auth;
  final Network network;

  KuwotApiRemoteApiImpl({
    required this.env,
    required this.auth,
    required this.network,
  });

  @override
  Future<QuoteModel> getQuote({String? query}) async {
    final uri = Uri(
      scheme: env.quoteApiScheme,
      host: env.quoteApiHost,
      port: env.quoteApiPort,
      path: 'quotes',
      query: query,
    );
    final headers = {'Authorization': 'Bearer ${auth.getAccessToken}'};
    final response = await network.get(uri, headers: headers);
    final jsonResponse = jsonDecode(response) as Map<String, dynamic>;
    return QuoteModel.fromJson(jsonResponse);
  }

  @override
  Future<QuoteModel> getTranslatedQuote(int id, {String? query}) async {
    final uri = Uri(
      scheme: env.quoteApiScheme,
      host: env.quoteApiHost,
      port: env.quoteApiPort,
      path: 'quotes/$id',
      query: query,
    );
    final headers = {'Authorization': 'Bearer ${auth.getAccessToken}'};
    final response = await network.get(uri, headers: headers);
    final jsonResponse = jsonDecode(response) as Map<String, dynamic>;
    return QuoteModel.fromJson(jsonResponse);
  }

  @override
  Future<List<ImageModel>> getRandomImages() async {
    final uri = Uri(
      scheme: env.quoteApiScheme,
      host: env.quoteApiHost,
      port: env.quoteApiPort,
      path: 'images',
    );
    final headers = {'Authorization': 'Bearer ${auth.getAccessToken}'};
    final response = await network.get(uri, headers: headers);
    final jsonResponse = jsonDecode(response) as List;
    return jsonResponse
        .map((e) => ImageModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<List<TranslationModel>> getTranslations() async {
    final uri = Uri(
      scheme: env.quoteApiScheme,
      host: env.quoteApiHost,
      port: env.quoteApiPort,
      path: 'translations',
    );
    final headers = {'Authorization': 'Bearer ${auth.getAccessToken}'};
    final response = await network.get(uri, headers: headers);
    final jsonResponse = jsonDecode(response) as List;
    return jsonResponse
        .map((e) => TranslationModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
