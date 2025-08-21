import 'package:college_app/constant.dart';
import 'package:college_app/view/address_view.dart';
import 'package:college_app/view/forget_basword_view.dart';
import 'package:college_app/view/introduction_view.dart';
import 'package:college_app/view/loginView.dart';
import 'package:college_app/view/profile_view.dart';
import 'package:college_app/view/sign_up_view.dart';
import 'package:go_router/go_router.dart';

class AppRoute {
  static GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) {
          return IntroductionView();
        },
      ),
      GoRoute(
          path: signupView,
          builder: (context, state) {
            return SignupView();
          }),
      GoRoute(
          path: loginView,
          builder: (context, state) {
            return LoginView();
          }),
      GoRoute(
          path: profileView,
          builder: (context, state) {
            return ProfileView();
          }),
      GoRoute(
          path: addressView,
          builder: (context, state) {
            return AddressView();
          }),
      GoRoute(
          path: forgetPassword,
          builder: (context, state) {
            return ForgetBaswordView();
          })
    ],
  );
}
