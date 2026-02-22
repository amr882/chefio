import 'package:chefio/core/routing/app_router.dart';
import 'package:chefio/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ChefioApp extends StatelessWidget {
  final AppRouter appRouter;
  const ChefioApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          theme: ThemeData(scaffoldBackgroundColor: Colors.white),
          debugShowCheckedModeBanner: false,
          title: 'Chefio',

          onGenerateRoute: appRouter.generateRoute,
          initialRoute: Routes.onBoardingScreen,
        );
      },
    );
  }
}
