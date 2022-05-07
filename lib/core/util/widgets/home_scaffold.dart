import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:training_app/core/util/cubit/cubit.dart';
import 'package:training_app/core/util/widgets/default_icon_button.dart';
import '../constants.dart';
import '../cubit/state.dart';
import 'main_scaffold.dart';

class HomeScaffold extends StatelessWidget {
  final Widget widget;

  const HomeScaffold({Key? key, required this.widget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        return SafeArea(
          child: MainScaffold(
            scaffold: Scaffold(
              // appBar: AppBar(
              //   leading: IconButton(
              //     onPressed: () {
              //       // scaffoldKey.currentState!.openDrawer();
              //     },
              //     icon: Icon(
              //       Icons.menu,
              //       color: HexColor(mainColor),
              //     ),
              //   ),
              //   // actions: [
              //   //   IconButton(
              //   //     onPressed: () {},
              //   //     icon: const Icon(
              //   //       FontAwesomeIcons.search
              //   //     ),
              //   //   ),
              //   // ],
              //   centerTitle: false,
              //   titleSpacing: 20.0,
              // ),
              appBar: AppBar(
                leading: IconButton(
                  onPressed: ()
                  {
                  },
                  icon: Icon(
                    Icons.menu,
                    color: HexColor(mainColor),
                  ),
                ),
                actions: [
                  IconButton(
                      onPressed: ()
                      {

                      },
                      icon: const Icon(Icons.search),
                      color: HexColor(mainColor),
                  ),
                ],
                centerTitle: false,
                titleSpacing: 20.0,
              ),
              body: widget,
              // floatingActionButton: DefaultIconButton(
              //   icon: Icons.language,
              //   onPressed: () {
              //     AppCubit.get(context).changeLanguage(value:
              //     AppCubit
              //         .get(context)
              //         .isRtl);
              //   },
              // ),
              // floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
               drawer: const Drawer(),
            ),
          ),
        );
      },
    );
  }
}
