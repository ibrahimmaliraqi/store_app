import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store/Features/home/presentation/manager/product_cubit/product_cubit_cubit.dart';
import 'package:store/Features/home/presentation/views/widgets/custom_produc_list_view_item.dart';
import 'package:store/core/utils/widgets/custom_app_error.dart';
import 'package:store/core/utils/widgets/custom_app_loading.dart';

class CustomProductListView extends StatelessWidget {
  const CustomProductListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubitCubit, ProductCubitState>(
      builder: (context, state) {
        if (state is ProductCubitSuccess) {
          return GridView.builder(
            physics: NeverScrollableScrollPhysics(),

            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 185,
              mainAxisExtent: 225,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemCount: 22,
            itemBuilder: (context, index) {
              return CustomProductListViewitem(
                productModel: state.burgers[index],
              );
            },
          );
        } else if (state is ProductCubitFailure) {
          return AppErrorWidget(
            text: "سلملي",
          );
        } else {
          return CustomAppLoading();
        }
      },
    );
  }
}
