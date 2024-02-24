import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_001/Controller/cart_Controller.dart';

class product_Tile extends StatelessWidget {
  final CartController = Get.put(cartController());
  final String name;
  final String description;
  final String price;
  product_Tile({
    super.key,
    required this.name,
    required this.description,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 8),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 90,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    price,
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  InkWell(
                    // onTap: (){
                    //   cartController.addToCart(
                    //     Controller.products[index].price,
                    //   );
                    // },
                    child: Container(
                      color: Colors.blue,
                      width: 110,
                      height: 30,
                      child: Center(
                          child: Text(
                        'Add to Cart',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      )),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
