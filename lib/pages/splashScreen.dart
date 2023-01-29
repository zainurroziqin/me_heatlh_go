import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:me_heatlh_go/config/session.dart';
import 'package:me_heatlh_go/config/theme.dart';
import 'package:me_heatlh_go/model/user.dart';
import 'package:me_heatlh_go/pages/home.dart';
import 'package:me_heatlh_go/pages/loginPage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  checkLogin() async {
    User user = await Session.getUser();
    if (user.idUser ==null) {
      Timer(const Duration(seconds: 2), () {
      Get.off(() => const LoginPage());
    });
    } else {
      Timer(const Duration(seconds: 2), () {
      Get.off(() => const HomePage());
    });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    checkLogin();
    super.initState();
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primariColor,
      body: SafeArea(
          bottom: false,
          child: Center(
            child: Image.asset('assets/logo.png'),
          )),
    );
  }
}
