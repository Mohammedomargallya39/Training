import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:training_app/core/util/widgets/my_button.dart';
import 'package:training_app/core/util/widgets/my_form.dart';
import 'package:training_app/core/util/widgets/my_text_button.dart';
import '../../../../core/util/constants.dart';
import '../../../../core/util/cubit/cubit.dart';
import '../../../../core/util/cubit/state.dart';
import '../../../../core/util/widgets/default_button.dart';
import '../../../../core/util/widgets/default_icon_button.dart';
import '../../../../core/util/widgets/default_text_button.dart';
import '../../../../core/util/widgets/logo.dart';
import '../../../../core/util/widgets/text.dart';
import '../../../../core/util/widgets/text_form_field.dart';

class LoginWidget extends StatelessWidget {
  LoginWidget({Key? key}) : super(key: key);

  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const Expanded(
                flex: 1,
                child: Center(
                  child: AppLogo(),
                ),
              ),
              Expanded(
                flex: 2,
                child: Form(
                  key: formKey,
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          appTranslation(context).userLogin,
                          style:
                              Theme.of(context).textTheme.headline6!.copyWith(
                                    fontWeight: FontWeight.w700,
                                  ),
                        ),
                        space50Vertical(context),
                        MyForm(
                          label: appTranslation(context).emailAddress,
                          controller: emailController,
                          type: TextInputType.emailAddress,
                          error: appTranslation(context).enterYourEmail,
                          isPassword: false,
                        ),
                        space10Vertical(context),
                        MyForm(
                          label: appTranslation(context).password,
                          controller: passwordController,
                          type: TextInputType.visiblePassword,
                          error: appTranslation(context).enterYourPassword,
                          isPassword: true,
                        ),
                        space40Vertical(context),
                        MyButton(
                            onPressed: (){},
                            text: appTranslation(context).userLogin,
                        ),
                        space20Vertical(context),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 3,
                              child: Text(
                                appTranslation(context).dontHaveAccount,
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1!
                                    .copyWith(fontWeight: FontWeight.w700),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: MyTextButton(
                                title: appTranslation(context).newAccount,
                              ),
                            )
                          ],
                        ),
                        space20Vertical(context),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            DefaultIconButton(
                                icon: Icons.facebook, onPressed: () {}),
                           space10Horizontal(context),
                            DefaultIconButton(
                                icon: Icons.facebook, onPressed: () {}),
                            space10Horizontal(context),
                            DefaultIconButton(
                                icon: Icons.facebook, onPressed: () {}),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
