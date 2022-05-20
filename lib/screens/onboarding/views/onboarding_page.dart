import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:qazonamozlari/core/extension/contex_ex.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final _pageController = PageController();
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: PageView.builder(
       controller: _pageController,
       itemBuilder: (context,index){
       return Column(
         children: [
           SizedBox(
             height: context.height*0.6,
           ),
           SizedBox(
             height: context.height*0.4,
           ),
         ],
       );
     })
   );
  }
}