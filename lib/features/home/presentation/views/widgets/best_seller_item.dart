import 'package:bookly/core/tuils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating_item.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Row(
        children: [
          const CustomBookItem(),
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
                const BookRatingItem(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
