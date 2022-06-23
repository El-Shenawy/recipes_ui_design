
import 'package:flutter/material.dart';
import 'package:recipes/components/my_bottom_nav_bar.dart';
import 'package:recipes/constants.dart';
import 'package:recipes/screens/profile/components/body.dart';
import 'package:recipes/size_config.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: ProfileBody(),
      bottomNavigationBar: const MyBottomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      leading: SizedBox(),
      centerTitle: true,
      title: Text("Profile"),
      actions: <Widget>[
        TextButton(
          onPressed: () {},
          child: Text(
            "Edit",
            style: TextStyle(
              color: Colors.white,
              fontSize: SizeConfig.defaultSize * 1.6,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
