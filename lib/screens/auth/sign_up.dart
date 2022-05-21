import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qazonamozlari/core/constant/constant.dart';

class SingUpPage extends StatefulWidget {
  const SingUpPage({Key? key}) : super(key: key);

  @override
  State<SingUpPage> createState() => _SingUpPageState();
}

class _SingUpPageState extends State<SingUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Row(
              children: [
                Text("Ro'yhatdan o'tish",style: TextStyle(fontSize: FontConst.mediumFont+2,fontWeight: FontWeight.w600),),
                SizedBox(
                  child: SvgPicture.asset("assets/icons/oy.svg"),
                )
              ],
            )
          ],
        ),
      )
    );
  }
}