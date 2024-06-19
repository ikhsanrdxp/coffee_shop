import 'package:coffe_shop/util/color.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailProduct extends StatelessWidget {
  const DetailProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 30, top: 60, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.arrow_back_ios),
                Text(
                  "Detail",
                  style: TextStyle(
                      fontSize: 19,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600),
                ),
                Icon(FontAwesomeIcons.heart),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              width: 350,
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                      image: AssetImage("assets/images/2.png"),
                      fit: BoxFit.cover)),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Caffe Mocha",
              style: TextStyle(
                  fontSize: 21,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600),
            ),
            Row(
              children: [
                const Text(
                  "Ice/hot",
                  style:
                      TextStyle(fontFamily: 'Inter', color: AppColor.textColor),
                ),
                const SizedBox(
                  width: 120,
                ),
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(54, 174, 174, 174)),
                  child: Icon(
                    Icons.delivery_dining_sharp,
                    color: AppColor.mainColor,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(54, 174, 174, 174)),
                  child: Icon(
                    Icons.coffee_maker_sharp,
                    color: AppColor.mainColor,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(54, 174, 174, 174)),
                  child: Icon(
                    Icons.baby_changing_station_sharp,
                    color: AppColor.mainColor,
                  ),
                ),
              ],
            ),
            const Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  "4.8",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                      fontFamily: 'Inter'),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "(230)",
                  style: TextStyle(color: AppColor.textColor, fontSize: 14),
                ),
              ],
            ),
            const Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
              child: Divider(
                color: AppColor.textColor,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Description",
              style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "A cappucino is an approximately 150 ml(5 oz) beverage,with 25 ml of espresso coffe and 85ml of fresh milk the foot tester is lawko",
              style: TextStyle(
                  fontSize: 15, fontFamily: 'Inter', color: AppColor.textColor),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Size",
              style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 100,
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color.fromARGB(52, 198, 124, 78),
                      border: Border.all(color: AppColor.mainColor)),
                  child: Center(
                    child: Text(
                      "S",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
                Container(
                  width: 100,
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      border: Border.all(color: AppColor.textColor)),
                  child: Center(
                    child: Text(
                      "M",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
                Container(
                  width: 100,
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      border: Border.all(color: AppColor.textColor)),
                  child: Center(
                    child: Text(
                      "L",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 90,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.only(left: 20,top: 0.8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20,),
                  Text("Price",style: TextStyle(
                        color: AppColor.textColor,fontSize: 16
                      ),),
                  Text("\$ 4.53",style: TextStyle(
                        color: AppColor.mainColor,fontSize: 20,fontWeight: FontWeight.bold
                      ),),
                ],
              ),
              Container(
                width: 220,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15), color: AppColor.mainColor),
                    child: Center(
                      child: Text("Buy Now",style: TextStyle(
                        color: Colors.white,fontSize: 20
                      ),),
                    ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
