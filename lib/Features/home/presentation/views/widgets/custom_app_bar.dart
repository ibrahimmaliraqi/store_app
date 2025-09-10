import 'package:flutter/material.dart';
import 'package:store/core/utils/assets.dart';
import 'package:store/core/utils/colors.dart';
import 'package:store/core/utils/styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 28,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Foodgo",
              style: Styles.textStyle60.copyWith(
                fontSize: 45,
                color: Colorss.kOrderAndTitleButtonColor,
              ),
            ),
            Text(
              "Order your favourite food!",
              style: Styles.textStyle16.copyWith(
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        Spacer(),
        ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(333),
          child: Image.asset(
            Assets.logo2,
            width: 80,
            height: 80,
          ),
        ),
      ],
    );
  }
}
