import 'package:flutter/material.dart';

class MainAppBar extends StatefulWidget implements PreferredSizeWidget {
  const MainAppBar({super.key});

  @override
  State<MainAppBar> createState() => _MainAppBarState();

  @override
  Size get preferredSize => const Size(double.maxFinite, 325);
}

class _MainAppBarState extends State<MainAppBar> {
  int selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size(double.maxFinite, 325),
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.blue,
            // gradient: LinearGradient(colors: [
            //   Color(0xff5082ff),
            //   Color(0xff6498fe),
            //   Color(0xff6498fe),
            // ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20))),
        child: Padding(
            padding: const EdgeInsets.only(right: 16.0, left: 16.0, top: 16),
            child: Column(
              children: [
                _iconsRow(),
                const SizedBox(
                  height: 16,
                ),
                _textRow(),
                const SizedBox(
                  height: 30,
                ),
                _bigTexts(),
                const SizedBox(
                  height: 20,
                ),
                _textField()
              ],
            )),
      ),
    );
  }

  Widget _textField() {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xffa9c8fe),
        borderRadius: BorderRadius.circular(5),
      ),
      child: const Center(
        child: TextField(
          textAlign: TextAlign.start,
          textDirection: TextDirection.rtl,
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.location_on,
              color: Colors.white,
            ),
            hintText: "Search your destinations...",
            hintStyle:
                TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            enabledBorder: OutlineInputBorder(
              // borderRadius: BorderRadius.all(Radius.circular(5.0)),
              borderSide: BorderSide(
                color: Color(0xffa9c8fe),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              borderSide: BorderSide(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }

  Widget _bigTexts() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('Travel',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
          SizedBox(
            height: 8,
          ),
          Text('around the world.',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
        ],
      ),
    );
  }

  Widget _textRow() {
    return Row(
      children: [
        InkWell(
          onTap: () {
            selectIndex = 0;
            setState(() {});
          },
          child: Container(
            height: 40,
            width: 100,
            decoration: BoxDecoration(
              color: selectIndex == 0 ? const Color(0xff739dff) : Colors.blue,
              borderRadius: BorderRadius.circular(2),
            ),
            child: const Center(
              child: Text(
                'Trending',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 2,
        ),
        InkWell(
          onTap: (() {
            selectIndex = 1;
            setState(() {});
          }),
          child: Container(
            height: 40,
            width: 100,
            decoration: BoxDecoration(
              color: selectIndex == 1 ? const Color(0xff739dff) : Colors.blue,
              borderRadius: BorderRadius.circular(2),
            ),
            child: const Center(
              child: Text(
                'Featured',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 2,
        ),
        InkWell(
          onTap: () {
            selectIndex = 2;
            setState(() {});
          },
          child: Container(
            height: 40,
            width: 100,
            decoration: BoxDecoration(
              color: selectIndex == 2 ? const Color(0xff739dff) : Colors.blue,
              borderRadius: BorderRadius.circular(2),
            ),
            child: const Center(
              child: Text(
                'New',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _iconsRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [Icon(Icons.menu), Icon(Icons.shopping_basket_outlined)],
    );
  }
}
