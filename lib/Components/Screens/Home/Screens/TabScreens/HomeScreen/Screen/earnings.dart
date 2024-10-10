import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../../Utils/global.dart';

class Earnings extends StatefulWidget {
  const Earnings({super.key});

  @override
  State<Earnings> createState() => _EarningsState();
}

class _EarningsState extends State<Earnings> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(18),
                height: h * .28,
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
                        GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.white,
                            child: Center(
                              child: Icon(
                                Icons.arrow_back_ios_new_outlined,
                              ),
                            ),
                          ),
                        ),
                        const Spacer(),
                        Text(
                          "Earnings",
                          style: Global.size22,
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {},
                          child: CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.white,
                            child: Center(
                              child: Icon(
                                Icons.person_add_alt_1,
                                color: Color(0xff0B9EEC),
                                size: 25,
                              ),
                            ),
                          ),
                        ),
                      ],
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
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
