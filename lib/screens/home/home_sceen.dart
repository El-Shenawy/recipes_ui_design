import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipes/screens/home/components/body.dart';
import 'package:recipes/size_config.dart';

import '../../components/my_bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(),
      body: const Body(),
      bottomNavigationBar: const MyBottomNavBar(),
    );
  }
}

AppBar buildAppBar(){
  return AppBar(
    leading: IconButton(
      icon: SvgPicture.asset('assets/icons/menu.svg'),
      onPressed: (){},
    ),
    centerTitle: true,
    title: Image.asset('assets/images/logo.png'),
    actions: <Widget>[
      IconButton(
        icon: SvgPicture.asset('assets/icons/search.svg'),
        onPressed: (){},
      ),
      SizedBox(
        width: SizeConfig.defaultSize * 0.5,
      ),
    ],
  );
}