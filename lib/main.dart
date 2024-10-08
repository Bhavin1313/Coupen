import 'package:coupon/Components/Screens/Home/Screens/TabScreens/HomeScreen/Screen/earnings.dart';
import 'package:coupon/Components/Screens/Personal%20Details/personaldetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import 'Components/Screens/C Select/Screen/select.dart';
import 'Components/Screens/Home/Controller/indexcontroller.dart';
import 'Components/Screens/Home/Screens/home.dart';
import 'Components/Screens/Login/login.dart';
import 'Components/Screens/otp/otp.dart';

void main() async {
  runApp(
    MultiProvider(
      providers: [
        ListenableProvider<ChangeIndexProvider>(
          create: (context) => ChangeIndexProvider(),
        ),
      ],
      builder: (context, child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(useMaterial3: true),
        getPages: [
          GetPage(
            name: '/',
            page: () => LoginPage(),
          ),
          GetPage(
            name: '/otp',
            page: () => Otp(),
          ),
          GetPage(
            name: '/details',
            page: () => PersonalDetails(),
          ),
          GetPage(
            name: '/homepage',
            page: () => HomePage(),
          ),
          GetPage(
            name: '/earning',
            page: () => Earnings(),
          ),
          GetPage(
            name: '/select',
            page: () => Select(),
          ),
        ],
      ),
    ),
  );
}
