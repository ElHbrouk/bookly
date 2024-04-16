import 'package:bookly/features/home/domain/repositories/home_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/use_cases/use_case.dart';
import '../entities/book_entity.dart';

class FetchNewestBooksUseCase extends UseCase<List<BookEntity>, NoParam> {
  final HomeRepository homeRepository;
  FetchNewestBooksUseCase({required this.homeRepository});

  @override
  Future<Either<Failure, List<BookEntity>>> call([NoParam? param]) async {
    return await homeRepository.fetchNewestBooks();
  }
}
