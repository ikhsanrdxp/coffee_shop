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
              padding: const EdgeInsets.only(left: 30, top: 20),
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
                  Container(
                    decoration: const BoxDecoration(boxShadow: [
                      BoxShadow(
                        spreadRadius: -10,
                        color: Colors.black,
                        offset: Offset(-6, 10),
                      ),
                    ]),
                    child: const Text(
                      "Buy one get    ",
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          fontSize: 30,
                          color: Colors.white),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(boxShadow: [
                      BoxShadow(
                        spreadRadius: -10,
                        color: Colors.black,
                        offset: Offset(-6, 10),
                      ),
                    ]),
                    child: const Text(
                      "one FREE    ",
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          fontSize: 30,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
            top: 400,
            left: 20,
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: AppColor.mainColor),
                      child: const Center(
                        child: Text(
                          "All Coffee",
                          style: TextStyle(
                              color: Colors.white, fontFamily: 'Inter'),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.black12),
                      child: const Center(
                        child: Text(
                          "Machiato",
                          style: TextStyle(fontFamily: 'Inter'),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.black12),
                      child: const Center(
                        child: Text(
                          "Latte",
                          style: TextStyle(fontFamily: 'Inter'),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.black12),
                      child: const Center(
                        child: Text(
                          "Americano",
                          style: TextStyle(fontFamily: 'Inter'),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )),
        Positioned(
            top: 430,
            left: 30,
            right: 40,
            child: SizedBox(
              height: 300,
              child: GridView.builder(
                  itemCount: 4,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      childAspectRatio: 0.7),
                  itemBuilder: (context, index) {
                    return Container(
                      width: double.maxFinite,
                      height: double.maxFinite,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black,
                                blurRadius: 1,
                                blurStyle: BlurStyle.inner),
                          ]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                              width: 120,
                              height: 120,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: const DecorationImage(
                                    image: AssetImage("assets/images/2.png"),
                                    fit: BoxFit.cover),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(Icons.star,color: Colors.amber,size: 14,),
                                    Text("4.8",style: TextStyle(color: Colors.white,fontSize: 10),)
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              "Caffe Mocha",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Inter'),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              "Deep foam",
                              style: TextStyle(
                                  color: AppColor.textColor,
                                  fontSize: 12,
                                  fontFamily: 'Inter'),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Text(
                                "\$ 4.53",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: AppColor.mainColor),
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 16,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    );
                  }),
            )),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                width: double.infinity,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.home_filled,size: 30,color: AppColor.mainColor,),
                      Icon(Icons.heart_broken,size: 30,color: Colors.black87,),
                      Icon(Icons.do_disturb,size: 30,),
                      Icon(Icons.snapchat_sharp,size: 30,),
                    ],
                  ),
                ),
            ))
      ],
    ));
  }
}
