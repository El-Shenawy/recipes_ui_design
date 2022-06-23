import 'package:flutter/cupertino.dart';
import 'package:recipes/screens/profile/components/info.dart';
import 'package:recipes/screens/profile/components/profile_menu_item.dart';

import '../../../size_config.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Info(
          image: "assets/images/pic.png",
          name: "Ahmed",
          email: "ahmed@gmail.com",
        ),
        SizedBox(height: SizeConfig.defaultSize * 2), //20
        ProfileMenuItem(
          iconSrc: "assets/icons/bookmark_fill.svg",
          title: "Saved Recipes",
          press: () {},
        ),
        ProfileMenuItem(
          iconSrc: "assets/icons/chef_color.svg",
          title: "Super Plan",
          press: () {},
        ),
        ProfileMenuItem(
          iconSrc: "assets/icons/language.svg",
          title: "Change Language",
          press: () {},
        ),
        ProfileMenuItem(
          iconSrc: "assets/icons/info.svg",
          title: "Help",
          press: () {},
        ),
      ],
    );
  }
}
