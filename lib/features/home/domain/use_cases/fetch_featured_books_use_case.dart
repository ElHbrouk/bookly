import 'package:bookly/features/home/domain/repositories/home_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../entities/book_entity.dart';

class FetchFeaturedBooksUseCase {
  final HomeRepository homeRepository;

  FetchFeaturedBooksUseCase({required this.homeRepository});
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks() {
    return homeRepository.fetchFeaturedBooks();
  }
}
