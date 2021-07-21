import 'package:app_divisao/modules/create_split/create_split_page.dart';
import 'package:app_divisao/modules/error/error_page.dart';
import 'package:app_divisao/modules/home/home_page.dart';
import 'package:app_divisao/modules/login/login_page.dart';
import 'package:app_divisao/modules/members_itens/members_itens_page.dart';
import 'package:app_divisao/modules/splash/splash_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Split.it",
      initialRoute: "/splash",
      routes: {
        "/splash": (context) => SplashPage(),
        "/login": (context) => LoginPage(),
        "/error": (context) => ErrorPage(),
        "/home": (context) => HomePage(),
        "/create_split": (context) => CreateSplitPage(),
        "/members_itens": (context) => MembersItensPage()
      },
    );
  }
}
