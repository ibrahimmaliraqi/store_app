import 'package:go_router/go_router.dart';
import 'package:store/Features/home/presentation/views/home_view.dart';
import 'package:store/Features/splash/presentation/views/splash_view.dart';

class AppRouter {
  static String homeView = "/homeView";
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => SplashView(),
      ),
      GoRoute(
        path: homeView,
        builder: (context, state) => HomeView(),
      ),
    ],
  );
}
