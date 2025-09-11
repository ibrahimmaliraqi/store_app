import 'package:flutter/material.dart';
import 'package:store/Features/home/data/models/product_model/product_model.dart';
import 'package:store/Features/home/presentation/views/widgets/action_button.dart';
import 'package:store/Features/home/presentation/views/widgets/custom_detils_app_bar.dart';
import 'package:store/Features/home/presentation/views/widgets/custom_product_image.dart';
import 'package:store/Features/home/presentation/views/widgets/rating_widget.dart';
import 'package:store/core/utils/styles.dart';

class BurgerDetilsViewBody extends StatelessWidget {
  const BurgerDetilsViewBody({
    super.key,
    required this.productModel,
  });
  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomBurgerDetilsAppBar(),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: CustomProducImage(
                imageUrl: productModel.image,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Align(
              alignment: AlignmentDirectional.centerEnd,
              child: Text(
                productModel.name,
                style: Styles.textStyle25,
              ),
            ),
            SizedBox(
              height: 9,
            ),
            RatingWidget(
              rate: productModel.rating,
            ),
            Align(
              alignment: AlignmentDirectional.centerStart,

              child: Text(
                productModel.description,
                style: Styles.textStyle16.copyWith(
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.end,
              ),
            ),
            Spacer(),
            ActionButtons(),
            SizedBox(
              height: 34,
            ),
          ],
        ),
      ),
    );
  }
}
