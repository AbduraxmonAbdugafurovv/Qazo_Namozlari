import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qazonamozlari/core/components/button.dart';
import 'package:qazonamozlari/core/components/onboardingafterimg.dart';
import 'package:qazonamozlari/core/constant/onboarding_constant.dart';
import 'package:qazonamozlari/core/extension/contex_ex.dart';
import 'package:qazonamozlari/screens/onboarding/authcubit/cubit.dart';
import 'package:qazonamozlari/screens/onboarding/state/state.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    return myScaffold();
  }

  Scaffold myScaffold() {
    return Scaffold(
      body: BlocConsumer<OnboardingCubit, OnboardingState>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state is PageOne) {
            return page(context, ImageConstant.imgs[0], "Asosiy emas", "asosiy",
                IconConst.icons[0], PageTwo());
          } else if (state is PageTwo) {
            return page(context, ImageConstant.imgs[1], "Asosiy emas", "asosiy",
                IconConst.icons[0], PageThree());
          } else {
            return page(context, ImageConstant.imgs[2], "Asosiy emas", "asosiy",
                IconConst.icons[0], "");
          }
        },
      ),
    );
  }

  Column page(BuildContext context, img, text, mainText, icon, state) {
    return Column(
      children: [
        Container(
          height: context.height * 0.55,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(img),
            ),
          ),
        ),
        onboardingAfterImg(context, text, mainText, icon),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: InkWell(
            child: mainButton(context, "Ro'yhatdan o'tish"),
            onTap: () {
              checkState(state);
            },
          ),
        )
      ],
    );
  }

  checkState(state) {
  try {
    context.read<OnboardingCubit>().changeState(state);
  } catch (e) {
    Navigator.pushNamedAndRemoveUntil(context, "sign_up", (route) => false);
  }
  }
}
