import 'package:bookly/core/error/failure.dart';
import 'package:bookly/core/uilts/api_service.dart';
import 'package:bookly/features/home/data/model/book_model/book_model.dart';
import 'package:bookly/features/home/data/repo/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImplemntation implements HomeRepo {
  final ApiService apiService;

  HomeRepoImplemntation(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewsetBooks() async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&Sorting=newest &q=subject:programming');
      List<BookModel> books = [];
      for (var item in data['items'][0]) {
        books.add(BookModel.fromJsonData(item));
      }
      return right(books);
    } catch (e) {
      return left(e);
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    throw UnimplementedError();
  }
}
