import 'package:coupon/Components/Screens/Home/Model/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../../Utils/global.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 18,
            ),
            Container(
              padding: const EdgeInsets.all(18),
              height: h * .40,
              width: w,
              decoration: const BoxDecoration(
                color: Color(0xffF5F5F5),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(
                          left: 20,
                          right: 20,
                          top: 10,
                          bottom: 10,
                        ),
                        height: h * .065,
                        width: w * .55,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.location_on,
                              size: 30,
                              color: Color(0xff0B9EEC),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            FittedBox(
                              fit: BoxFit.cover,
                              child: Text(
                                "Surat, Gujarat",
                                style: Global.size16,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        child: Center(
                          child: Icon(
                            Icons.notifications,
                            color: Color(0xff0B9EEC),
                            size: 30,
                          ),
                        ),
                      ),
                      // Container(
                      //   height: h * .065,
                      //   width: w * .12,
                      //   decoration: BoxDecoration(
                      //     color: Colors.white,
                      //     borderRadius: BorderRadius.circular(40),
                      //   ),
                      //   child: const Icon(
                      //     Icons.notifications,
                      //     color: Color(0xff0B9EEC),
                      //     size: 30,
                      //   ),
                      // ),
                    ],
                  ),
                  Text(
                    "Welcome 🎉",
                    style: Global.size30,
                  ),
                  FittedBox(
                    fit: BoxFit.cover,
                    child: Row(
                      children: [
                        Text(
                          "Jay Khandekha   ",
                          style: Global.size30b,
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                            left: 10,
                            right: 10,
                            top: 5,
                            bottom: 5,
                          ),
                          height: h * .040,
                          width: w * .35,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(
                              color: const Color(0xffD6A11C),
                            ),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.celebration_rounded,
                                color: Color(0xffD6A11C),
                              ),
                              const Spacer(),
                              Text(
                                "Subscribed",
                                style: Global.size12,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      left: 10,
                      right: 10,
                      top: 5,
                      bottom: 5,
                    ),
                    height: h * .045,
                    width: w * .25,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Row(
                      children: [
                        Text(
                          "Today",
                          style: Global.size1206b,
                        ),
                        const Spacer(),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: const Color(0xff000000).withOpacity(.6),
                          size: 30,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    height: h * .095,
                    width: w,
                    decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: w * .14,
                          decoration: BoxDecoration(
                            color: Color(0xffF0F8FF),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Icon(
                            Icons.wallet,
                            color: Color(0xff0B9EEC),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        FittedBox(
                          fit: BoxFit.cover,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Total Ernings",
                                style: Global.size16,
                              ),
                              Text(
                                "₹ 15,000",
                                style: Global.size18b,
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: h,
                          width: w * .20,
                          decoration: BoxDecoration(
                            color: Color(0xffFFFFFF),
                            borderRadius: BorderRadius.circular(100),
                            image: DecorationImage(
                              image: AssetImage(
                                  "lib/Assets/5087356_upscayl_4x_realesrgan-x4plus 1.png"),
                            ),
                          ),
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed('/earning');
                          },
                          child: Container(
                            height: 50,
                            width: w * .14,
                            decoration: BoxDecoration(
                              color: Color(0xff0B9EEC),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Icon(
                              Icons.arrow_forward,
                              color: Color(0xffFFFFFF),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
