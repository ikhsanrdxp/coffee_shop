import 'package:coffe_shop/util/color.dart';
import 'package:flutter/material.dart';

class GetstartPage extends StatelessWidget {
  const GetstartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 500,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/Image Onboarding.png"),
                        fit: BoxFit.cover)),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  color: Colors.black,
                ),
              )
            ],
          ),
          const Positioned(
              top: 500,
              left: 30,
              right: 30,
              child: Column(
                children: [
                  Text(
                    "Fall in Love with Coffee in Blissful Delight!",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Inter',
                        fontSize: 34,
                        fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Welcome to our cozy coffee corner, where every cup is a delightful for you.",
                    style: TextStyle(
                        color: AppColor.textColor,
                        fontFamily: 'Inter',
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,
                  ),
                ],
              )),
          Positioned(
              bottom: 0,
              left: 10,
              right: 10,
              child: Container(
                width: 300,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColor.mainColor),
                child: Center(
                  child: Text(
                    "Get Started",
                    style: TextStyle(color: Colors.white,fontSize: 18),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
