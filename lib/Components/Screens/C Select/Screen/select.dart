import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
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
      body: DefaultTabController(
        length: 6,
        child: Column(
          children: <Widget>[
            ButtonsTabBar(
              width: 100,
              contentCenter: true,
              unselectedDecoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.red,
                border: Border.all(
                  strokeAlign: 2,
                  width: 2,
                  color: Colors.black,
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blue,
              ),
              unselectedLabelStyle: TextStyle(color: Colors.black),
              labelStyle:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              tabs: [
                Tab(
                  icon: Icon(Icons.directions_car),
                  text: "car",
                ),
                Tab(
                  icon: Icon(Icons.directions_transit),
                  text: "transit",
                ),
                Tab(icon: Icon(Icons.directions_bike)),
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_transit)),
                Tab(icon: Icon(Icons.directions_bike)),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: <Widget>[
                  Center(
                    child: Icon(Icons.directions_car),
                  ),
                  Center(
                    child: Icon(Icons.directions_transit),
                  ),
                  Center(
                    child: Icon(Icons.directions_bike),
                  ),
                  Center(
                    child: Icon(Icons.directions_car),
                  ),
                  Center(
                    child: Icon(Icons.directions_transit),
                  ),
                  Center(
                    child: Icon(Icons.directions_bike),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//
// import 'package:buttons_tabbar/buttons_tabbar.dart';
// import 'package:flutter/material.dart';
//
// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Example(),
//     );
//   }
// }
//
// class Example extends StatefulWidget {
//   Example({Key? key}) : super(key: key);
//
//   @override
//   _ExampleState createState() => _ExampleState();
// }
//
// class _ExampleState extends State<Example> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: DefaultTabController(
//           length: 6,
//           child: Column(
//             children: <Widget>[
//               ButtonsTabBar(
//                 backgroundColor: Colors.red,
//                 unselectedBackgroundColor: Colors.grey[300],
//                 unselectedLabelStyle: TextStyle(color: Colors.black),
//                 labelStyle:
//                 TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//                 tabs: [
//                   Tab(
//                     icon: Icon(Icons.directions_car),
//                     text: "car",
//                   ),
//                   Tab(
//                     icon: Icon(Icons.directions_transit),
//                     text: "transit",
//                   ),
//                   Tab(icon: Icon(Icons.directions_bike)),
//                   Tab(icon: Icon(Icons.directions_car)),
//                   Tab(icon: Icon(Icons.directions_transit)),
//                   Tab(icon: Icon(Icons.directions_bike)),
//                 ],
//               ),
//               Expanded(
//                 child: TabBarView(
//                   children: <Widget>[
//                     Center(
//                       child: Icon(Icons.directions_car),
//                     ),
//                     Center(
//                       child: Icon(Icons.directions_transit),
//                     ),
//                     Center(
//                       child: Icon(Icons.directions_bike),
//                     ),
//                     Center(
//                       child: Icon(Icons.directions_car),
//                     ),
//                     Center(
//                       child: Icon(Icons.directions_transit),
//                     ),
//                     Center(
//                       child: Icon(Icons.directions_bike),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:sliver_tabbar_with_mixed_list/sliver_tabbar_with_mixed_list.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'SliverTabBarWithMixedList Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(title: 'SliverTabBarWithMixedList Demo'),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   List<HeaderItem> sections = [];
//   double listHeaderHeight = 80;
//   double listHeaderSmallHeight = 40;
//   double listSubheaderHeight = 50;
//   double listItemHeight = 100;
//   double variantListItemHeight = 120;
//
//   get njj => null;
//   @override
//   void initState() {
//     super.initState();
//     double offsetStart = 0;
//     List<ChildItem> children = List.generate(
//       5,
//       (index) => Child(itemHeight: listItemHeight),
//     );
//     List<ChildItem> subChildren = List.generate(
//       3,
//       (index) => Child(itemHeight: listItemHeight),
//     );
//     List<ChildItem> subSubChildren = List.generate(
//       2,
//       (index) => Child(itemHeight: listItemHeight),
//     );
//
//     List<ChildItem> variantChildrean = List.generate(
//       4,
//       (index) => VariantChild(itemHeight: variantListItemHeight),
//     );
//     for (int i = 0; i < 11; i++) {
//       double offsetToAdd = 0;
//       Header header;
//       if (i < 10) {
//         header = Header(
//           key: ValueKey(i),
//           name: 'Header item $i',
//           offsetStart: offsetStart,
//           childrenCount: children.length,
//           itemHeight: listHeaderHeight,
//           childrenHeight: listItemHeight,
//           childrean: children,
//           subSections: List.generate(
//             3,
//             (index) {
//               var subSubSection = SubHeader(
//                 key: ValueKey(index),
//                 name: 'SubSubheader item $index',
//                 offsetStart: offsetStart,
//                 childrenCount: subSubChildren.length,
//                 itemHeight: listSubheaderHeight,
//                 childrenHeight: listItemHeight,
//                 childrean: subSubChildren,
//               );
//               offsetToAdd += subSubSection.itemHeight +
//                   (subSubSection.childrenHeight * subSubSection.childrenCount);
//               var section = SubHeader(
//                 key: ValueKey(index),
//                 name: 'Subheader item $index',
//                 offsetStart: offsetStart,
//                 childrenCount: subChildren.length,
//                 itemHeight: listSubheaderHeight,
//                 childrenHeight: listItemHeight,
//                 subSections: [subSubSection],
//                 childrean: subChildren,
//               );
//
//               offsetToAdd +=
//                   listSubheaderHeight + (listItemHeight * subChildren.length);
//
//               return section;
//             },
//           ),
//         );
//       } else {
//         header = Header(
//           key: ValueKey(i),
//           name: 'Header V item $i',
//           offsetStart: offsetStart,
//           childrenCount: children.length,
//           itemHeight: listHeaderSmallHeight,
//           childrenHeight: variantListItemHeight,
//           childrean: variantChildrean,
//           subSections: List.generate(
//             3,
//             (index) {
//               var subSubSection = SubHeader(
//                 key: ValueKey(index),
//                 name: 'SubSubheader V item $index',
//                 offsetStart: offsetStart,
//                 childrenCount: subSubChildren.length,
//                 itemHeight: listSubheaderHeight,
//                 childrenHeight: variantListItemHeight,
//                 childrean: variantChildrean,
//               );
//               offsetToAdd += subSubSection.itemHeight +
//                   (subSubSection.childrenHeight * subSubSection.childrenCount);
//               var section = SubHeader(
//                 key: ValueKey(index),
//                 name: 'Subheader  V item $index',
//                 offsetStart: offsetStart,
//                 childrenCount: subChildren.length,
//                 itemHeight: listSubheaderHeight,
//                 childrenHeight: variantListItemHeight,
//                 subSections: [subSubSection],
//                 childrean: variantChildrean,
//               );
//
//               offsetToAdd += listSubheaderHeight +
//                   (variantListItemHeight * subChildren.length);
//
//               return section;
//             },
//           ),
//         );
//       }
//       offsetStart += offsetToAdd;
//       offsetToAdd = 0;
//
//       offsetStart +=
//           header.itemHeight + (header.childrenHeight * header.childrenCount);
//       header = Header.clone(header, offsetStart);
//       sections.add(header);
//     }
//     sections.last = Header.clone((sections.last as Header), double.infinity);
//   }
//
//   Widget buildHeader(BuildContext context, HeaderItem item) {
//     Header header = item as Header;
//     return Container(
//       color: Colors.orange,
//       child: Center(
//         child: Text(
//           header.name,
//           style: const TextStyle(fontSize: 30),
//         ),
//       ),
//     );
//   }
//
//   Widget buildSubHeader(BuildContext context, covariant SubheaderItem item) {
//     SubHeader header = item as SubHeader;
//     return Container(
//       color: Colors.green,
//       child: Center(
//         child: Text(
//           header.name,
//           style: const TextStyle(fontSize: 30),
//         ),
//       ),
//     );
//   }
//
//   Widget buildChild(BuildContext context, ChildItem item) {
//     return Container(
//       color: Colors.blue.shade400,
//       child: const Center(
//         child: Text(
//           'Child item',
//           style: TextStyle(fontSize: 20),
//         ),
//       ),
//     );
//   }
//
//   Widget buildVariantChild(
//       BuildContext context, covariant VariantChildItem item) {
//     return Container(
//       color: Colors.purple.shade400,
//       child: const Center(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Text(
//               'Variant Child item',
//               style: TextStyle(fontSize: 16),
//             ),
//             Text(
//               'Variant Child Description',
//               style: TextStyle(fontSize: 12),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   double itemExtentBuilder(
//       ListItem item, int index, SliverLayoutDimensions dimensions) {
//     return item.itemHeight;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: CustomScrollView(
//           slivers: [
//             SliverAppBar(
//               pinned: true,
//               title: Text(widget.title),
//             ),
//             SliverTabBarWithMixedList(
//               controller: PrimaryScrollController.of(context),
//               indicatorPadding: const EdgeInsets.symmetric(
//                 horizontal: 8.0,
//                 vertical: 4.0,
//               ),
//               tabBarIndicator: BoxDecoration(
//                 borderRadius: BorderRadius.circular(
//                   25.0,
//                 ),
//                 color: Colors.green,
//               ),
//               listHeaderHeight: listHeaderHeight,
//               listItemHeight: listItemHeight,
//               sections: sections,
//               headerBuilder: buildHeader,
//               subHeaderBuilder: buildSubHeader,
//               childBuilder: buildChild,
//               variantChildBuilder: buildVariantChild,
//               itemExtentBuilder: itemExtentBuilder,
//               generateTabs: (List<HeaderItem> sections) {
//                 return [
//                   TabItem(
//                     headerItem: Header(
//                       key: njj,
//                       name: "name",
//                       offsetStart: 20,
//                       itemHeight: 20,
//                       childrenCount: 1,
//                       childrenHeight: 20,
//                     ),
//                   )
//                 ];
//               },
//               tabBarButtonBackgroundColor: Colors.cyan,
//               tabBarButtonUnselectedBackgroundColor: Colors.black,
//               labelStyle: TextStyle(color: Colors.blue),
//               unselectedLabelStyle: TextStyle(color: Colors.yellow),
//               tabBarButtonRadius: 20,
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class Header extends HeaderItem {
//   Header({
//     required super.key,
//     required this.name,
//     required super.offsetStart,
//     required super.itemHeight,
//     required super.childrenCount,
//     required super.childrenHeight,
//     super.childrean,
//     super.subSections,
//   });
//   final String name;
//
//   Header.params({
//     required super.key,
//     required this.name,
//     required super.offsetStart,
//     required super.itemHeight,
//     required super.childrenCount,
//     required super.childrenHeight,
//     required super.offsetEnd,
//     super.childrean,
//     super.subSections,
//   }) : super.params();
//
//   factory Header.clone(Header header, double offsetEnd) => Header.params(
//         key: header.key,
//         name: header.name,
//         offsetStart: header.offsetStart,
//         itemHeight: header.itemHeight,
//         childrenCount: header.childrenCount,
//         childrenHeight: header.childrenHeight,
//         offsetEnd: offsetEnd,
//         childrean: header.childrean,
//         subSections: header.subSections,
//       );
// }
//
// class SubHeader extends SubheaderItem {
//   SubHeader({
//     required super.key,
//     required this.name,
//     required super.offsetStart,
//     required super.itemHeight,
//     required super.childrenCount,
//     required super.childrenHeight,
//     super.childrean,
//     super.subSections,
//   }) : super();
//   final String name;
// }
//
// class Child extends ChildItem {
//   Child({required super.itemHeight});
// }
//
// class VariantChild extends VariantChildItem {
//   VariantChild({required super.itemHeight});
// }
