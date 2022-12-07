import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';

class MainScreenView extends StatelessWidget {
  const MainScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Row(
        children: const [
          Text(
            'Place around you',
            style: TextStyle(fontSize: 15, color: Colors.black),
          ),
          Text(
            'View All',
            style: TextStyle(fontSize: 15, color: Color(0xffc6c6c6)),
          )
        ],
      ),
      ListView.builder(
        shrinkWrap: true,
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return _listItem();
        },
      ),
    ]);
  }

  Widget _listItem() {}
}
