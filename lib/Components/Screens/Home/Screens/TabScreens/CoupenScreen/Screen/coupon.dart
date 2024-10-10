import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../../Utils/global.dart';

class Coupon extends StatefulWidget {
  const Coupon({super.key});

  @override
  State<Coupon> createState() => _CouponState();
}

class _CouponState extends State<Coupon> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: SafeArea(
          child: SingleChildScrollView(
            physics: ScrollPhysics(),
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(18),
                  height: h * .25,
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
                                Icons.shopping_basket,
                                color: Color(0xff0B9EEC),
                                size: 30,
                              ),
                            ),
                          ),
                        ],
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide.none,
                            ),
                            prefixIcon: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.search,
                                size: 30,
                              ),
                            ),
                            suffixIcon: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.mic_none_outlined,
                                size: 30,
                              ),
                            ),
                            hintText: "Search something",
                            hintStyle: Global.size1606),
                        keyboardType: TextInputType.name,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        right: 16,
                        top: 16,
                        left: 16,
                      ),
                      height: h * .065,
                      padding: EdgeInsets.only(
                        top: 15,
                        left: 10,
                        right: 10,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                        color: Color(0xdffF5F5F5),
                      ),
                      child: Row(
                        children: [
                          Text(
                            "Explore",
                            style: Global.size20,
                          ),
                          Text(
                            " categories",
                            style: Global.size20b,
                          ),
                          Spacer(),
                          Text(
                            "See All",
                            style: Global.size18blue,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: h * .36,
                      margin: EdgeInsets.only(
                        right: 16,
                        bottom: 16,
                        left: 16,
                      ),
                      padding: EdgeInsets.only(
                        top: 10,
                        bottom: 10,
                        left: 10,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                        ),
                        color: Color(0xdffF5F5F5),
                      ),
                      child: SizedBox(
                        height: h * .3,
                        child: GridView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          primary: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            // childAspectRatio: 0.60,
                            crossAxisCount: 2,
                            mainAxisSpacing: 8.0,
                            crossAxisSpacing: 8.0,
                            mainAxisExtent: 78,
                          ),
                          itemCount: 12,
                          itemBuilder: (BuildContext context, int i) =>
                              GestureDetector(
                            onTap: () {},
                            child: GestureDetector(
                              onTap: () {
                                Get.toNamed('/select');
                              },
                              child: Column(
                                children: [
                                  Container(
                                    height: h * .11,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0xffFFFFFF),
                                      border: Border.all(
                                        color: Colors.black.withOpacity(.2),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    "Grocery",
                                    style: Global.size14,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
