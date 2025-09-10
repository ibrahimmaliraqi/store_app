import 'package:flutter/material.dart';
import 'package:store/core/utils/colors.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({
    super.key,
    this.onPressed,
    required this.icon,
  });
  final void Function()? onPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        icon,
        size: 28,
        color: Colorss.kOrderAndTitleButtonColor,
      ),
    );
  }
}
