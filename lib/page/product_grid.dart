import 'package:coffe_shop/model/product_list.dart';
import 'package:coffe_shop/util/color.dart';
import 'package:flutter/material.dart';

class ProductGrid extends StatelessWidget {
  const ProductGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final Product myProduct = Product();

    return Container(
      margin: EdgeInsets.only(left: 30, right: 30),
      height: 700,
      child: GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: myProduct.coffeeList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: 0.7,
          ),
          itemBuilder: (context, index) {
            final coffe = myProduct.coffeeList[index];
            return Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.only(top: 3, left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage(coffe["image"]!))),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 14,
                            ),
                            Text(
                              "4.8",
                              style: const TextStyle(
                                  fontSize: 12,color: Colors.white,
                                  fontFamily: 'Inter',),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Text(
                      coffe["name"]!,
                      style: const TextStyle(
                          fontSize: 18,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      coffe["description"]!,
                      style: const TextStyle(
                          fontSize: 12,
                          fontFamily: 'Inter',
                          color: AppColor.textColor),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          coffe["price"]!,
                          style: const TextStyle(
                              fontSize: 18,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600),
                        ),
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: AppColor.mainColor),
                          child: const Center(
                              child: Icon(
                            Icons.add,
                            color: Colors.white,
                          )),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
