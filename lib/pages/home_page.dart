import 'package:flutter/material.dart';
import 'package:kuis_124240197/pages/beranda_page.dart';
import 'package:kuis_124240197/pages/profile_page.dart';

class HomePage extends StatefulWidget 
{
  final String username;

  const HomePage({super.key, required this.username});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> 
{
  int _selectedIndex = 0;

  late final List<Widget> _pages;

  @override
  void initState() 
  {
    super.initState();
    _pages = 
    [
      BerandaPage(username: widget.username),
      ProfilePage(username: widget.username),
    ];
  }

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar
      (
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xFF673AB7),
        unselectedItemColor: Colors.grey.shade600,
        backgroundColor: Colors.white,
        elevation: 8,
        onTap: (index) 
        {
          setState(() 
          {
            _selectedIndex = index;
          });
        },
        items: const 
        [
          BottomNavigationBarItem
          (
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem
          (
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
      ),
    );
  }
}
