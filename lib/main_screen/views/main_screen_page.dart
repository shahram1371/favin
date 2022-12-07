import 'package:favin/main_screen/views/widgets/main_app_bar.dart';
import 'package:flutter/material.dart';

class MainScreenPage extends StatelessWidget {
  const MainScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        appBar: MainAppBar(),
      ),
    );
  }
}
