import 'package:college_app/Feature/auth/Presentation/view/address_view.dart';
import 'package:college_app/Feature/auth/Presentation/view/forget_basword_view.dart';
import 'package:college_app/Feature/auth/Presentation/view/introduction_view.dart';
import 'package:college_app/Feature/auth/Presentation/view/loginView.dart';
import 'package:college_app/Feature/auth/Presentation/view/new_password_view.dart';
import 'package:college_app/Feature/auth/Presentation/view/resent_password_view.dart';
import 'package:college_app/Feature/auth/Presentation/view/sign_up_view.dart';
import 'package:college_app/Feature/favourite/presentation/view/favourite_view_details.dart';
import 'package:college_app/Feature/home/presentation/views/favourite_view.dart';
import 'package:college_app/Feature/home/presentation/views/home_view.dart';
import 'package:college_app/Feature/profile/presentation/view/profile_view.dart';
import 'package:college_app/Feature/splash/presentation/view/splash_view.dart';
import 'package:college_app/constant.dart';
import 'package:go_router/go_router.dart';

class AppRoute {
  static GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) {
          return const SplashView();
        },
      ),
      GoRoute(
          path: signupView,
          builder: (context, state) {
            return const SignupView();
          }),
      GoRoute(
          path: introductionView,
          builder: (context, state) {
            return const IntroductionView();
          }),
      GoRoute(
          path: loginView,
          builder: (context, state) {
            return const LoginView();
          }),
      GoRoute(
          path: profileView,
          builder: (context, state) {
            return const ProfileView();
          }),
      GoRoute(
          path: addressView,
          builder: (context, state) {
            return const AddressView();
          }),
      GoRoute(
          path: forgetPassword,
          builder: (context, state) {
            return const ForgetBaswordView();
          }),
      GoRoute(
          path: resentpassword,
          builder: (context, state) {
            return const ResentPasswordView();
          }),
      GoRoute(
          path: newPasswrod,
          builder: (context, state) {
            return const NewPasswordView();
          }),
      GoRoute(
          path: homeView,
          builder: (context, state) {
            return const HomeView();
          }),
      GoRoute(
          path: favDetails,
          builder: (context, state) {
            return const FavouriteViewDetails();
          }),
      GoRoute(
        path: faveView,
        builder: (context, state) {
          return const FavouriteView();
        },
      ),
    ],
  );
}
