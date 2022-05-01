import 'package:flutter/cupertino.dart';
import 'package:training_app/features/register/presentaion/widgets/register_widget.dart';
import '../../../../core/util/widgets/hide_keyboard_page.dart';
import '../../../../core/util/widgets/home_scaffold.dart';
import '../../../../core/util/widgets/main_scaffold.dart';
import '../../../login/presentaion/widgets/login_widget.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomeScaffold(
      widget: HideKeyboardPage(
        child: RegisterWidget(),
      ),
    );
  }
}
