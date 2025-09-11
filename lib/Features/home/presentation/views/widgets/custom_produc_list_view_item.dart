import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:store/Features/home/data/models/product_model/product_model.dart';
import 'package:store/Features/home/presentation/views/widgets/custom_product_image.dart';
import 'package:store/Features/home/presentation/views/widgets/rating_widget.dart';
import 'package:store/core/utils/app_router.dart';
import 'package:store/core/utils/assets.dart';
import 'package:store/core/utils/styles.dart';

class CustomProductListViewitem extends StatelessWidget {
  const CustomProductListViewitem({super.key, required this.productModel});
  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push(AppRouter.buraherView, extra: productModel);
      },
      child: Card(
        elevation: 5,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: CustomProducImage(
                  imageUrl: productModel.image,
                ),
              ),
              SizedBox(
                height: 9,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 11),
                child: Align(
                  alignment: AlignmentDirectional.centerEnd,

                  child: Text(
                    productModel.name,
                    textAlign: TextAlign.end,
                    style: Styles.textStyle16.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),

              // Padding(
              //   padding: const EdgeInsets.only(left: 11),
              //   child: Text(
              //     "Wendy's Burger",
              //     style: Styles.textStyle16.copyWith(
              //       fontSize: 13,
              //     ),
              //   ),
              // ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(left: 11, right: 11),
                child: Row(
                  children: [
                    RatingWidget(
                      rate: productModel.rating,
                    ),
                    Spacer(),
                    Image.asset(
                      Assets.favorate,
                      width: 24,
                      height: 24,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
