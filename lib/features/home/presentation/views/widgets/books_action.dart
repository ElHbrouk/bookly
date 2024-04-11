import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              buttonName: '19.33',
              backgroundColor: Colors.white,
              textStyle: AppStyles.medium18.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.w900,
              ),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(16),
                topLeft: Radius.circular(16),
              ),
            ),
          ),
          Expanded(
            child: CustomButton(
              buttonName: 'Free Preview',
              backgroundColor: const Color(0xffef8262),
              textStyle: AppStyles.medium16.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w900,
              ),
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
