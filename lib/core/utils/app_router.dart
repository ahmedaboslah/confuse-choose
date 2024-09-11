
import 'package:confuse/features/Home/presentation/view/home_view.dart';
import 'package:confuse/features/Splash/presentation/view/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter{
    
     static final router=GoRouter(routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView(),),
      
      GoRoute(path:  HomeView.routename, builder: (context, state) => const HomeView(),)
     ]);
}