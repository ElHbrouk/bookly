import 'package:bookly/core/tuils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRatingItem extends StatelessWidget {
  const BookRatingItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          r'19.99$',
          style: AppStyles.bold20,
        ),
        const Spacer(),
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.amber,
        ),
        const SizedBox(
          width: 6.3,
        ),
        const Text(
          '4.8',
          style: AppStyles.medium16,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          '(2390)',
          style: AppStyles.regular14.copyWith(color: const Color(0xff707070)),
        ),
      ],
    );
  }
}
