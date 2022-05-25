import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_storage/get_storage.dart';
import 'package:qazonamozlari/core/init/navigation_service.dart';
import 'package:qazonamozlari/routes/routes.dart';
import 'package:qazonamozlari/screens/auth/cubit/cubit.dart';
import 'package:qazonamozlari/screens/onboarding/authcubit/cubit.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  GetStorage.init();
  runApp(EasyLocalization(
    supportedLocales: const [
      Locale("uz", "UZ"),
      Locale("en", "US"),
      Locale("ru", "RU"),
    ],
    path:
        "/Users/abdurahmonabdugafurov/Desktop/Developing/flutter/Qazonamozlariapp/qazonamozlari/assets/lang/",
    fallbackLocale: const Locale("uz", "UZ"),
    saveLocale: true,
    child: MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => OnboardingCubit()),
        BlocProvider(create: (context) => AuthCubit())
      ],
      child: const MyApp(),
    ),
  ));
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
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        navigatorKey: NavigationService.instance.navigatorKey,
        initialRoute: "splash",
        onGenerateRoute: MyRoute.instance.onGenrateRoute);
  }
}
