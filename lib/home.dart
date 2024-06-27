import 'package:flutter/material.dart';
import 'package:project_pbb/dashboard.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  int _selectedIndex = 0; //
  static const List<Widget> _pages = <Widget>[
    Dashboard(), // Placeholder untuk halaman utama
    // TopUpPage(), // Halaman top up
    // HistoryPage(), // Halaman riwayat
    // NotificationsPage(), // Halaman notifikasi
    // Profile(), // Halaman profil
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(37),
          topRight: Radius.circular(37),
          bottomLeft: Radius.circular(3),
          bottomRight: Radius.circular(3),
        ),
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.credit_card),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: '',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white.withOpacity(0.6),
          onTap: (onTap) {
            setState(() {
              _selectedIndex = onTap;
            });
          },
          backgroundColor: Color(0xFF00623B),
          type: BottomNavigationBarType.fixed,
          elevation: 0,
        ),
      ),
    );
  }
}
