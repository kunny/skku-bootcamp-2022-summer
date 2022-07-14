import 'package:my_photo/model/photo.dart';

class SearchResult {
  final int total;

  final int totalPages;

  final List<Photo> results;

  SearchResult.from(dynamic source)
      : total = source['total'],
        totalPages = source['total_pages'],
        results =
            List.from(source['results']).map((e) => Photo.from(e)).toList();

  const SearchResult(this.total, this.totalPages, this.results);
}
