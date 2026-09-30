import 'package:flutter/material.dart';
import '../components/login_clone_fix/my_textfield.dart';
import '../components/login_clone_fix/my_button.dart';

class LoginCloneFix extends StatelessWidget {
  const LoginCloneFix({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                const SizedBox(height: 35),

                // Logo
                RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: 'Linked',
                        style: TextStyle(
                          color: Color(0xFF0A66C2),
                          fontSize: 27,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: 'in',
                        style: TextStyle(
                          color: Colors.white,
                          backgroundColor: Color(0xFF0A66C2),
                          fontSize: 27,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 45),

                // Title
                const Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 8),

                // Subtitle
                const Text(
                  'Stay updated on your professional world',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black54,
                  ),
                ),

                const SizedBox(height: 30),

                // Email
                MyTextfield(
                  txtCntrller: TextEditingController(),
                  hint: "Email",
                  obscureText: false,
                  cRadius: 8,
                ),

                const SizedBox(height: 16),

                // Password
                MyTextfield(
                  txtCntrller: TextEditingController(),
                  hint: "Password",
                  obscureText: true,
                  cRadius: 8,
                ),

                const SizedBox(height: 18),

                // Forgot Password
                const Text(
                  'Forgot Password?',
                  style: TextStyle(
                    color: Color(0xFF0A66C2),
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 28),

                // Sign in button
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: MyButton(onPressed: () {}, bgColor: const Color(0xFF0A66C2), fgColor: Colors.white, elevation: 0, br: 25, text: 'Login', fontSize: 16, fontWeight: FontWeight.bold)
                ),

                const SizedBox(height: 28),

                // Join Now
                Center(
                  child: RichText(
                    text: const TextSpan(
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text: 'New to LinkedIn? ',
                        ),
                        TextSpan(
                          text: 'Join now',
                          style: TextStyle(
                            color: Color(0xFF0A66C2),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}