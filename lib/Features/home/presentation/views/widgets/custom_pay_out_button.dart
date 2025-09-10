import 'package:flutter/material.dart';
import 'package:store/core/utils/styles.dart';

class CustomPayOutButton extends StatelessWidget {
  const CustomPayOutButton({
    super.key,
    required this.color,
    required this.width,
    required this.text,
    this.ontap,
  });
  final Color color;
  final double width;
  final Function()? ontap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: 70,
        width: width,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            text,
            style: Styles.textStyle18.copyWith(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
