import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:kuwot/core/data/remote/hosts.dart';
import 'package:kuwot/core/network/network.dart';
import 'package:kuwot/features/daily_quote/data/models/photo_list_model.dart';

const photosPerPage = 20;

abstract class PexelsApiRemoteDataSource {
  Future<PhotoListModel> getCuratedPhotos();
}

class PexelsApiRemoteDataSourceImpl implements PexelsApiRemoteDataSource {
  final Network network;

  PexelsApiRemoteDataSourceImpl({required this.network});

  @override
  Future<PhotoListModel> getCuratedPhotos() async {
    final uri = Uri(
      scheme: 'https',
      host: pexelsApiHost,
      path: 'v1/curated',
      query: 'per_page=$photosPerPage',
    );
    final apiKey = dotenv.get('PEXELS_API_KEY');
    final headers = {
      'Authorization': apiKey,
    };
    final response = await network.get(
      uri,
      headers: headers,
    );
    final jsonResponse = jsonDecode(response) as Map<String, dynamic>;
    return PhotoListModel.fromJson(jsonResponse);
  }
}
