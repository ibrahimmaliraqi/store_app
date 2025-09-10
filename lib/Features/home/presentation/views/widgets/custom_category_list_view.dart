import 'package:flutter/material.dart';
import 'package:store/Features/home/presentation/views/widgets/custom_category_list_view_item.dart';
import 'package:store/core/utils/app_category.dart';

class CustomCategoryListView extends StatelessWidget {
  const CustomCategoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        reverse: true,
        scrollDirection: Axis.horizontal,
        itemCount: category.length,
        itemBuilder: (context, index) {
          return CustomCategoryListViewItem(
            cate: category[index].cate,
          );
        },
      ),
    );
  }
}
