import 'package:favin/main_screen/controller/main_screen_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class BasketScreenView extends StatelessWidget {
  BasketScreenView({super.key});
  final controller = Get.find<MainScreenController>();

  @override
  Widget build(BuildContext context) {
    return Obx((() => ListView.builder(
          shrinkWrap: true,
          itemCount: controller.imagesBasket.length,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onLongPress: () {
                controller.imagesBasket.removeAt(index);
                controller.placeNamesBasket.removeAt(index);
                controller.dollarBasket.removeAt(index);
              },
              child: Padding(
                  padding: const EdgeInsets.only(
                      right: 16, left: 16, top: 8, bottom: 8),
                  child: Row(
                    children: [
                      Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset(
                              'assets/images/${controller.imagesBasket[index]}.jpg',
                              fit: BoxFit.fill,
                            )),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            controller.placeNamesBasket[index],
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: const [
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text(
                            'Start From',
                            style: TextStyle(
                                fontSize: 10,
                                color: Color(0xff898989),
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Text(
                                '\$ ${controller.dollarBasket[index]}',
                                style: const TextStyle(
                                    color: Color(0xff6481d2),
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                              const Text(
                                '/person',
                                style: TextStyle(
                                  color: Color(0xffd3d3d3),
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  )),
            );
          },
        )));
  }
}
