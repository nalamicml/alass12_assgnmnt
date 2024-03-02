import 'package:flutter/material.dart';
import 'package:assgnmnt12/Widget/homescreen.dart';
import 'package:assgnmnt12/Widget/menuscreen.dart';
import 'package:assgnmnt12/Widget/profilescreen.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int currentIndex = 0;

  List<Widget> screens = [HomeScreen(), MenuScreen(), ProfileScreen()];
  void onTapped(int index) {
    setState(() {
      currentIndex = index;
      //print(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screens[currentIndex],

        //Center(child: Text('Hello')),
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        // floatingActionButton: FloatingActionButton(
        //   onPressed: (){},
        //   backgroundColor: Colors.red,
        //   child: Icon(Icons.home, color: Colors.black),
        // ),
        bottomNavigationBar: BottomAppBar(
            height: 30,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                    onTap: () {
                      setState(() {
                        currentIndex = 0;
                      });
                    },
                    child: const Icon(Icons.home)),
                InkWell(
                    onTap: () {
                      setState(() {
                        currentIndex = 1;
                      });
                    },
                    child: Icon(Icons.menu)),
                InkWell(
                    onTap: () {
                      setState(() {
                        currentIndex = 2;
                      });
                    },
                    child: Icon(Icons.people)),
              ],
            ))

        // BottomNavigationBar(
        //   selectedItemColor: Colors.red,
        //   unselectedItemColor: Colors.black,
        //   backgroundColor: Colors.blue,
        //   onTap: onTapped,
        //   currentIndex: currentIndex,
        //   items: [
        //     BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        //     BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Menu'),
        //     BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Profile'),
        //   ]),
        );
  }
}
