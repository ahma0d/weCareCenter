import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:medical_u/Screens/bottom_page/bottom3.dart';
import 'package:medical_u/constant/shared_constance.dart';
import 'package:medical_u/translatione.dart';
import 'Screens/bottom_page/bottom_page.dart';
import 'Screens/landing_pages/landing_screen.dart';
import 'Screens/sign_in/sign_in.dart';
import 'Screens/sign_up/sign_up.dart';
import 'getx_binding.dart/sign_in_binding.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPref.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: LandingScreen(),
      getPages: [
         GetPage(name: '/sign_in', page: () => SignIn() ,binding: SignInBinding()),
         GetPage(name: '/sign_up', page: () => SingUp(), ),
         GetPage(name: '/HomePage', page: () => HomePage()),
      ],
      translations: Translation(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Inter-Regular.ttf"),
      locale: Locale("en"),
      fallbackLocale: Locale('en'),
      builder: EasyLoading.init(),
    );
  }
}
