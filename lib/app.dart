import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicon/services/auth_services/auth_provider.dart';
import 'package:medicon/services/onboarding_services/onboarding_service.dart';
import 'package:medicon/splash_screen.dart';
import 'package:provider/provider.dart';
import 'package:medicon/services/common/file_storage_service.dart';
import 'package:medicon/services/user_services/user_service.dart';
import 'core/app_export.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> with WidgetsBindingObserver {
  // final navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        /* designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) { */
          return MultiProvider(
            providers: [
              ChangeNotifierProvider(
                create: (context) => AuthServices(),
              ), 
              ChangeNotifierProvider(
                create: (context) => UserService(),
              ),
              ChangeNotifierProvider(
                create: (context) => FileStorageServices(),
              ),
              ChangeNotifierProvider(
                create: (context) => OnboardingServices(),
              ),
            ],
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: theme,
              title: 'Medicon',
              home: const SplashScreen(),
              //initialRoute: AppRoutes.splashOneScreen,
              //routes: AppRoutes.routes,
            ),
          );
        });
  }
}