import 'package:flutter/material.dart';
import 'package:iit_app/screens/account.dart';
import 'package:iit_app/screens/home.dart';
import 'package:iit_app/pages/login.dart';
import 'package:iit_app/screens/settings.dart';
import 'package:iit_app/screens/create.dart';
import 'package:iit_app/services/crud.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: CrudMethods.isLoggedIn()
        ? LoginPage()
        : HomeScreen(), // route for home is '/' implicitly
    routes: <String, WidgetBuilder>{
      // define the routes
      HomeScreen.routeName: (BuildContext context) => HomeScreen(),
      LoginPage.routeName: (BuildContext context) => LoginPage(),
      SettingsScreen.routeName: (BuildContext context) => SettingsScreen(),
      AccountScreen.routeName: (BuildContext context) => AccountScreen(),
      CreateScreen.routeName: (BuildContext context) => CreateScreen(),
    },
  ));
}
