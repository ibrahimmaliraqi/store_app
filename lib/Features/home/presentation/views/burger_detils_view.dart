import 'package:flutter/material.dart';
import 'package:store/Features/home/data/models/product_model/product_model.dart';
import 'package:store/Features/home/presentation/views/widgets/burger_detils_view_body.dart';

class BurgerDetilsView extends StatelessWidget {
  const BurgerDetilsView({super.key, required this.productModel});
  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BurgerDetilsViewBody(
        productModel: productModel,
      ),
    );
  }
}
