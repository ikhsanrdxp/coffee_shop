import 'package:coffe_shop/util/color.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailOrder extends StatelessWidget {
  const DetailOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_back_ios),
                  Text(
                    "Order",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        fontFamily: 'Inter'),
                  ),
                  Icon(
                    Icons.circle,
                    color: Colors.transparent,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              width: 350,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.black12),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 6, top: 4, bottom: 4),
                    child: Container(
                      width: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColor.mainColor,
                      ),
                      child: const Center(
                        child: Text(
                          "Deliver",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Inter',
                              color: Colors.white,
                              fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  const Expanded(
                    child: const Center(
                      child: Text(
                        "Pick Up",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Inter',
                            fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Delivery Address",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Inter',
                  fontSize: 18),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Jl. Kpg Sutoyo",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Inter',
                  fontSize: 16),
            ),
            const Text(
              "Jl. Kpg Sutoyo No.620, Bilzen, Tanjungbalai",
              style: TextStyle(
                  fontFamily: 'Inter', fontSize: 14, color: AppColor.textColor),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  width: 150,
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: AppColor.textColor)),
                  child: const Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.edit_location_alt,
                        size: 20,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Edit Address",
                        style: TextStyle(fontFamily: 'Inter', fontSize: 15),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: 120,
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: AppColor.textColor)),
                  child: const Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.note_alt_rounded,
                        size: 20,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Add Note",
                        style: TextStyle(fontFamily: 'Inter', fontSize: 15),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 8, left: 10, right: 30),
              child: Divider(
                color: AppColor.textColor,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: AssetImage("assets/images/2.png"))),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Caffe Mocha",
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    Text(
                      "Deep Foam",
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 14,
                          color: AppColor.textColor),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 50,
                ),
                Row(
                  children: [
                    Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white),
                        child: const Icon(
                          Icons.remove,
                          color: AppColor.textColor,
                          size: 18,
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "1",
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white),
                        child: const Icon(
                          Icons.add,
                          size: 18,
                        )),
                  ],
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 8, left: 10, right: 30),
              child: Divider(
                color: AppColor.textColor,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                  border: Border.all(color: AppColor.textColor),
                  borderRadius: BorderRadius.circular(20)),
              child: const Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Icon(Icons.percent),
                    Text(
                      "1 Discount is Applies",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Payment Summary",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Inter',
                  fontSize: 18),
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Price",
                      style: TextStyle(fontFamily: 'Inter', fontSize: 18),
                    ),
                    Text(
                      "Delivery Fee",
                      style: TextStyle(fontFamily: 'Inter', fontSize: 18),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "\$4.53",
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Text(
                          "\$2.0",
                          style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              fontFamily: 'Inter',
                              fontSize: 18),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "\$1.0",
                          style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 110,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 8, right: 20),
          child: Column(
            children: [
              const Row(
                children: [
                  Icon(
                    Icons.account_balance_wallet_rounded,
                    color: AppColor.mainColor,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Cash/Wallet",
                        style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "\$ 5.53",
                        style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 16,
                            color: AppColor.mainColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 170,
                  ),
                  Icon(
                    Icons.arrow_drop_down_outlined,
                    size: 30,
                  )
                ],
              ),
              Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColor.mainColor),
                child: const Center(
                  child: Text(
                    "Order",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold,fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
