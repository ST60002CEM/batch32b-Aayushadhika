import 'package:flutter/material.dart';
import 'package:sagun/Screen/Loginpage.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
    
  }
}