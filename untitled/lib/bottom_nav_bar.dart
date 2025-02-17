import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      currentIndex: 0, // تحديد العنصر النشط (حسابي)
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: "حسابي",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: "الإشعارات",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today),
          label: "المواعيد",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "الرئيسية",
        ),
      ],
    );
  }
}
