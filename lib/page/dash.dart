import 'package:coffe_shop/page/product_view.dart';
import 'package:coffe_shop/util/color.dart';
import 'package:flutter/material.dart';

class Dash extends StatelessWidget {
  const Dash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.white),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.home_filled,
              size: 30,
              color: AppColor.mainColor,
            ),
            Icon(
              Icons.heart_broken,
              size: 30,
              color: Colors.black87,
            ),
            Icon(
              Icons.do_disturb,
              size: 30,
            ),
            Icon(
              Icons.snapchat_sharp,
              size: 30,
            ),
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
                          style: TextStyle(color: AppColor.textColor),
                        ),
                        const Row(
                          children: [
                            Text(
                              "Jakarta,kembangan",
                              style: TextStyle(color: Colors.white),
                            ),
                            Icon(
                              Icons.arrow_drop_down_rounded,
                              color: Colors.white,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 250,
                              height: 45,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color.fromARGB(36, 0, 0, 0)),
                              child: const TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Search coffee',
                                    hintStyle:
                                        TextStyle(color: AppColor.textColor),
                                    suffixIconColor: Colors.white,
                                    prefixIcon: Icon(Icons.search)),
                                style: TextStyle(color: AppColor.textColor),
                              ),
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: AppColor.mainColor),
                              child: const Icon(
                                Icons.menu_open_rounded,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 200, left: 40),
                  child: Container(
                    width: 320,
                    height: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: const DecorationImage(
                            image: AssetImage("assets/images/Banner 1.png"),
                            fit: BoxFit.cover)),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20, left: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 60,
                            height: 23,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.redAccent),
                            child: const Center(
                                child: Text(
                              "Promo",
                              style: TextStyle(color: Colors.white),
                            )),
                          ),
                          Container(
                            decoration: const BoxDecoration(boxShadow: [
                              BoxShadow(
                                  spreadRadius: -8, offset: Offset(-6, 10))
                            ]),
                            child: const Text(
                              "Buy one get   ",
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Container(
                            decoration: const BoxDecoration(boxShadow: [
                              BoxShadow(
                                  spreadRadius: -8, offset: Offset(-6, 10))
                            ]),
                            child: const Text(
                              "one FREE  ",
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 80,
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: AppColor.mainColor),
                  child: const Center(
                    child: Text(
                      "All Coffee",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  width: 80,
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color.fromARGB(169, 248, 246, 246)),
                  child: const Center(
                    child: Text(
                      "Machiato",
                      style: TextStyle(color: Colors.black45),
                    ),
                  ),
                ),
                Container(
                  width: 80,
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color.fromARGB(169, 248, 246, 246)),
                  child: const Center(
                    child: Text(
                      "Latte",
                      style: TextStyle(color: Colors.black45),
                    ),
                  ),
                ),
                Container(
                  width: 80,
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color.fromARGB(169, 248, 246, 246)),
                  child: const Center(
                    child: Text(
                      "Americano",
                      style: TextStyle(color: Colors.black45),
                    ),
                  ),
                ),
              ],
            ),
            ProductView(),
          ],
        ),
      ),
    );
  }
}
