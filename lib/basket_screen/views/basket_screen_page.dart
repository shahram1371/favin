import 'package:favin/basket_screen/views/basket_screen_view.dart';
import 'package:flutter/material.dart';

class BasketScreenPage extends StatelessWidget {
  const BasketScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Basket'),
        ),
        body: BasketScreenView(),
      ),
    );
  }
}
