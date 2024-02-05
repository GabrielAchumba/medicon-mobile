import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/scheduler.dart';
import 'core/app_export.dart';

void main() {

  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  ThemeHelper().changeTheme('primary');
  //runApp(const MyApp());
  runApp(MyApp2());
}


class MyApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          theme: theme,
          title: 'medicon',
          debugShowCheckedModeBanner: false,
          initialRoute: AppRoutes.splashOneScreen,
          routes: AppRoutes.routes,
        );
      },
    );  }
}
