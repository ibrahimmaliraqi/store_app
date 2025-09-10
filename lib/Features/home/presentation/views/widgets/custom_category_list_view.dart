import 'package:flutter/material.dart';
import 'package:store/Features/home/presentation/views/widgets/custom_category_list_view_item.dart';

class CustomCategoryListView extends StatelessWidget {
  const CustomCategoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) {
          return CustomCategoryListViewItem();
        },
      ),
    );
  }
}
