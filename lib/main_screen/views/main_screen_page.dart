import 'package:favin/main_screen/views/main_screen_view.dart';
import 'package:favin/main_screen/views/widgets/main_app_bar.dart';
import 'package:flutter/material.dart';

class MainScreenPage extends StatelessWidget {
  const MainScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const MainAppBar(),
        body: MainScreenView(),
      ),
    );
  }
}
