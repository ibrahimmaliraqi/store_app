import 'package:flutter/material.dart';
import 'package:store/Features/home/presentation/views/widgets/action_button.dart';
import 'package:store/Features/home/presentation/views/widgets/custom_detils_app_bar.dart';
import 'package:store/Features/home/presentation/views/widgets/custom_product_image.dart';
import 'package:store/Features/home/presentation/views/widgets/rating_widget.dart';
import 'package:store/core/utils/styles.dart';

class BurgerDetilsViewBody extends StatelessWidget {
  const BurgerDetilsViewBody({
    super.key,
  });

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
              child: CustomProducImage(),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Fried Chicken Burger",
              style: Styles.textStyle25,
            ),
            SizedBox(
              height: 9,
            ),
            RatingWidget(),
            Text(
              "Indulge in our crispy and savory Fried Chicken Burger, made with a juicy chicken patty, hand-breaded and deep-fried to perfection, served on a warm bun with lettuce, tomato, and a creamy sauce.",
              style: Styles.textStyle16.copyWith(
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.justify,
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
