import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:bookly/features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0),
            child: CustomSearchTextield(),
          ),
          Text(
            'Search Result',
            style: AppStyles.bold20,
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: SearchResultListView(),
          ),
        ],
      ),
    );
  }
}
