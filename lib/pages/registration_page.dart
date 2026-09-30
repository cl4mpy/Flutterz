import 'package:application_project/components/my_textfield.dart';
import 'package:application_project/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class Registration extends StatelessWidget {
  const Registration({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController txtName = TextEditingController();
    TextEditingController txtAlamat = TextEditingController();
    TextEditingController txtGender = TextEditingController();
    TextEditingController txtNoWa = TextEditingController();
    TextEditingController txtEmail = TextEditingController();

    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),

      appBar: AppBar(
        title: const Text(
          "Registration",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 10),

            const Text(
              "Register Your Account",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 6),

            Text(
              "Please fill in your information below",
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 30),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),

                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.06),
                    blurRadius: 12,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),

              child: Column(
                children: [
                  MyTextField(
                    hint: "Username",
                    txtCntrller: txtName,
                    cRadius: 10,
                    prefixIcon: Icons.person_outline,
                  ),

                  MyTextField(
                    hint: "Address",
                    txtCntrller: txtAlamat,
                    cRadius: 10,
                    prefixIcon: Icons.location_on_outlined,
                  ),

                  const SizedBox(height: 20),
                  const Divider(thickness: 1.5),
                  const Divider(thickness: 1.5),
                  const SizedBox(height: 20),

                  Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 10,
                    ),

                    child: DropdownButtonFormField<String>(
                      value: txtGender.text.isEmpty
                          ? null
                          : txtGender.text,

                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),

                      decoration: InputDecoration(
                        hintText: "Gender",

                        hintStyle: const TextStyle(
                          fontSize: 20,
                        ),
                        
                        prefixIcon: 
                          Padding(
                            padding: const EdgeInsets.only(left: 20, right: 10),
                            child: const Icon(Icons.wc),
                          ),

                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),

                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ),
                        ),

                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Colors.green,
                            width: 1.5,
                          ),
                        ),

                        contentPadding: const EdgeInsets.all(25),
                      ),

                      items: const [
                        DropdownMenuItem(
                          value: "Male",
                          child: Text("Male"),
                        ),

                        DropdownMenuItem(
                          value: "Female",
                          child: Text("Female"),
                        ),
                      ],

                      onChanged: (value) {
                        txtGender.text = value ?? "";
                      },
                    ),
                  ),
                  
                  MyTextField(
                    hint: "WhatsApp Number",
                    txtCntrller: txtNoWa,
                    cRadius: 10,
                    prefixIcon: Icons.phone_outlined,
                    inputType: FilteringTextInputFormatter.digitsOnly,
                  ),

                  MyTextField(
                    hint: "Email / Gmail",
                    txtCntrller: txtEmail,
                    cRadius: 10,
                    prefixIcon: Icons.email_outlined,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              height: 52,

              child: ElevatedButton(
                onPressed: () {
                  Get.toNamed(
                    Routes.confirmRegistration,
                    arguments: {
                      'name': txtName.text,
                      'alamat': txtAlamat.text,
                      'jenis_kelamin': txtGender.text,
                      'no_wa': txtNoWa.text,
                      'email': txtEmail.text,
                    },
                  );
                },

                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  elevation: 0,

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),

                child: const Text(
                  "Send",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}