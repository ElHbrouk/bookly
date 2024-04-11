import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating_item.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GoRouter.of(context).push(AppRouter.kbookDetailsView),
      child: SizedBox(
        height: 120,
        child: Row(
          children: [
            const CustomBookImage(),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.5,
                    child: const Text(
                      'Harry Potter and the goblet of fire ',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: AppStyles.regular20,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  const Text(
                    'J.K Rowling',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppStyles.regular14,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  const Row(
                    children: [
                      Text(
                        r'19.99$',
                        style: AppStyles.bold20,
                      ),
                      Spacer(),
                      BookRatingItem(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
