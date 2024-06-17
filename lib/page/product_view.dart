import 'package:coffe_shop/util/color.dart';
import 'package:flutter/material.dart';

class ProductView extends StatelessWidget {
  final List<Map<String, String>> coffeeList = [
    {
      "name": "Caffe Mocha",
      "description": "Deep foam",
      "price": "\$4.53",
      "image": "assets/images/2.png"
    },
    {
      "name": "Espresso",
      "description": "Strong and bold",
      "price": "\$3.50",
      "image": "assets/images/3.png"
    },
    {
      "name": "Cappuccino",
      "description": "Creamy foam",
      "price": "\$4.00",
      "image": "assets/images/3.png"
    },
    {
      "name": "Latte",
      "description": "Smooth and silky",
      "price": "\$4.25",
      "image": "assets/images/3.png"
    },
  ];
  
  ProductView({super.key});

  @override
  Widget build(BuildContext context) {
    
    return GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: coffeeList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.9,
          crossAxisSpacing: 5,
          mainAxisSpacing: 10
        ),
        itemBuilder: (context, index) {
          final coffee = coffeeList[index];
          return Padding(
            padding: const EdgeInsets.only(left: 20,right: 10),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 10,right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage(coffee["image"]!))),
                    ),
                    Text(
                      coffee["name"]!,
                      style: const TextStyle(
                          fontWeight: FontWeight.w600, fontFamily: 'Inter'),
                    ),
                    Text(
                      coffee["description"]!,
                      style: const TextStyle(
                          color: AppColor.textColor,
                          fontSize: 12,
                          fontFamily: 'Inter'),
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          coffee["price"]!,
                          style: const TextStyle(
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
              ),
            ),
          );
        });
  }
}
