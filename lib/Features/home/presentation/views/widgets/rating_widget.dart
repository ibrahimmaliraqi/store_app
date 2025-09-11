import 'package:flutter/material.dart';
import 'package:store/core/utils/assets.dart';
import 'package:store/core/utils/styles.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({
    super.key,
    required this.rate,
  });
  final double rate;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          Assets.star,
          width: 16,
          height: 16,
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          rate.toString(),
          style: Styles.textStyle16.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
