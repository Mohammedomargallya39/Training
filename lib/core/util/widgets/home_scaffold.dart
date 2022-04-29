import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import '../constants.dart';
import 'main_scaffold.dart';

class HomeScaffold extends StatelessWidget {
  final Widget widget;

  const HomeScaffold({Key? key, required this.widget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      scaffold: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              // scaffoldKey.currentState!.openDrawer();
            },
            icon: Icon(
              Icons.menu,
              color: HexColor(mainColor),
            ),
          ),
          // actions: [
          //   IconButton(
          //     onPressed: () {},
          //     icon: const Icon(
          //       FontAwesomeIcons.search
          //     ),
          //   ),
          // ],
          centerTitle: false,
          titleSpacing: 20.0,
        ),
        body: widget,
        drawer: const Drawer(),
      ),
    );
  }
}
