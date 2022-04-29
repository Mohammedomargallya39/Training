import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_app/core/util/constants.dart';
import 'package:training_app/core/util/cubit/cubit.dart';
import 'package:training_app/core/util/cubit/state.dart';
import 'package:training_app/core/util/widgets/default_icon_button.dart';
import 'package:training_app/core/util/widgets/default_text_button.dart';
import 'package:training_app/core/util/widgets/text.dart';
import 'package:training_app/features/login/presentaion/widgets/login_text_form_field.dart';
import '../../../../core/util/widgets/default_button.dart';
import '../../../../core/util/widgets/logo.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit,AppState>(
      listener: (context, state) {},
      builder: (context, state)
      {

        return Scaffold(
          floatingActionButton: DefaultIconButton(
            icon: Icons.language,
            onPressed: ()
            {
              AppCubit.get(context).changeLanguage(value: AppCubit.get(context).arabic);
            },
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
          body: Padding(
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
                          AppText(
                            text: appTranslation(context).userLogin,
                            textColor: blackColor,
                            textSize: 33,
                            textWeight: FontWeight.bold,
                          ),
                          const SizedBox(height: 50),
                          AppText(
                            text: appTranslation(context).emailAddress,
                            textColor: Colors.grey.shade600,
                            textSize: 22,
                            textWeight: FontWeight.w700,
                          ),
                          const SizedBox(height: 10),
                          LoginTextFormField(
                            validationMessage: appTranslation(context).enterYourEmail,
                            controller: emailController,
                            isPassword: false,
                          ),
                          const SizedBox(height: 10),
                          AppText(
                            text: appTranslation(context).password,
                            textColor: Colors.grey.shade600,
                            textSize: 22,
                            textWeight: FontWeight.w700,
                          ),
                          const SizedBox(height: 10),
                          LoginTextFormField(
                            validationMessage: appTranslation(context).enterYourPassword,
                            controller: passwordController,
                            isPassword: AppCubit.get(context).isPassword,
                            suffixIcon: IconButton(
                              icon: Icon(
                                AppCubit.get(context).suffix,
                                color: Colors.grey.shade600,
                              ),
                              onPressed: ()
                              {
                                AppCubit.get(context).changeSuffix();
                              },
                            ),
                          ),
                          const SizedBox(height: 40),
                          DefaultButton(
                            text: appTranslation(context).userLogin,
                            textColor: whiteColor,
                            containerColor: Colors.orangeAccent,
                            onPressed: ()
                            {
                              if (formKey.currentState!.validate())
                              {
                                debugPrint('dozzzze');
                              }
                            },
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              AppText(
                                text: appTranslation(context).dontHaveAccount,
                                textColor: blackColor,
                                textSize: 22,
                                textWeight: FontWeight.w700,
                              ),
                              const SizedBox(width: 10),
                              DefaultTextButton(
                                text: appTranslation(context).newAccount,
                                fontSize: 22,
                                textColor: Colors.orangeAccent,
                                onPressed: ()
                                {

                                },
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              DefaultIconButton(
                                  icon: Icons.facebook,
                                  onPressed: ()
                                  {

                                  }
                              ),
                              const SizedBox(width: 10),
                              DefaultIconButton(
                                  icon: Icons.facebook,
                                  onPressed: ()
                                  {

                                  }
                              ),
                              const SizedBox(width: 10),
                              DefaultIconButton(
                                  icon: Icons.facebook,
                                  onPressed: ()
                                  {

                                  }
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
