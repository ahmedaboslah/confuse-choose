import 'package:confuse/core/utils/app_styles.dart';
import 'package:confuse/features/Home/presentation/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    navigation();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: SizedBox(
            height: 300,
            width: double.infinity,
            child: Image.asset(
              'assets/images/backgroundcloud.png',
              fit: BoxFit.fill,
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          top: 150,
          child: SizedBox(
            height: 250,
            child: Image.asset(
              'assets/images/unsplash_TqOEGdRNowY.png',
            ),
          ),
        ),
        const Positioned(
          top: 600,
          left: 0,
          right: 0,
          child: Align(
            alignment: Alignment.center,
            child: Text(
              'Confuse&Choose',
              style: TextStyles.bold20,
            ),
          ),
        ),
      ],
    );
  }
  
  void navigation() {
    Future.delayed(const Duration(seconds: 3), () {
      GoRouter.of(context).push(HomeView.routename);
  });
}
}
