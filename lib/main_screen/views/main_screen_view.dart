import 'package:favin/main_screen/controller/main_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainScreenView extends StatelessWidget {
  MainScreenView({super.key});
  final controller = Get.put<MainScreenController>(MainScreenController());
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'Place around you',
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'View All',
              style: TextStyle(fontSize: 15, color: Color(0xffc6c6c6)),
            )
          ],
        ),
      ),
      ListView.builder(
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        itemCount: controller.images.length,
        itemBuilder: (BuildContext context, int index) {
          return _listItem(index);
        },
      ),
    ]);
  }

  Widget _listItem(int index) {
    return InkWell(
      onTap: (() {
        controller.imagesBasket.add(controller.images[index]);
        controller.placeNamesBasket.add(controller.placeNames[index]);
        controller.dollarBasket.add(controller.dollar[index]);
      }),
      child: Padding(
        padding: const EdgeInsets.only(right: 16, left: 16, bottom: 16),
        child: Column(
          children: [
            _photoRow(index),
            const SizedBox(
              height: 8,
            ),
            _greyCard(index)
          ],
        ),
      ),
    );
  }

  Widget _greyCard(int index) {
    return Container(
      height: 30,
      decoration: BoxDecoration(
          color: const Color(0xfff3f3f3),
          borderRadius: BorderRadius.circular(3)),
      child: Padding(
        padding: const EdgeInsets.only(right: 20, left: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _items(controller.firstText[index]),
            _items(controller.tourNumber[index]),
            _items(controller.personNumber[index])
          ],
        ),
      ),
    );
  }

  Widget _items(String text) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 3,
          backgroundColor: Color(0xff9c9c9c),
        ),
        const SizedBox(
          width: 3,
        ),
        Text(
          text,
          style: const TextStyle(fontSize: 13, color: Color(0xffcacaca)),
        )
      ],
    );
  }

  Widget _photoRow(int index) {
    return Row(
      children: [
        Container(
          height: 120,
          width: 120,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(
                'assets/images/${controller.images[index]}.jpg',
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
              controller.placeNames[index],
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
                  '\$ ${controller.dollar[index]}',
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
    );
  }
}
