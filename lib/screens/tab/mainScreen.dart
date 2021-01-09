import 'package:flutter/material.dart';
import 'design1.dart';
import 'design2.dart';
import 'design3.dart';
import '../../global/app.dart';
import '../../global/colors.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;
  final List<Widget> children = [
    Design1(),
    Design2(),
    Design3(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: children[currentIndex],
      bottomNavigationBar: BottomAppBar(
        clipBehavior: Clip.antiAlias,
        shape: CircularNotchedRectangle(),
        child: BottomNavigationBar(
          onTap: onTabTapped,
          items: [
            BottomNavigationBarItem(
              backgroundColor: ColorPlate.WhiteColor,
              icon: Icon(Icons.school),
              label: AppString.Design1,
            ),
            BottomNavigationBarItem(
              backgroundColor: ColorPlate.WhiteColor,
              icon: Icon(Icons.shopping_basket),
              label: AppString.Design2,
            ),
            BottomNavigationBarItem(
              backgroundColor: ColorPlate.WhiteColor,
              icon: Icon(Icons.shopping_bag_rounded),
              label: AppString.Design3,
            ),
          ],
          backgroundColor: ColorPlate.BlackColor,
          unselectedItemColor: ColorPlate.WhiteColor.withOpacity(.7),
          selectedItemColor: ColorPlate.BlueColor,
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
        ),
      ),
    );
  }

  void onTabTapped(int index) {
    currentIndex = index;
    setState(() {});
  }
}
