import 'package:bookly/core/tuils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating_item.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30.0,
          vertical: 20,
        ),
        child: Column(
          children: [
            const CustomBookDetailsAppBar(),
            Padding(
              padding:
                  EdgeInsets.symmetric(vertical: 20, horizontal: width * 0.2),
              child: const CustomBookImage(),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'The Jungle Book ',
              style: AppStyles.regular30,
            ),
            const SizedBox(
              height: 6,
            ),
            Opacity(
              opacity: 0.7,
              child: Text(
                'Rudyard Kipling',
                style: AppStyles.medium18.copyWith(
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            const BookRatingItem(),
            const SizedBox(
              height: 37,
            ),
            const BooksAction(),
          ],
        ),
      ),
    );
  }
}
