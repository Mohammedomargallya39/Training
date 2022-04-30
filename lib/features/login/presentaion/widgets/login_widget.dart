import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_app/core/util/widgets/my_form.dart';
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
    return BlocConsumer<AppCubit,AppState>(
      listener: (context, state) {},
      builder: (context, state)
      {
        return Directionality(
          textDirection: AppCubit.get(context).arabic? TextDirection.ltr: TextDirection.rtl,
          child: Scaffold(
            floatingActionButton: DefaultIconButton(
              icon: Icons.language,
              onPressed: ()
              {
                AppCubit.get(context).changeLanguage(value: AppCubit.get(context).arabic);
              },
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
            body: InkWell(
              onTap: ()
              {
                FocusScope.of(context).requestFocus(FocusNode());
              },
              child: Padding(
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
                                fontFamily: AppCubit.get(context).arabic? 'Cairo' : 'Poppins',
                                text: appTranslation(context).userLogin,
                                textColor: blackColor,
                                textSize: 25,
                                textWeight: FontWeight.w700,
                              ),
                               const SizedBox(height: 50),
                              // AppText(
                              //   text: appTranslation(context).emailAddress,
                              //   textColor: Colors.grey.shade600,
                              //   textSize: 22,
                              //   textWeight: FontWeight.w700,
                              // ),
                              // const SizedBox(height: 10),
                              // LoginTextFormField(
                              //   validationMessage: appTranslation(context).enterYourEmail,
                              //   controller: emailController,
                              //   isPassword: false,
                              // ),
                              MyForm(
                                  label: appTranslation(context).emailAddress,
                                  controller: emailController,
                                  type: TextInputType.emailAddress,
                                  error: appTranslation(context).enterYourEmail,
                                  isPassword: false,
                              ),
                              const SizedBox(height: 10),
                              MyForm(
                                label: appTranslation(context).password,
                                controller: passwordController,
                                type: TextInputType.visiblePassword,
                                error: appTranslation(context).enterYourPassword,
                                isPassword: true,
                              ),
                              // AppText(
                              //   text: appTranslation(context).password,
                              //   textColor: Colors.grey.shade600,
                              //   textSize: 22,
                              //   textWeight: FontWeight.w700,
                              // ),
                              // const SizedBox(height: 10),
                              // LoginTextFormField(
                              //   validationMessage: appTranslation(context).enterYourPassword,
                              //   controller: passwordController,
                              //   isPassword: AppCubit.get(context).isPassword,
                              //   suffixIcon: IconButton(
                              //     icon: Icon(
                              //       AppCubit.get(context).suffix,
                              //       color: Colors.grey.shade600,
                              //     ),
                              //     onPressed: ()
                              //     {
                              //       AppCubit.get(context).changeSuffix();
                              //     },
                              //   ),
                              // ),
                              const SizedBox(height: 40),
                              DefaultButton(
                                text: appTranslation(context).userLogin,
                                textColor: whiteColor,
                                fontFamily: AppCubit.get(context).arabic? 'Cairo' : 'Poppins',
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
                                    fontFamily: AppCubit.get(context).arabic? 'Cairo' : 'Poppins',
                                    text: appTranslation(context).dontHaveAccount,
                                    textColor: blackColor,
                                    textSize: 18,
                                    textWeight: FontWeight.w700,
                                  ),
                                  const SizedBox(width: 10),
                                  DefaultTextButton(
                                    text: appTranslation(context).newAccount,
                                    fontSize: 18,
                                    textColor: Colors.orangeAccent,
                                    fontFamily: AppCubit.get(context).arabic? 'Cairo' : 'Poppins',
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
            ),
          ),
        );
      },
    );
  }
}
