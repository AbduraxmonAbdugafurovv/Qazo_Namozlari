import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qazonamozlari/core/components/button.dart';
import 'package:qazonamozlari/core/components/sign/input_field.dart';
import 'package:qazonamozlari/core/components/sign/or_methods.dart';
import 'package:qazonamozlari/core/components/sign/title_icon.dart';
import 'package:qazonamozlari/core/constant/constant.dart';
import 'package:qazonamozlari/core/extension/contex_ex.dart';
import 'package:qazonamozlari/core/widgets/sign/or.dart';
import 'package:qazonamozlari/screens/auth/cubit/cubit.dart';
import 'package:qazonamozlari/screens/auth/state/auth_state.dart';
import 'package:qazonamozlari/service/sign_service.dart';

import '../../../core/components/sign/textbeforeinput.dart';
import '../../../core/widgets/last_questions.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    var email = context.watch<AuthCubit>().emailController;
    var username = context.watch<AuthCubit>().usernameController;
    var passowrd = context.watch<AuthCubit>().passwordController;
    return Scaffold(
      body: BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {
          if (state is AuthErrorState) {
            debugPrint("Hato");
          }
        },
        builder: (context, state) {
          if (state is AuthComplete) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: context.height * 0.1),
                    titleSign("rohaytdanotish".tr()),
                    SizedBox(
                      height: context.height * 0.07,
                    ),
                    inputs(username, context, email, passowrd),
                    SizedBox(
                      height: context.height * 0.05,
                    ),
                    InkWell(
                      child: mainButton(context, "yuborish".tr(), ColorConst.green),
                      onTap: () async {
                        await SignStrapiService.signUpPost(
                          username: username.text,
                          email: email.text,
                          password: passowrd.text,
                        );
                      },
                    ),
                    SizedBox(
                      height: context.height * 0.07,
                    ),
                    orWidget(context),
                    SizedBox(
                      height: context.height * 0.06,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        orMethods(context, "Google", "assets/icons/google.svg"),
                        orMethods(
                            context, "Facebook", "assets/icons/facebook.svg")
                      ],
                    ),
                    SizedBox(
                      height: context.height * 0.05,
                    ),
                    lastQuestionSingUp(context)
                  ],
                ),
              ),
            );
          } else if (state is AuthLoadingState) {
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          } else {
            return const Text("Hato");
          }
        },
      ),
    );
  }

  Form inputs(TextEditingController username, BuildContext context,
      TextEditingController email, TextEditingController passowrd) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          textBeforeInput("usernamekirit".tr()),
          inputfield(username, "Username", Icons.person_outlined),
          SizedBox(
            height: context.height * 0.04,
          ),
          textBeforeInput("emailkirit".tr()),
          inputfield(email, "Email", Icons.email_outlined),
          SizedBox(
            height: context.height * 0.04,
          ),
          textBeforeInput("parolkirit".tr()),
          inputfield(passowrd, "Password", Icons.lock_outline)
        ],
      ),
    );
  }
}
