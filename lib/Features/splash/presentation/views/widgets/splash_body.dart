import 'package:flutter/material.dart';
import 'package:store/Features/splash/presentation/views/widgets/splash_stack.dart';
import 'package:store/core/utils/colors.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(0),
        margin: EdgeInsets.all(0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color.fromARGB(255, 231, 94, 105),
              Colorss.kPrimaryColor,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [.3, 1.0],
          ),
        ),
        child: SplashStack(),
      ),
    );
  }
}
