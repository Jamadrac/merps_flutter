import 'package:flutter/material.dart';
import 'package:merps/screens/signin_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Logout"),
          onPressed: () {
            // Handle the logout logic here, and navigate back to the sign-in screen
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => SignInScreen()));
          },
        ),
      ),
    );
  }
}
