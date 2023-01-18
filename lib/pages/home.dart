import 'package:flutter/material.dart';
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
    const ArtikelPage(),
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
        child: Center(child: _widgethome.elementAt(_selectedIndex)),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.white54,
        showUnselectedLabels: true,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: const Icon(Icons.home_outlined),
            label: 'Beranda',
            backgroundColor: secondaryColor,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.announcement_outlined),
            label: 'Pengumuman',
            backgroundColor: secondaryColor,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.history),
            label: 'Tagihan',
            backgroundColor: secondaryColor,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.history),
            label: 'Tagihan',
            backgroundColor: secondaryColor,
          ),
          // BottomNavigationBarItem(
          //   icon: Image.asset(
          //     'assets/images/ic_transaksi.png',
          //     width: 20,
          //     height: 20,
          //     color: _selectedIndex == 3 ? whiteColor : null,
          //   ),
          //   label: 'Transaksi',
          //   backgroundColor: whiteColor,
          // ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
