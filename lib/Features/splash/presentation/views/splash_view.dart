import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:store/Features/splash/presentation/views/widgets/splash_body.dart';
import 'package:store/core/utils/app_router.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    navigateToHomeView();

    super.initState();
  }

  void navigateToHomeView() {
    Future.delayed(
      Duration(seconds: 3),
      () {
        GoRouter.of(context).pushReplacement(AppRouter.homeView);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashBody(),
    );
  }
}
