import 'package:flutter/material.dart';
import 'package:store/Features/home/presentation/views/widgets/custom_product_image.dart';
import 'package:store/Features/home/presentation/views/widgets/rating_widget.dart';
import 'package:store/core/utils/assets.dart';
import 'package:store/core/utils/styles.dart';

class CustomProductListViewitem extends StatelessWidget {
  const CustomProductListViewitem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
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
              child: CustomProducImage(),
            ),
            SizedBox(
              height: 9,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 11),
              child: Text(
                "Cheeseburger",
                style: Styles.textStyle16.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 11),
              child: Text(
                "Wendy's Burger",
                style: Styles.textStyle16.copyWith(
                  fontSize: 13,
                ),
              ),
            ),
            SizedBox(
              height: 9,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 11, right: 11),
              child: Row(
                children: [
                  RatingWidget(),
                  Spacer(),
                  Image.asset(
                    Assets.favorate,
                    width: 24,
                    height: 24,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
