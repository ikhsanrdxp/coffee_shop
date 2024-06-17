import 'package:coffe_shop/util/color.dart';
import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 550,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/Image Onboarding.png"),
                      fit: BoxFit.cover),
                ),
              ),
              Expanded(
                  child: Container(
                width: double.infinity,
                color: Colors.black,
              ))
            ],
          ),
          const Positioned(
              top: 500,
              right: 30,
              left: 30,
              child: Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Text(
                      "Fall In Love With Coffee In Blissfull Delight!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
              SizedBox(height: 20,),
                    Text(textAlign: TextAlign.center,
                      "Welcome to our crazy coffe corner, where every cup is a delightful for you",
                      style:
                          TextStyle(color: AppColor.textColor, fontFamily: 'Inter'),
                    )
                  ],
                ),
              )),
          Positioned(
              bottom: 0,
              left: 30,
              child: Container(
                width: 350,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: AppColor.mainColor),
                child: const Center(
                  child: Text(
                    "Get Started",
                    style: TextStyle(
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Colors.white),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
