import 'dart:convert';

import 'package:kuwot/core/data/remote/hosts.dart';
import 'package:kuwot/core/network/network.dart';
import 'package:kuwot/features/quote/data/models/quote_model.dart';

abstract class QuoteApiRemoteDataSource {
  Future<QuoteModel> getQuote({String? query});

  Future<QuoteModel> getTranslatedQuote(int id, {String? query});
}

class QuoteApiRemoteApiImpl implements QuoteApiRemoteDataSource {
  final Network network;

  QuoteApiRemoteApiImpl({required this.network});

  @override
  Future<QuoteModel> getQuote({String? query}) async {
    final uri = Uri(
      scheme: 'https',
      host: quoteApiHost,
      query: query,
    );
    final response = await network.get(uri);
    final jsonResponse = jsonDecode(response) as Map<String, dynamic>;
    return QuoteModel.fromJson(jsonResponse);
  }

  @override
  Future<QuoteModel> getTranslatedQuote(int id, {String? query}) async {
    final uri = Uri(
      scheme: 'https',
      host: quoteApiHost,
      path: '$id',
      query: query,
    );
    final response = await network.get(uri);
    final jsonResponse = jsonDecode(response) as Map<String, dynamic>;
    return QuoteModel.fromJson(jsonResponse);
  }
}
