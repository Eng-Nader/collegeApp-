import 'package:college_app/Feature/auth/Presentation/view/address_view.dart';
import 'package:college_app/Feature/auth/Presentation/view/forget_basword_view.dart';
import 'package:college_app/Feature/auth/Presentation/view/introduction_view.dart';
import 'package:college_app/Feature/auth/Presentation/view/loginView.dart';
import 'package:college_app/Feature/auth/Presentation/view/new_password_view.dart';
import 'package:college_app/Feature/auth/Presentation/view/resent_password_view.dart';
import 'package:college_app/Feature/auth/Presentation/view/sign_up_view.dart';
import 'package:college_app/Feature/home/presentation/views/home_view.dart';
import 'package:college_app/Feature/profile/presentation/view/profile_view.dart';
import 'package:college_app/constant.dart';
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
          }),
      GoRoute(
          path: resentpassword,
          builder: (context, state) {
            return ResentPasswordView();
          }),
      GoRoute(
          path: newPasswrod,
          builder: (context, state) {
            return NewPasswordView();
          }),
      GoRoute(
          path: homeView,
          builder: (context, state) {
            return HomeView();
          })
    ],
  );
}
