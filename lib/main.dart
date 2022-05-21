import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qazonamozlari/routes/routes.dart';
import 'package:qazonamozlari/screens/onboarding/authcubit/cubit.dart';

void main() async {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => OnboardingCubit(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Qazo namozlari",
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: "onboarding",
        onGenerateRoute: MyRoute.instance.onGenrateRoute);
  }
}
