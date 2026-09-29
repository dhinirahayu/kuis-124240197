import 'package:flutter/material.dart';
import 'package:kuis_124240197/pages/login_page.dart';

class ProfilePage extends StatefulWidget 
{
  final String username;

  const ProfilePage({super.key, required this.username});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> 
{
  Color _selectedColor = const Color(0xFF4CAF50);

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      backgroundColor: const Color(0xFFFBF8FD),
      appBar: AppBar
      (
        title: Text
        (
          'Halo, ${widget.username}',
          style: const TextStyle
          (
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color(0xFF4CAF50),
        elevation: 0,
      ),
      body: Center
      (
        child: SingleChildScrollView
        (
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
          child: Column
          (
            mainAxisAlignment: MainAxisAlignment.center,
            children: 
            [
              // CircleAvatar dengan warna dinamis
              CircleAvatar
              (
                radius: 46,
                backgroundColor: _selectedColor,
                child: Text(
                  widget.username.isNotEmpty
                      ? widget.username[0].toUpperCase()
                      : 'U',
                  style: const TextStyle
                  (
                    fontSize: 42,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 16),

              Text
              (
                widget.username,
                style: const TextStyle
                (
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 14),
              const Text(
                'Saya bersumpah mengerjakan soal kuis ini dengan jujur\ndan tidak melakukan kecurangan apapun itu',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.black87,
                  height: 1.4,
                ),
              ),
              const SizedBox(height: 24),

              Row
              (
                mainAxisAlignment: MainAxisAlignment.center,
                children: 
                [
                  GestureDetector
                  (
                    onTap: () 
                    {
                      setState(() 
                      {
                        _selectedColor = const Color(0xFF2196F3);
                      });
                    },
                    child: Container
                    (
                      width: 38,
                      height: 38,
                      margin: const EdgeInsets.symmetric(horizontal: 6),
                      decoration: const BoxDecoration
                      (
                        color: Color(0xFF2196F3),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  // Merah
                  GestureDetector
                  (
                    onTap: () 
                    {
                      setState(() 
                      {
                        _selectedColor = const Color(0xFFE53935);
                      });
                    },
                    child: Container
                    (
                      width: 38,
                      height: 38,
                      margin: const EdgeInsets.symmetric(horizontal: 6),
                      decoration: const BoxDecoration
                      (
                        color: Color(0xFFE53935),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  // Ungu
                  GestureDetector
                  (
                    onTap: () 
                    {
                      setState(() 
                      {
                        _selectedColor = const Color(0xFF8E24AA);
                      });
                    },
                    child: Container
                    (
                      width: 38,
                      height: 38,
                      margin: const EdgeInsets.symmetric(horizontal: 6),
                      decoration: const BoxDecoration
                      (
                        color: Color(0xFF8E24AA),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),

              ElevatedButton
              (
                style: ElevatedButton.styleFrom
                (
                  backgroundColor: _selectedColor,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(130, 42),
                  shape: const StadiumBorder(),
                  elevation: 1,
                ),
                onPressed: () 
                {
                  Navigator.pushAndRemoveUntil
                  (
                    context,
                    MaterialPageRoute
                    (
                      builder: (context) => const LoginPage(),
                    ),
                    (route) => false,
                  );
                },
                child: const Text
                (
                  'Logout',
                  style: TextStyle
                  (
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
