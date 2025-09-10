import 'package:flutter/material.dart';
import 'package:store/Features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:store/Features/home/presentation/views/widgets/custom_category_list_view.dart';
import 'package:store/Features/home/presentation/views/widgets/custom_category_list_view_item.dart';
import 'package:store/Features/home/presentation/views/widgets/custom_search_bar.dart';
import 'package:store/core/utils/colors.dart';
import 'package:store/core/utils/styles.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          CustomAppBar(),
          SizedBox(height: 44),
          CustomSearchBar(),
          SizedBox(height: 38),
          CustomCategoryListView(),
        ],
      ),
    );
  }
}
