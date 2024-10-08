import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../Utils/global.dart';

class Select extends StatefulWidget {
  const Select({super.key});

  @override
  State<Select> createState() => _SelectState();
}

class _SelectState extends State<Select> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 78,
        backgroundColor: const Color(0xffF5F5F5),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black.withOpacity(.60),
          ),
        ),
        leadingWidth: 70,
        title: Text(
          "Restaurants",
          style: Global.size22,
        ),
      ),
    );
  }
}
