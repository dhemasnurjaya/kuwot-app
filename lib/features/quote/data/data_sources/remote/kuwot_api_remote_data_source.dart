import 'dart:convert';

import 'package:kuwot/core/auth.dart';
import 'package:kuwot/core/data/remote/hosts.dart';
import 'package:kuwot/core/network/network.dart';
import 'package:kuwot/features/quote/data/models/image_model.dart';
import 'package:kuwot/features/quote/data/models/quote_model.dart';

const imagesPerPage = 10;

abstract class KuwotApiRemoteDataSource {
  Future<QuoteModel> getQuote({String? query});

  Future<QuoteModel> getTranslatedQuote(int id, {String? query});

  Future<List<ImageModel>> getRandomImages();
}

class KuwotApiRemoteApiImpl implements KuwotApiRemoteDataSource {
  final Auth auth;
  final Network network;

  KuwotApiRemoteApiImpl({
    required this.auth,
    required this.network,
  });

  @override
  Future<QuoteModel> getQuote({String? query}) async {
    final uri = Uri(
      scheme: 'https',
      host: quoteApiHost,
      path: 'quotes',
      query: query,
    );
    final headers = {
      'Authorization': 'Bearer ${auth.getAccessToken}',
    };
    final response = await network.get(uri, headers: headers);
    final jsonResponse = jsonDecode(response) as Map<String, dynamic>;
    return QuoteModel.fromJson(jsonResponse);
  }

  @override
  Future<QuoteModel> getTranslatedQuote(int id, {String? query}) async {
    final uri = Uri(
      scheme: 'https',
      host: quoteApiHost,
      path: 'quotes/$id',
      query: query,
    );
    final headers = {
      'Authorization': 'Bearer ${auth.getAccessToken}',
    };
    final response = await network.get(uri, headers: headers);
    final jsonResponse = jsonDecode(response) as Map<String, dynamic>;
    return QuoteModel.fromJson(jsonResponse);
  }

  @override
  Future<List<ImageModel>> getRandomImages() async {
    final uri = Uri(
      scheme: 'https',
      host: quoteApiHost,
      path: 'images',
    );
    final headers = {
      'Authorization': 'Bearer ${auth.getAccessToken}',
    };
    final response = await network.get(uri, headers: headers);
    final jsonResponse = jsonDecode(response) as List;
    return jsonResponse
        .map((e) => ImageModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
