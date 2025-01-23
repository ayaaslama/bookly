import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:bookly/core/networking/failure.dart';
import 'package:dartz/dartz.dart';

abstract class SearchRepo {
  Future<Either<Failure, List<BookModel>>> searchBooks({required String query});
}
