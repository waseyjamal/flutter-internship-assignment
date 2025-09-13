import 'package:flutter/material.dart';
import 'subscription_screen.dart';
import 'mixer_screen.dart';
import 'mixer_vip_screen.dart';
import 'upgrade_homepage.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    UpgradeHomepage(),
    SubscriptionScreen(),
    MixerScreen(),
    MixerVipScreen(),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex], 
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor: Colors.deepPurple,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.upgrade),
            label: "Upgrade",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.subscriptions),
            label: "Subscription",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note),
            label: "Mixer",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: "VIP Mixer",
          ),
          
        ],
      ),
    );
  }
}
