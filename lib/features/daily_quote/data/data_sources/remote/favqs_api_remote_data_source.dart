import 'dart:convert';

import 'package:kuwot/core/data/remote/hosts.dart';
import 'package:kuwot/core/network/network.dart';
import 'package:kuwot/features/daily_quote/data/models/daily_quote_model.dart';

abstract class FavqsApiRemoteDataSource {
  Future<DailyQuoteModel> getDailyQuote();
}

class FavqsApiRemoteApiImpl implements FavqsApiRemoteDataSource {
  final Network network;

  FavqsApiRemoteApiImpl({required this.network});

  @override
  Future<DailyQuoteModel> getDailyQuote() async {
    final uri = Uri(
      scheme: 'https',
      host: favqsApiHost,
      path: 'api/qotd',
    );
    final response = await network.get(uri);
    final jsonResponse = jsonDecode(response) as Map<String, dynamic>;
    return DailyQuoteModel.fromJson(jsonResponse);
  }
}
