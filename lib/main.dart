import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipes/models/navItem.dart';
import 'package:recipes/screens/home/home_sceen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>NavItems(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Recipes App',
        theme: ThemeData(
          //backgroundColor: Colors.white,
          scaffoldBackgroundColor: Colors.white,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          appBarTheme: const AppBarTheme(
            color: Colors.white,
            elevation: 0,
          ),
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
