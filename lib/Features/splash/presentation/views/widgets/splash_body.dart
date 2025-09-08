import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SvgPicture.asset(
          "assets/images/logo1.svg",
          width: 100,
          height: 100,
        ),
      ),
    );
  }
}
