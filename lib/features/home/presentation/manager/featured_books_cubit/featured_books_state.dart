part of 'featured_books_cubit.dart';

@immutable
sealed class FeaturedBooksState {}

final class FeaturedBooksInitial extends FeaturedBooksState {}

final class FeaturedBooksLoading extends FeaturedBooksState {}

final class FeaturedBooksFaliure extends FeaturedBooksState {
  final String message;

  FeaturedBooksFaliure({required this.message});
}

final class FeaturedBooksSuccess extends FeaturedBooksState {
  final List<BookEntity> books;

  FeaturedBooksSuccess({required this.books});
}
