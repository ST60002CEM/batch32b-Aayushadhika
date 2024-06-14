import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sagun/app/navigator/navigator.dart';
import 'package:sagun/features/auth/presentation/navigator/register_navigator.dart';
import 'package:sagun/features/auth/presentation/view/login_view.dart';

final loginViewNavigatorProvider = Provider((ref) => LoginViewNavigator());

class LoginViewNavigator with RegisterViewRoute {}

mixin LoginViewRoute {
  openLoginView() {
    NavigateRoute.popAndPushRoute(const LoginView());
  }
}
