import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:bookly/core/networking/api_constants.dart';
import 'package:bookly/core/networking/api_service.dart';
import 'package:bookly/core/networking/failure.dart';
import 'package:bookly/features/search/data/repos/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImpl implements SearchRepo {
  final ApiService apiService;

  SearchRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> searchBooks(
      {required String query}) async {
    try {
      var data = await apiService.get(
          endPoint: ApiConstants.apiBaseUrl +
              ApiConstants.searchBooksEndpoint(query));

      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioError(e),
        );
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }
}
