import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sagun/features/splash/presentation/viewmodel/splash_view_model.dart';

class SplashView extends ConsumerStatefulWidget {
  const SplashView({super.key});

  @override
  ConsumerState<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends ConsumerState<SplashView> {
  @override
  void initState() {
    // Wait for 2 seconds and then navigate
    // Future.delayed(const Duration(seconds: 2), () {
    //   Navigator.of(context).pushReplacement(MaterialPageRoute(
    //     builder: (context) => const LoginView(),
    //   ));
    // });

    ref.read(splashViewModelProvider.notifier).openLoginView();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime[50],
      body: const Stack(
        children: const [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Sagun',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                SizedBox(height: 10),
                CircularProgressIndicator(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
