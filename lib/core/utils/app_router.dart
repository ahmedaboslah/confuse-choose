
import 'package:confuse/core/widgets/bottom_navigation_bar.dart';
import 'package:confuse/features/Category/Category_veiw.dart';
import 'package:confuse/features/Home/presentation/view/home_view.dart';
import 'package:confuse/features/Splash/presentation/view/splash_view.dart';
import 'package:confuse/features/search/presentation/view/search_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter{
    
     static final router=GoRouter(routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView(),),
      
      GoRoute(path:  HomeView.routename, builder: (context, state) => const HomeView(),),
      GoRoute(path:  PageViewShowed.pageviewid, builder: (context, state) => const PageViewShowed(),),
      GoRoute(path:  CategoryVeiw.categoryVeiwid, builder: (context, state) => const CategoryVeiw(),),
      GoRoute(path:  SearchView.searchViewId, builder: (context, state) => const SearchView(),),
     ]);
}