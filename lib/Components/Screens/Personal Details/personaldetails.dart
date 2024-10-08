import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import '../../../Utils/global.dart';

class PersonalDetails extends StatefulWidget {
  const PersonalDetails({super.key});

  @override
  State<PersonalDetails> createState() => _PersonalDetailsState();
}

class _PersonalDetailsState extends State<PersonalDetails> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  XFile? image;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back_ios,
          ),
        ),
        title: Text(
          "Personal Details",
          style: Global.size22,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 71,
                      backgroundColor: Color(0xffF5F5F5),
                      child: CircleAvatar(
                        radius: 59,
                        backgroundColor: Color(0xffB9E4FE),
                        foregroundImage: FileImage(
                          File(
                            "${image?.path}",
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () async {
                            image = await Global.picker.pickImage(
                              source: ImageSource.camera,
                            );
                            setState(() {
                              Global.imagePath = image!.path;
                            });
                          },
                          icon: Icon(
                            Icons.camera_alt,
                            size: 35,
                          ),
                        ),
                        IconButton(
                          onPressed: () async {
                            image = await Global.picker.pickImage(
                              source: ImageSource.gallery,
                            );
                            setState(() {
                              Global.imagePath = image!.path;
                            });
                          },
                          icon: Icon(
                            Icons.photo,
                            size: 35,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                flex: 2,
                child: Container(
                  height: Get.height,
                  width: Get.width,
                  padding: const EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: const Color(0xffF5F5F5),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "What’s your name?",
                          style: Global.size16,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          onChanged: (val) {
                            setState(() {
                              Global.name = val;
                            });
                          },
                          decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide.none,
                              ),
                              hintText: "Enter your name",
                              hintStyle: Global.size1606),
                          keyboardType: TextInputType.name,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "What’s your DOB?",
                          style: Global.size16,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          onChanged: (val) {
                            setState(() {
                              Global.name = val;
                            });
                          },
                          decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              suffixIcon: Icon(
                                Icons.calendar_month,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide.none,
                              ),
                              hintText: "Enter your date of birth",
                              hintStyle: Global.size1606),
                          keyboardType: TextInputType.name,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "What’s your gender?",
                          style: Global.size16,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          onChanged: (val) {
                            setState(() {
                              Global.name = val;
                            });
                          },
                          decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              suffixIcon: Icon(
                                Icons.keyboard_arrow_down,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide.none,
                              ),
                              hintText: "Select gender",
                              hintStyle: Global.size1606),
                          keyboardType: TextInputType.name,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Which state you live in?",
                          style: Global.size16,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          onChanged: (val) {
                            setState(() {
                              Global.name = val;
                            });
                          },
                          decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide.none,
                              ),
                              hintText: "Enter state name",
                              hintStyle: Global.size1606),
                          keyboardType: TextInputType.name,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Which city you live in?",
                          style: Global.size16,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          onChanged: (val) {
                            setState(() {
                              Global.name = val;
                            });
                          },
                          decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide.none,
                              ),
                              hintText: "Enter city name",
                              hintStyle: Global.size1606),
                          keyboardType: TextInputType.name,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.offNamedUntil('/homepage', (routes) => false);
                          },
                          child: Container(
                            height: h * .075,
                            width: w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(45),
                              gradient: const LinearGradient(
                                colors: [
                                  Color(0xff37B8FB),
                                  Color(0xff0075E4),
                                ],
                                stops: [0.0, 1.0],
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Continue",
                                style: Global.size18,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Center(
                          child: FittedBox(
                            fit: BoxFit.cover,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Have a referral code?  ",
                                  style: Global.size1606,
                                ),
                                Text(
                                  "Enter code",
                                  style: Global.size1608u,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
