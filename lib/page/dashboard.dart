import 'package:coffe_shop/util/color.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Positioned(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 280,
                color: Colors.black87,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 60),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Location",
                        style: TextStyle(color: AppColor.textColor),
                      ),
                      const Text(
                        "Blizen, Tanjungbalai",
                        style: TextStyle(color: Colors.white),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 260,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColor.textColor,
                            ),
                            child: const TextField(
                              decoration: InputDecoration(
                                  labelText: 'Search Coffee',
                                  prefixIcon: Icon(Icons.search),
                                  border: InputBorder.none),
                            ),
                          ),
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: AppColor.mainColor),
                            child: const Icon(
                              Icons.menu_open_sharp,
                              color: AppColor.textColor,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
            top: 210,
            left: 20,
            right: 20,
            child: Container(
              width: 350,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                    image: AssetImage("assets/images/Banner 1.png"),
                    fit: BoxFit.cover),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 30,top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 60,
                      height: 25,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Colors.redAccent),
                      child: const Center(
                        child: Text(
                          "Promo",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    const Text(
                      "Buy one get\none FREE",
                      style: TextStyle(
                        fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          fontSize: 30,
                          color: Colors.white),
                    )
                  ],
                ),
              ),
            ))
      ],
    ));
  }
}
