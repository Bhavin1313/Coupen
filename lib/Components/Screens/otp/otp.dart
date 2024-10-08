import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../Utils/global.dart';

class Otp extends StatefulWidget {
  const Otp({super.key});

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

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
          "OTP Verification",
          style: Global.size22,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              Container(
                height: h * .4,
                width: Get.width,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Color(0xffF5F5F5),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FittedBox(
                        fit: BoxFit.cover,
                        child: Text(
                          "We have sent a verification code to",
                          style: Global.size1608,
                        ),
                      ),
                      Text(
                        "+91-4651263285",
                        style: Global.size16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: h * .06,
                            width: w * .12,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xffFFFFFF),
                              border: Border.all(
                                color: Color(0xff0000000).withOpacity(.4),
                              ),
                            ),
                          ),
                          Container(
                            height: h * .06,
                            width: w * .12,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xffFFFFFF),
                              border: Border.all(
                                color: Color(0xff0000000).withOpacity(.4),
                              ),
                            ),
                          ),
                          Container(
                            height: h * .06,
                            width: w * .12,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xffFFFFFF),
                              border: Border.all(
                                color: Color(0xff0000000).withOpacity(.4),
                              ),
                            ),
                          ),
                          Container(
                            height: h * .06,
                            width: w * .12,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xffFFFFFF),
                              border: Border.all(
                                color: Color(0xff0000000).withOpacity(.4),
                              ),
                            ),
                          ),
                          Container(
                            height: h * .06,
                            width: w * .12,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xffFFFFFF),
                              border: Border.all(
                                color: Color(0xff0000000).withOpacity(.4),
                              ),
                            ),
                          ),
                          Container(
                            height: h * .06,
                            width: w * .12,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xffFFFFFF),
                              border: Border.all(
                                color: Color(0xff0000000).withOpacity(.4),
                              ),
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed('/details');
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
                      Text(
                        "Check text messages for your OTP",
                        style: Global.size14b,
                      ),
                      FittedBox(
                        fit: BoxFit.cover,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Didn’t get the OTP?",
                              style: Global.size1608u,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Resend SMS in 18s",
                              style: Global.size1606,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(20),
                child: GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                    height: 60,
                    width: w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(45),
                      color: Color(0xffFF0000).withOpacity(.1),
                    ),
                    child: Center(
                      child: Text(
                        "Go back to login methods",
                        style: Global.size18r,
                      ),
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

//
// import 'dart:math';
//
// import 'package:flutter/material.dart';
// import '../Components/Utils/global.dart';
// import '../Components/Utils/list.dart';
// import '../Model/festival_model.dart';
//
// class All_Quotes extends StatefulWidget {
//   const All_Quotes({super.key});
//
//   @override
//   State<All_Quotes> createState() => _All_QuotesState();
// }
//
// class _All_QuotesState extends State<All_Quotes> {
//   bool isToggled = true;
//   Random random = Random();
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     Global.QuotsData =
//         FestivalQuoteList.map((e) => Posts.fromMap(Data: e)).toList();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     double h = MediaQuery.of(context).size.height;
//     double w = MediaQuery.of(context).size.width;
//     int RandomIndex = random.nextInt(Global.QuotsData.length);
//     Posts quotes = Global.QuotsData[RandomIndex];
//
//     return Scaffold(
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           setState(() {
//             isToggled = !isToggled;
//           });
//         },
//         child: Icon(
//           (isToggled == true) ? Icons.grid_3x3 : Icons.list,
//           color: Colors.black.withOpacity(.8),
//         ),
//         backgroundColor: Color(0xffebcecc).withOpacity(.74),
//       ),
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text(
//           "FESTIVAL POST",
//           style: TextStyle(
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         backgroundColor: Color(0xffd1eadd),
//         leading: IconButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           icon: Icon(
//             Icons.arrow_back_ios,
//             color: Colors.black,
//           ),
//         ),
//         actions: [
//           IconButton(
//             onPressed: () {
//               setState(() {
//                 showDialog(
//                   context: context,
//                   builder: (context) => AlertDialog(
//                     elevation: 5,
//                     title: Text("${quotes.quote}"),
//                     content: Text("- ${quotes.festival_name}"),
//                   ),
//                 );
//               });
//             },
//             icon: const Icon(
//               Icons.refresh,
//               color: Colors.black,
//             ),
//           )
//         ],
//       ),
//       body: Stack(
//         children: [
//           Container(
//             height: double.infinity,
//             width: double.infinity,
//             decoration: BoxDecoration(
//                 image: DecorationImage(
//                   image: AssetImage(
//                       "lib/Components/Assets/Color Accessibility _ UX Best Practices for Using Color in Design.webp"),
//                   fit: BoxFit.cover,
//                 )),
//           ),
//           (isToggled == true)
//               ? Scrollbar(
//             child: ListView.builder(
//               itemCount: Global.QuotsData.length,
//               itemBuilder: (BuildContext context, int i) => Padding(
//                 padding: const EdgeInsets.all(12.0),
//                 child: GestureDetector(
//                   onTap: () {
//                     Navigator.pushNamed(context, "details_page",
//                         arguments: Global.QuotsData[i]);
//                   },
//                   child: Container(
//                     height: h * .3,
//                     decoration: BoxDecoration(
//                       image: DecorationImage(
//                         image: AssetImage(
//                           "lib/Components/Assets/pngtree-yellow-indian-ten-victories-festival-publicity-background-picture-image_1288032.jpg",
//                         ),
//                         fit: BoxFit.cover,
//                       ),
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.all(10),
//                           child: Text(
//                             "${Global.QuotsData[i].quote}",
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontWeight: FontWeight.bold,
//                               fontSize: 20,
//                             ),
//                           ),
//                         ),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Text(
//                           "- ${Global.QuotsData[i].festival_name}",
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontWeight: FontWeight.w600,
//                             fontSize: 15,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           )
//               : Scrollbar(
//             child: GridView.builder(
//               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 2,
//               ),
//               itemCount: Global.QuotsData.length,
//               itemBuilder: (BuildContext context, int i) =>
//                   GestureDetector(
//                     onTap: () {
//                       Navigator.pushNamed(context, "details_page",
//                           arguments: Global.QuotsData[i]);
//                     },
//                     child: Padding(
//                       padding: const EdgeInsets.all(12.0),
//                       child: Container(
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(20),
//                           image: DecorationImage(
//                             image: AssetImage(
//                               "lib/Components/Assets/depositphotos_75822115-stock-illustration-orange-indian-pattern.jpg",
//                             ),
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Padding(
//                               padding: const EdgeInsets.only(left: 8.0),
//                               child: Container(
//                                 padding: EdgeInsets.all(5),
//                                 height: 90,
//                                 child: SingleChildScrollView(
//                                   child: Text(
//                                     "${Global.QuotsData[i].quote}",
//                                     overflow: TextOverflow.fade,
//                                     style: TextStyle(
//                                       color: Colors.white,
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 20,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             SizedBox(
//                               height: 10,
//                             ),
//                             Align(
//                               alignment: Alignment.bottomRight,
//                               child: Padding(
//                                 padding: const EdgeInsets.all(8.0),
//                                 child: Text(
//                                   "- ${Global.QuotsData[i].festival_name}",
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                     fontWeight: FontWeight.w400,
//                                     fontSize: 13,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
