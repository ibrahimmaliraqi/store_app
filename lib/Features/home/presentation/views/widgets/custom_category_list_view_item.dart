import 'package:flutter/material.dart';
import 'package:store/core/utils/colors.dart';
import 'package:store/core/utils/styles.dart';

class CustomCategoryListViewItem extends StatelessWidget {
  const CustomCategoryListViewItem({super.key, required this.cate});
  final String cate;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 14),
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
      decoration: BoxDecoration(
        color: Colorss.kcate,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        cate,
        style: Styles.textStyle16,
      ),
    );
  }
}
