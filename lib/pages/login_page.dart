import 'package:flutter/material.dart';
import 'package:kuis_124240197/pages/home_page.dart';

class LoginPage extends StatefulWidget 
{
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> 
{
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() 
  {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _login() 
  {
    String username = _usernameController.text.trim();
    String password = _passwordController.text.trim();

    if (username.isNotEmpty && password == '124240197') 
    {
      ScaffoldMessenger.of(context).showSnackBar
      (
        const SnackBar
        (
          content: Text('Login berhasil!'),
          backgroundColor: Colors.green,
        ),
      );
      Navigator.pushReplacement
      (
        context,
        MaterialPageRoute
        (
          builder: (context) => HomePage(username: username),
        ),
      );
    } else 
    {
      ScaffoldMessenger.of(context).showSnackBar
      (
        const SnackBar
        (
          content: Text('Login gagal!'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      backgroundColor: const Color(0xFFFBF8FD),
      appBar: AppBar
      (
        title: const Text
        (
          'Login Page',
          style: TextStyle
          (
            color: Colors.black87,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
      ),
      body: Center
      (
        child: SingleChildScrollView
        (
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
          child: ConstrainedBox
          (
            constraints: const BoxConstraints(maxWidth: 380),
            child: Card
            (
              elevation: 4,
              shadowColor: Colors.black12,
              color: Colors.white,
              shape: RoundedRectangleBorder
              (
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding
              (
                padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
                child: Column
                (
                  mainAxisSize: MainAxisSize.min,
                  children: 
                  [
                    Image.asset
                    (
                      'assets/images/logo.png',
                      height: 95,
                      fit: BoxFit.contain,
                      errorBuilder: (context, error, stackTrace) 
                      {
                        return const Icon
                        (
                          Icons.school,
                          size: 80,
                          color: Colors.green,
                        );
                      },
                    ),
                    const SizedBox(height: 28),

                    TextField
                    (
                      controller: _usernameController,
                      decoration: InputDecoration
                      (
                        hintText: 'Username',
                        contentPadding: const EdgeInsets.symmetric
                        (
                          horizontal: 16.0,
                          vertical: 14.0,
                        ),
                        border: OutlineInputBorder
                        (
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: const BorderSide(color: Colors.grey),
                        ),
                        enabledBorder: OutlineInputBorder
                        (
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide(color: Colors.grey.shade400),
                        ),
                        focusedBorder: OutlineInputBorder
                        (
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: const BorderSide(color: Colors.green, width: 2),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),

                    TextField
                    (
                      controller: _passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: '••••••••••',
                        contentPadding: const EdgeInsets.symmetric
                        (
                          horizontal: 16.0,
                          vertical: 14.0,
                        ),
                        border: OutlineInputBorder
                        (
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: const BorderSide(color: Colors.grey),
                        ),
                        enabledBorder: OutlineInputBorder
                        (
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide(color: Colors.grey.shade400),
                        ),
                        focusedBorder: OutlineInputBorder
                        (
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: const BorderSide(color: Colors.green, width: 2),
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),

                    // Login button
                    SizedBox
                    (
                      width: double.infinity,
                      child: ElevatedButton
                      (
                        onPressed: _login,
                        style: ElevatedButton.styleFrom
                        (
                          backgroundColor: Colors.green,
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(vertical: 14.0),
                          shape: RoundedRectangleBorder
                          (
                            borderRadius: BorderRadius.circular(8),
                          ),
                          elevation: 1,
                        ),
                        child: const Text
                        (
                          'Login',
                          style: TextStyle
                          (
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
