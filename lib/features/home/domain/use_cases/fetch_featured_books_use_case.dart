import 'package:bookly/features/home/domain/repositories/home_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/use_cases/use_case.dart';
import '../entities/book_entity.dart';

class FetchFeaturedBooksUseCase extends UseCaseWithoutParam<List<BookEntity>> {
  final HomeRepository homeRepository;
  FetchFeaturedBooksUseCase({required this.homeRepository});

  @override
  Future<Either<Failure, List<BookEntity>>> call() async {
    return await homeRepository.fetchFeaturedBooks();
  }
}
