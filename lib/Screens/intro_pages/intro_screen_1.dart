import 'package:flutter/material.dart';

import '../../constant/app_asset.dart';

class IntroScreen1 extends StatelessWidget {
  const IntroScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 50),
          child: Image.asset(
            AppAssets.intro1Image,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 40),
          child: Text(
            "Welcome to We Care ",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w700, fontSize: 24),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "Welcome to our medical app! We're excited to",
          style: TextStyle(
              color: Color(0xff667085),
              fontWeight: FontWeight.w400,
              fontSize: 14),
        ),
        const SizedBox(
          height: 3,
        ),
        const Text(
          "help you manage your healthcare from the",
          style: TextStyle(
              color: Color(0xff667085),
              fontWeight: FontWeight.w400,
              fontSize: 14),
        ),
        const SizedBox(
          height: 3,
        ),
        const Text(
          "comfort of your phone.",
          style: TextStyle(
              color: Color(0xff667085),
              fontWeight: FontWeight.w400,
              fontSize: 14),
        ),
      ],
    );
  }
}
