import 'package:flutter/material.dart';
import 'package:store/Features/home/presentation/views/widgets/custom_produc_list_view_item.dart';

class CustomProductListView extends StatelessWidget {
  const CustomProductListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 185,
          mainAxisExtent: 225,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: 20,
        itemBuilder: (context, index) {
          return CustomProductListViewitem();
        },
      ),
    );
  }
}
