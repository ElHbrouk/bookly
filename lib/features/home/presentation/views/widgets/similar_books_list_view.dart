import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class SimilarbooksListView extends StatelessWidget {
  const SimilarbooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.15,
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(
          width: 5,
        ),
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) => const CustomBookImage(),
      ),
    );
  }
}
