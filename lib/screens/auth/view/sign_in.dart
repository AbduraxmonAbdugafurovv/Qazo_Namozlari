import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qazonamozlari/core/components/button.dart';
import 'package:qazonamozlari/core/components/sign/input_field.dart';
import 'package:qazonamozlari/core/components/sign/or_methods.dart';
import 'package:qazonamozlari/core/components/sign/textbeforeinput.dart';
import 'package:qazonamozlari/core/components/sign/title_icon.dart';
import 'package:qazonamozlari/core/constant/constant.dart';
import 'package:qazonamozlari/core/extension/contex_ex.dart';
import 'package:qazonamozlari/core/widgets/sign/or.dart';
import 'package:qazonamozlari/screens/auth/cubit/cubit.dart';
import 'package:qazonamozlari/screens/auth/state/auth_state.dart';

import '../../../core/widgets/last_questions.dart';
import '../../../service/sign_service.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    var email = context.watch<AuthCubit>().emailController;
    var password = context.watch<AuthCubit>().passwordController;
    return Scaffold(
      body: BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state is AuthComplete) {
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: context.height * 0.08,
                    ),
                    titleSign("kirish".tr()),
                    SizedBox(
                      height: context.height * 0.12,
                    ),
                    textBeforeInput("emailkirit".tr()),
                    inputfield(email, "Email", Icons.email_outlined),
                    SizedBox(
                      height: context.height * 0.07,
                    ),
                    textBeforeInput("parolkirit".tr()),
                    inputfield(password, "Password", Icons.lock_outlined),
                    SizedBox(
                      height: context.height * 0.1,
                    ),
                    InkWell(
                      child: mainButton(
                          context, "yuborish".tr(), ColorConst.green),
                      onTap: () async {
                        await SignStrapiService.signInPost(
                            email: email.text, password: password.text);
                      },
                    ),
                    SizedBox(
                      height: context.width * 0.12,
                    ),
                    orWidget(context),
                    SizedBox(
                      height: context.width * 0.08,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        orMethods(context, "Google", "assets/icons/google.svg"),
                        SizedBox(
                          width: context.width * 0.07,
                        ),
                        orMethods(
                            context, "Facebook", "assets/icons/facebook.svg"),
                      ],
                    ),
                    SizedBox(
                      height: context.height * 0.1,
                    ),
                    lastQuestion("yangimisiz".tr(), "royhatdanoting".tr(),
                        "royhatdanoting".tr(), context),
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
}
