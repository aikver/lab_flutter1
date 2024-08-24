import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoginPage(), // เปลี่ยนจาก MyHomePage เป็น LoginPage
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Logo
              Icon(
                Icons.lock_outline,
                size: 100,
                color: Colors.blueAccent,
              ),
              SizedBox(height: 20),

              // Title
              Text(
                'Login',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 30),

              // Username Field
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              SizedBox(height: 20),

              // Password Field
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
              SizedBox(height: 30),

              // Login Button
              ElevatedButton(
                onPressed: () {
                  // Handle login action
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  backgroundColor: Colors.blueAccent,
                ),
                child: Text(
                  'LOGIN',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 20),

              // Forgot Password
              TextButton(
                onPressed: () {
                  // Handle forgot password
                },
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                    color: Colors.blueAccent,
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
