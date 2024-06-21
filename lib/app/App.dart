import 'package:flutter/material.dart';
import 'package:sagun/app/themes/theme_data.dart';
import 'package:sagun/features/splash/presentation/view/splash_view.dart';

import 'navigator_key/navigator_key.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      navigatorKey: AppNavigator.navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: getApplicationTheme(),
      home: SplashView(),
    );
  }
}
