import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Utils/global.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              Expanded(
                flex: 4,
                child: Container(
                  height: Get.height,
                  width: Get.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: const Color(0xffF5F5F5),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Expanded(
                flex: 4,
                child: Container(
                  height: Get.height,
                  width: Get.width,
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: const Color(0xffF5F5F5),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Login ",
                              style: Global.size22,
                            ),
                            Text(
                              " or ",
                              style: Global.size22g,
                            ),
                            Text(
                              " sign up ",
                              style: Global.size22,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              height: 60,
                              width: w * .2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(45),
                                color: const Color(0xffFFFFFF),
                              ),
                            ),
                            const Spacer(),
                            Container(
                              height: 60,
                              width: w * .6,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(45),
                                color: const Color(0xffFFFFFF),
                              ),
                            ),
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed('otp');
                          },
                          child: Container(
                            height: 60,
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
                        Row(
                          children: [
                            const SizedBox(
                              width: 20,
                            ),
                            const Expanded(
                              flex: 5,
                              child: Divider(),
                            ),
                            Expanded(
                              flex: 10,
                              child: Center(
                                child: Text(
                                  "Or continue with",
                                  style: Global.size14g,
                                ),
                              ),
                            ),
                            const Expanded(
                              flex: 5,
                              child: Divider(),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                          ],
                        ),
                        Container(
                          height: 60,
                          width: w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(45),
                            color: const Color(0xffFFFFFF),
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 20,
                                  width: 20,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                    image: AssetImage(
                                        "lib/Assets/Logo-google-icon-PNG.png"),
                                  )),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Continue with Google",
                                  style: Global.size16,
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
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "By Continuing, you agree to our",
                          style: Global.size14g,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Terms of Service",
                              style: Global.size14u,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Privacy Policy",
                              style: Global.size14u,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                          ],
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
