import 'package:sagun/app/navigator/navigator.dart';
import 'package:sagun/features/auth/presentation/view/register_view.dart';

class RegisterViewNavigator {}

mixin RegisterViewRoute {
  openRegisterView() {
    NavigateRoute.pushRoute(const RegisterView());
  }
}
