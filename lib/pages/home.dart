import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:me_heatlh_go/config/theme.dart';
import 'package:me_heatlh_go/pages/home/contactPage.dart';
import 'package:me_heatlh_go/pages/home/kuisionerPage.dart';
import 'package:me_heatlh_go/pages/home/profilePage.dart';

import 'home/artikelPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  // ignore: prefer_final_fields
  static List<Widget> _widgethome = <Widget>[
    const KuisionerPage(),
    ArtikelPage(),
    const ContactPage(),
    const ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Center(child: _widgethome.elementAt(_selectedIndex)),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 360.w,
                height: 70.h,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(16), bottomRight: Radius.circular(16)),
                  color: blueColor
                ),
                child: Stack(
                  children: [
                     Positioned(
                      top: 8.h,
                      left: 20.w,
                      child:  Icon(Icons.person_rounded, size: 55,color: whiteColor,)),
                    Positioned(
                      top: 14.h,
                      left: 84.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Gabriel Calvin Winata',
                            style: inter40014,
                          ),
                          const SizedBox(height: 4,),
                          Text(
                            'MAN 2 JEMBER',
                            style: inter40014,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: 360.w,
                height: 50.h,
                decoration: BoxDecoration(
                  color: primariColor,
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  child: BottomNavigationBar(
                    unselectedItemColor: Colors.white54,
                    showUnselectedLabels: false,
                    showSelectedLabels: false,
                    items: <BottomNavigationBarItem>[
                      BottomNavigationBarItem(
                        icon: Image.asset(
                          'assets/home.png',
                          width: 25,
                          height: 24,
                          color: _selectedIndex == 3 ? whiteColor : null,
                        ),
                        label: 'Profile',
                        backgroundColor: blueColor,
                      ),
                      BottomNavigationBarItem(
                        icon: Image.asset(
                          'assets/artikel.png',
                          width: 25,
                          height: 24,
                          color: _selectedIndex == 3 ? whiteColor : null,
                        ),
                        label: 'Profile',
                        backgroundColor: blueColor,
                      ),
                      BottomNavigationBarItem(
                        icon: Image.asset(
                          'assets/kontak.png',
                          width: 25,
                          height: 24,
                          color: _selectedIndex == 3 ? whiteColor : null,
                        ),
                        label: 'Profile',
                        backgroundColor: blueColor,
                      ),
                      BottomNavigationBarItem(
                        icon: Image.asset(
                          'assets/akun.png',
                          width: 25,
                          height: 24,
                          color: _selectedIndex == 3 ? whiteColor : null,
                        ),
                        label: 'Profile',
                        backgroundColor: blueColor,
                      ),
                    ],
                    currentIndex: _selectedIndex,
                    selectedItemColor: Colors.white,
                    onTap: _onItemTapped,
                    iconSize: 24,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar:
    );
  }
}
