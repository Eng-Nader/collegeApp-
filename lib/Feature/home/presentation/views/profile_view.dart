import 'package:college_app/Feature/auth/data/model/profile_model.dart';
import 'package:college_app/constant.dart';
import 'package:college_app/core/assets/app_assets.dart';
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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Icon(
                  Icons.arrow_back,
                ),
                SizedBox(
                  width: 130,
                ),
                Text(
                  'Profile',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            CircleAvatar(
              backgroundImage: AssetImage(AppAssets.manLoog),
              radius: 70,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Nader Sameer',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: profileList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: 16),
                    child: Card(
                      color: Colors.white,
                      child: ListTile(
                        leading: Icon(
                          profileList[index].icon,
                          color: primaryColor,
                          size: 30,
                        ),
                        title: Text(
                          profileList[index].text,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
