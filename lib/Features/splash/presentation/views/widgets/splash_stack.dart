import 'package:flutter/material.dart';
import 'package:store/core/utils/assets.dart';
import 'package:store/core/utils/styles.dart';

class SplashStack extends StatelessWidget {
  const SplashStack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Positioned(
          bottom: 0,
          left: -10,
          child: Image.asset(
            Assets.logo1,
            width: 246,
            height: 288,
          ),
        ),
        Positioned(
          bottom: -20,
          left: 130,
          child: Image.asset(
            Assets.logo2,
            width: 202,
            height: 202,
          ),
        ),

        Center(
          child: Text(
            "FOODGO",
            style: Styles.textStyle60.copyWith(
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
