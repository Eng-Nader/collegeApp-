import 'package:college_app/Feature/auth/data/model/profile_model.dart';
import 'package:college_app/Feature/profile/presentation/widget/profile_view_body.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  final List<ProfileModel> profileList = const [
    ProfileModel(
      icon: Icons.person,
      text: 'Your Profile',
    ),
    ProfileModel(
      icon: Icons.list,
      text: 'My Order',
    ),
    ProfileModel(
      icon: Icons.payment,
      text: 'Payment Method',
    ),
    ProfileModel(
      icon: Icons.favorite,
      text: 'Whilist',
    ),
    ProfileModel(
      icon: Icons.settings,
      text: 'Settings',
    ),
    ProfileModel(
      icon: Icons.logout,
      text: 'LogOut',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProfileViewBody(
        profileList: profileList,
      ),
    );
  }
}
