import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:store/core/utils/widgets/custom_buttons.dart';

class CustomBurgerDetilsAppBar extends StatelessWidget {
  const CustomBurgerDetilsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomButtom(
          icon: Icons.arrow_back_rounded,
          onPressed: () {
            GoRouter.of(context).pop();
          },
        ),
        Spacer(),
        CustomButtom(
          icon: Icons.search,
        ),
      ],
    );
  }
}
