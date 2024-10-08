import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../../Utils/global.dart';

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 18,
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: const EdgeInsets.all(18),
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
                              height: h * .085,
                              width: w * .65,
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
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Delivery to",
                                        style: Global.size16,
                                      ),
                                      Text(
                                        "Mota Varachha, Surat",
                                        overflow: TextOverflow.ellipsis,
                                        style: Global.size1206b,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const Spacer(),
                            const CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.white,
                              child: Center(
                                child: Icon(
                                  Icons.shopping_bag,
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
                                icon: const Icon(
                                  Icons.search,
                                  size: 30,
                                ),
                              ),
                              suffixIcon: IconButton(
                                onPressed: () {},
                                icon: const Icon(
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
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    margin: EdgeInsets.only(
                      left: 8,
                      right: 8,
                    ),
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        mainAxisSpacing: 8.0,
                        crossAxisSpacing: 8.0,
                        mainAxisExtent: 115,
                      ),
                      itemCount: 8,
                      itemBuilder: (BuildContext context, int i) =>
                          GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Container(
                                height: h * .12,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xffB9E4FE),
                                ),
                                child: Container(
                                  height: h * .05,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xff0B9EEC),
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
                Expanded(
                  flex: 2,
                  child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int i) => Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.all(10),
                          height: h * .38,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xdffF5F5F5),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Mobiles",
                                    style: Global.size20,
                                  ),
                                  Spacer(),
                                  Text(
                                    "See All",
                                    style: Global.size18s,
                                  ),
                                ],
                              ),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Column(
                                        children: [
                                          Stack(
                                            children: [
                                              Container(
                                                height: h * .20,
                                                width: w * .4,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  color: Color(0xdffFFFFFF),
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                      "lib/Assets/Group 6897.png",
                                                    ),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                top: 10,
                                                left: 10,
                                                child: Container(
                                                  height: h * .03,
                                                  width: w * .2,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            6),
                                                    color: Color(0xdffFFFFFF),
                                                  ),
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    "30% OFF",
                                                    style: Global.size10,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Container(
                                            padding: EdgeInsets.all(12),
                                            height: h * .086,
                                            width: w * .4,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "OnePlus 12R 5G₹59,000",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: Global.size14,
                                                ),
                                                Spacer(),
                                                Text(
                                                  "₹59,000",
                                                  style: Global.size14,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Column(
                                        children: [
                                          Container(
                                            height: h * .20,
                                            width: w * .4,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Color(0xdffFFFFFF),
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.all(12),
                                            height: h * .086,
                                            width: w * .4,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "OnePlus 12R 5G₹59,000",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: Global.size14,
                                                ),
                                                Spacer(),
                                                Text(
                                                  "₹59,000",
                                                  style: Global.size14,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Column(
                                        children: [
                                          Container(
                                            height: h * .20,
                                            width: w * .4,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Color(0xdffFFFFFF),
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.all(12),
                                            height: h * .086,
                                            width: w * .4,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "OnePlus 12R 5G₹59,000",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: Global.size14,
                                                ),
                                                Spacer(),
                                                Text(
                                                  "₹59,000",
                                                  style: Global.size14,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
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
          ),
    );
  }
}
