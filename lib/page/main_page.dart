import 'package:coffe_shop/page/product_grid.dart';
import 'package:coffe_shop/util/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(FontAwesomeIcons.home,color: AppColor.mainColor,),
            Icon(FontAwesomeIcons.heart,color: AppColor.textColor,),
            Icon(FontAwesomeIcons.bagShopping,color: AppColor.textColor,),
            Icon(FontAwesomeIcons.snapchat,color: AppColor.textColor,),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 280,
                  color: Colors.black87,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 60, left: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Location",
                          style: TextStyle(
                              fontFamily: 'Inter', color: AppColor.textColor),
                        ),
                        const Row(
                          children: [
                            Text(
                              "Jakarta,Kembangan",
                              style: TextStyle(
                                  fontFamily: 'Inter',
                                  color: Colors.white,
                                  fontSize: 16),
                            ),
                            Icon(
                              Icons.arrow_drop_down,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 260,
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.black54),
                              child: const TextField(
                                decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.search),
                                    hintText: 'Search Coffee',
                                    hintStyle:
                                        TextStyle(color: AppColor.textColor),
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: AppColor.mainColor),
                              child: const Icon(
                                FontAwesomeIcons.barsStaggered,
                                color: AppColor.textColor,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 200, left: 20),
                  child: Container(
                    width: 350,
                    height: 160,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                            image: AssetImage("assets/images/Banner 1.png"),
                            fit: BoxFit.cover)),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15, left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 65,
                            height: 26,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: Colors.redAccent),
                            child: const Center(
                              child: Text(
                                "Promo",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16),
                              ),
                            ),
                          ),
                          Container(
                            decoration: const BoxDecoration(boxShadow: [
                              BoxShadow(
                                  offset: Offset(-10, 10), spreadRadius: -10)
                            ]),
                            child: const Text(
                              "Buy one get   ",
                              style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 35,
                                  color: Colors.white),
                            ),
                          ),
                          Container(
                            decoration: const BoxDecoration(boxShadow: [
                              BoxShadow(
                                  offset: Offset(-10, 10), spreadRadius: -10)
                            ]),
                            child: const Text(
                              "one FREE   ",
                              style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 35,
                                  color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 90,
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: AppColor.mainColor),
                  child: const Center(
                    child: Text(
                      "All Coffee",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ),
                ),
                Container(
                  width: 90,
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white),
                  child: const Center(
                    child: Text(
                      "Machiato",
                      style: TextStyle(color: Colors.black45, fontSize: 16),
                    ),
                  ),
                ),
                Container(
                  width: 90,
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white),
                  child: const Center(
                    child: Text(
                      "Latte",
                      style: TextStyle(color: Colors.black45, fontSize: 16),
                    ),
                  ),
                ),
                Container(
                  width: 90,
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white),
                  child: const Center(
                    child: Text(
                      "Americano",
                      style: TextStyle(color: Colors.black45, fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
            ProductGrid()
          ],
        ),
      ),
    );
  }
}
