import 'package:confuse/core/utils/app_router.dart';
import 'package:confuse/core/utils/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ConsfuseAndChoose());
}
class ConsfuseAndChoose extends StatelessWidget {
  const ConsfuseAndChoose({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
   debugShowCheckedModeBanner: false,
   routerConfig: AppRouter.router,
   theme: ThemeData(
      scaffoldBackgroundColor: colors.primaryColor
   )
    
    );
  }
}