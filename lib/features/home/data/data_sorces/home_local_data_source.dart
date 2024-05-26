import 'package:bookly/constants.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/domain/repositories/home_repository.dart';
import 'package:hive_flutter/hive_flutter.dart';

abstract class HomeLocalDataSource {
  List<BookEntity> fetchFeaturedBooks();
  List<BookEntity> fetchNewestBooks();
}

class HomeLocalDataSourceImpl extends HomeLocalDataSource {
  final HomeRepository homeRepository;

  HomeLocalDataSourceImpl({required this.homeRepository});
  var box;
  @override
  List<BookEntity> fetchFeaturedBooks() {
    box = Hive.box<BookEntity>(kFeaturedBox);
    return box.values.toList();
  }

  @override
  List<BookEntity> fetchNewestBooks() {
    box = Hive.box<BookEntity>(kNewestBox);
    return box.values.toList();
  }
}
