import 'package:flutter/material.dart';
import 'package:food_example/constants.dart';
import 'package:food_example/screens/home_screen.dart';
import 'package:iconsax/iconsax.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentTab = 0;
  List screens = const [
    HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Icon(
                  currentTab == 0 ? Iconsax.home5 : Iconsax.home,
                  color: currentTab == 0 ? kprimaryColor : Colors.grey,
                ),
                Text(
                  "Home",
                  style: TextStyle(
                    fontSize: 14,
                    color: currentTab == 0 ? kprimaryColor : Colors.grey,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Icon(
                  currentTab == 1 ? Iconsax.heart5 : Iconsax.heart,
                  color: currentTab == 1 ? kprimaryColor : Colors.grey,
                ),
                Text(
                  "Favorites",
                  style: TextStyle(
                    fontSize: 14,
                    color: currentTab == 1 ? kprimaryColor : Colors.grey,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Icon(
                  currentTab == 2 ? Iconsax.calendar_25 : Iconsax.calendar_2,
                  color: currentTab == 2 ? kprimaryColor : Colors.grey,
                ),
                Text(
                  "Meal Plan",
                  style: TextStyle(
                    fontSize: 14,
                    color: currentTab == 2 ? kprimaryColor : Colors.grey,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Icon(
                  currentTab == 3 ? Iconsax.setting5 : Iconsax.setting,
                  color: currentTab == 3 ? kprimaryColor : Colors.grey,
                ),
                Text(
                  "Settings",
                  style: TextStyle(
                    fontSize: 14,
                    color: currentTab == 3 ? kprimaryColor : Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: screens[currentTab],
    );
  }
}
