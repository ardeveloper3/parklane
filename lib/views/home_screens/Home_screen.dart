import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:parklane/views/History_Screen/History_screen.dart';
import 'package:parklane/views/List_Screen/List_Screen.dart';
import 'package:parklane/views/QrScanner_page/Qr-scanner_page.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static final List<Widget> _screens = [
   ListScreen(),
   HistoryScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: Container(
        margin: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(15)),
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildNavBarItem(Icons.list_alt, "Today's List", 0),
            buildNavBarItem(Icons.history_edu, "History", 1),
          ],
        ),
      ),
      floatingActionButton: ClipOval(

        child: Material(

          color: Color(0xFFD80F0F),
          elevation: 10,
          child: InkWell(
            child: SizedBox(
                width: 70,
                height: 70,
                child: Image.asset(
                  "assets/images/scan-barcode-svgrepo-com 1.png",

                  color: Colors.white,
                )),
          ),
        ),
      ).onTap((){
        Get.to(()=>QrscannerPage());
      }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget buildNavBarItem(IconData icon, String label, int index) {
    return InkWell(
      onTap: () => _onItemTapped(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: _selectedIndex == index ? Colors.blue : Colors.white,
          ),
          Text(
            '$label',
            style: TextStyle(
                color: _selectedIndex == index ? Colors.blue : Colors.white),
          ),
        ],
      ),
    );
  }
}
