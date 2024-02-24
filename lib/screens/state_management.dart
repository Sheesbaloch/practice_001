import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_001/Controller/cart_Controller.dart';
import 'package:practice_001/Controller/shopping_controller.dart';

class StateManagement extends StatelessWidget {
  final shoppingController = Get.put(ShoppingController());
  final CartController = Get.put(cartController());
  StateManagement({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 20, 139, 107),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(
                child: GetX<ShoppingController>(builder: (controller) {
                  return ListView.builder(
                      itemCount: controller.products.length,
                      itemBuilder: (content, index) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 8, bottom: 8),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 90,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15)),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, right: 20, top: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            '${controller.products[index].productName}',
                                            style: const TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            width: 30,
                                          ),
                                          Obx(() => IconButton(
                                              onPressed: () {
                                                controller
                                                    .products[index].isFavourite
                                                    .toggle();
                                              },
                                              icon: controller.products[index]
                                                      .isFavourite.value
                                                  ? Icon(
                                                      Icons.heart_broken,
                                                    )
                                                  : Icon(
                                                      Icons.heart_broken,
                                                      color: Colors.red,
                                                    )))
                                          // GetX<cartController>(
                                          //     builder: (controller) {
                                          //   return IconButton(onPressed: (){}, icon: controller.Product[index].isFavourite)
                                          // }),
                                        ],
                                      ),
                                      Text(
                                        '${controller.products[index].productDescription}',
                                        style: const TextStyle(
                                          fontSize: 15,
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        '\$${controller.products[index].price}',
                                        style: const TextStyle(
                                          fontSize: 25,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          CartController.addToCart(
                                            controller.products[index],
                                          );
                                        },
                                        child: Container(
                                          color: Colors.blue,
                                          width: 110,
                                          height: 30,
                                          child: const Center(
                                              child: Text(
                                            'Add to Cart',
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.white),
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
                      });
                }),
              ),
              GetX<cartController>(builder: (controller) {
                return Text(
                  'Total Amount : \$ ${controller.totalPrice}',
                  style: const TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange),
                );
              }),
              const SizedBox(
                height: 80,
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        icon: const Icon(Icons.shopping_bag),
        label: GetX<cartController>(builder: (controller) {
          return Text(controller.count.toString());
        }),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Get.changeTheme(ThemeData.dark());
      //   },
      //   child: Center(child: Text('Dark Mode')),
      // ),
      // floatingActionButton: FloatingActionButton(onPressed: () {
      //   Get.snackbar('Hi', ('message'));
      // }),
      // floatingActionButton: FloatingActionButton(onPressed: () {
      //   Get.defaultDialog(
      //       title: 'Hello superman',
      //       content: Text('There are alot of supermans'));
      // }),
    );
  }
}
