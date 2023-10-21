import 'package:flutter/material.dart';
import 'package:merps/utils/color_utils.dart';

class SignUpScreen extends StatelessWidget {
  final TextEditingController _passwordTextController = TextEditingController();
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _userNameTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Sign Up",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              hexStringToColor("CB2B93"),
              hexStringToColor("9546C4"),
              hexStringToColor("5E61F4"),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, 120, 20, 0),
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 20,
                ),
                _buildTextField("Enter UserName", Icons.person_outline,
                    _userNameTextController),
                const SizedBox(
                  height: 20,
                ),
                _buildTextField("Enter Email Id", Icons.person_outline,
                    _emailTextController),
                const SizedBox(
                  height: 20,
                ),
                _buildTextField("Enter Password", Icons.lock_outlined,
                    _passwordTextController),
                const SizedBox(
                  height: 20,
                ),
                _buildButton(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(
      String label, IconData icon, TextEditingController controller) {
    return TextField(
      controller: controller,
      obscureText: label == "Enter Password", // Hide password input
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(icon),
      ),
    );
  }

  Widget _buildButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Handle sign-up logic here (replace with your own authentication)
        // For example:
        // if (_userNameTextController.text.isNotEmpty &&
        //     _emailTextController.text.isNotEmpty &&
        //     _passwordTextController.text.isNotEmpty) {
        //   print("Created New Account");
        //   Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
        // } else {
        //   print("Error: Please fill in all fields.");
        // }
      },
      child: Text("Sign Up"),
    );
  }
}
