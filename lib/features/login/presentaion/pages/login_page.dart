import 'package:flutter/material.dart';
import 'package:training_app/core/util/widgets/hide_keyboard_page.dart';
import 'package:training_app/core/util/widgets/main_scaffold.dart';
import 'package:training_app/features/login/presentaion/widgets/login_widget.dart';

import '../../../../core/util/widgets/home_scaffold.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomeScaffold(
      widget: HideKeyboardPage(child: LoginWidget(),),
    );
  }
}
