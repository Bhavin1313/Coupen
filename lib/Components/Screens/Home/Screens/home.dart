import 'dart:ui';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:coupon/Components/Screens/Home/Screens/TabScreens/CoupenScreen/Screen/coupon.dart';
import 'package:coupon/Components/Screens/Home/Screens/TabScreens/ShopScreen/Screen/shop.dart';
import 'package:coupon/Components/Screens/Home/Screens/TabScreens/WalletScreen/Screen/wallet.dart';
import 'package:coupon/Components/Screens/Home/Screens/TabScreens/ProfileScreen/Screen/profile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Controller/indexcontroller.dart';
import 'TabScreens/HomeScreen/Screen/homescreen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> pageList = [
    Home(),
    Shop(),
    Wallet(),
    Coupon(),
    Profile(),
  ];
  final iconList = <IconData>[
    Icons.home_outlined,
    Icons.shopping_bag_outlined,
    Icons.wallet,
    Icons.credit_card_sharp,
    Icons.person_outline_sharp,
  ];
  PageController pageController = PageController();
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF), //destination screen

      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: iconList,
        activeIndex: Provider.of<ChangeIndexProvider>(context, listen: true)
            .changePageIndex
            .index,

        height: 70,
        iconSize: 32,
        elevation: 100,

        inactiveColor: Color(0xff000000),
        activeColor: Color(0xff0075E4),
        gapLocation: GapLocation.none,
        notchSmoothness: NotchSmoothness.sharpEdge,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
        onTap: (val) {
          Provider.of<ChangeIndexProvider>(context, listen: false)
              .ChangeIndex(val: val);
          pageController.animateToPage(val,
              duration: Duration(microseconds: 150), curve: Curves.linear);
        },

        //other params
      ),
      body: PageView(
        onPageChanged: (val) {
          Provider.of<ChangeIndexProvider>(context, listen: false)
              .ChangeIndex(val: val);
        },
        controller: pageController,
        children: pageList,
      ),
    );
  }
}
