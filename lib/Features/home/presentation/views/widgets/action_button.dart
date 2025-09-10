import 'package:flutter/material.dart';
import 'package:store/Features/home/presentation/views/widgets/custom_pay_out_button.dart';
import 'package:store/core/utils/colors.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomPayOutButton(
          color: Colorss.kPrimaryColor,
          width: 90,
          text: r"$8.24",
        ),
        Spacer(),
        CustomPayOutButton(
          color: Colorss.kOrderAndTitleButtonColor,
          width: 180,
          text: r"ORDER NOW",
        ),
      ],
    );
  }
}
