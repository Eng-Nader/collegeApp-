
import 'package:college_app/Feature/auth/data/model/profile_model.dart';
import 'package:college_app/constant.dart';
import 'package:flutter/material.dart';

class ProfileListView extends StatelessWidget {
  const ProfileListView({
    super.key,
    required this.profileList,
  });

  final List<ProfileModel> profileList;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
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
    );
  }
}
