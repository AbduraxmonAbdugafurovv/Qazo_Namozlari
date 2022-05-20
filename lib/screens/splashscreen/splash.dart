import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qazonamozlari/core/constant/constant.dart';
import 'package:qazonamozlari/core/extension/contex_ex.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  int time = 2;

  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: time),
      () => Navigator.pushReplacementNamed(context, "lang"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.green,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: context.width * 0.3),
            child: SizedBox(
              width: context.width * 0.4,
              height: context.height * 0.5,
              child: SvgPicture.asset("assets/icons/splash_icon.svg"),
            ),
          ),
        ],
      ),
    );
  }
}
