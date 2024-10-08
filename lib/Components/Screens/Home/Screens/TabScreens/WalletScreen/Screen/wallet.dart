import 'package:flutter/material.dart';

class Wallet extends StatefulWidget {
  const Wallet({super.key});

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: h * .24,
        backgroundColor: Color(0xffF5F5F5),
      ),
      body: SliverGrid(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200.0,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
          childAspectRatio: 4.0,
        ),
        delegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) {
            return Container(
              alignment: Alignment.center,
              color: Colors.teal,
              child: Text('grid item '),
            );
          },
          childCount: 20,
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods
    );
  }
}

class BodyWidget {}
