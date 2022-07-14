import 'package:dio/dio.dart';
import 'package:my_photo/model/photo.dart';
import 'package:my_photo/model/search_result.dart';

const _accessKey = '8ml-5NmwCUwfOIHYwgF0Si88rSydiJ7jaboFbhjtkV4';

class PhotoService {
  Future<SearchResult> search(String searchTerm, int page) async {
    try {
      final response = await Dio().get(
        'https://api.unsplash.com/search/photos',
        queryParameters: {
          'query': searchTerm,
          'page': page,
        },
        options: Options(
          headers: {
            'Accept-Version': 'v1',
            'Authorization': 'Client-ID $_accessKey',
          },
        ),
      );
      return SearchResult.from(response.data);
    } catch (e) {
      return Future.error(e);
    }
  }
}
