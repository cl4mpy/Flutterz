import 'package:flutter/material.dart';
import 'components/my_textfield.dart';
import 'components/my_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController txtUsn = TextEditingController();
  TextEditingController txtPw = TextEditingController();

  String statusLogin = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Login Page")),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            child: MyTextField(hint: "Input Username", txtCntrller: txtUsn, cRadius: 16)
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: MyTextField(hint: "Input Password", txtCntrller: txtPw, cRadius: 16)
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyButton(text: "Login", onPressed: () {
                setState(() {
                  String usn = txtUsn.text.toString();
                  String pw = txtPw.text.toString();

                  if (usn == "admin" && pw == "admin") {
                    print("sukses login");
                    statusLogin = "sukses login admin";
                  } else {
                    print("gagal login");
                    statusLogin = "gagal login admin";
                  }
                });
              }),
              MyButton(text: "Register", onPressed: () {})
            ],
          )
        ],
      ),
    );
  }
}