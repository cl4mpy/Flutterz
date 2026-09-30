import 'package:application_project/components/my_button.dart';
import 'package:application_project/components/my_textfield.dart';
import 'package:application_project/controller/kalkulator_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';

class KalkulatorPage extends StatelessWidget {
  KalkulatorPage({super.key});

  final controller = Get.put(KalkulatorController());

  @override
  Widget build(BuildContext context) {

    TextEditingController textnum1 = TextEditingController();
    TextEditingController textnum2 = TextEditingController();

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 244, 252, 255),
      appBar: AppBar(title: Text("Kalkulator")),
      body: Column(
        children: [
          MyTextField(
            hint: "Input first number", 
            txtCntrller: textnum1, 
            cRadius: 25,
            inputType: FilteringTextInputFormatter.digitsOnly
          ),

          MyTextField(
            hint: "Input second number", 
            txtCntrller: textnum2, 
            cRadius: 25,
            inputType: FilteringTextInputFormatter.digitsOnly
          ),

          SizedBox(height: 30),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyButton(text: "➕", onPressed: () {
                textnum1.text.isEmpty || textnum2.text.isEmpty ?
                Get.snackbar("Error", "Input Required, please enter both numbers!") :
                controller.Additions(
                  double.parse(textnum1.text.toString()), 
                  double.parse(textnum2.text.toString())
                );
              }),

              MyButton(text: "➖", onPressed: () {
                textnum1.text.isEmpty || textnum2.text.isEmpty ?
                Get.snackbar("Error", "Input Required, please enter both numbers!") :
                controller.Subtractions(
                  double.parse(textnum1.text.toString()), 
                  double.parse(textnum2.text.toString())
                );
              }),

              MyButton(text: "✖️", onPressed: () {
                textnum1.text.isEmpty || textnum2.text.isEmpty ?
                Get.snackbar("Error", "Input Required, please enter both numbers!") :
                controller.Multiplications(
                  double.parse(textnum1.text.toString()), 
                  double.parse(textnum2.text.toString())
                );
              }),

              MyButton(text: "➗", onPressed: () {
                textnum1.text.isEmpty || textnum2.text.isEmpty ?
                Get.snackbar("Error", "Input Required, please enter both numbers!") :
                  controller.Divisions(
                    double.parse(textnum1.text.toString()), 
                    double.parse(textnum2.text.toString())
                  );
              }),
            ]
          ),

          SizedBox(height: 15),

          Obx(() => Text(controller.finalresult.toString(), style: TextStyle(fontSize: 30)))
        ],
      ),
    );
  }
}









// -- ini stateful --
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// class KalkulatorPage extends StatefulWidget {
//   const KalkulatorPage({super.key});

//   @override
//   State<KalkulatorPage> createState() => _KalkulatorPageState();
// }

// class _KalkulatorPageState extends State<KalkulatorPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("ME SMART, NO AI PROVED🚫, BEST LOOKING KALKULATOR"),),
//       body: Column(
//         children: [
//           Container(
//             margin: EdgeInsets.all(20),
//             child: TextField(
//               keyboardType: TextInputType.number,
//               inputFormatters: [
//                 FilteringTextInputFormatter.digitsOnly
//               ],
//               decoration: InputDecoration(hint: Text("Input number 1")),
//             ),
//           ),
//           Container(
//             margin: EdgeInsets.all(20),
//             child: TextField(
//               keyboardType: TextInputType.number,
//               inputFormatters: [
//                 FilteringTextInputFormatter.digitsOnly
//               ],
//               decoration: InputDecoration(hint: Text("Input number 2")),
//             ),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               ElevatedButton(style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.lightGreenAccent)), onPressed: () {}, child: Text("➕")),
//               ElevatedButton(style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.redAccent)), onPressed: () {}, child: Text("➖")),
//               ElevatedButton(style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.lightBlueAccent)), onPressed: () {}, child: Text("✖️")),
//               ElevatedButton(style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.orangeAccent)), onPressed: () {}, child: Text("➗"))
//           ],),
//           Container(margin: EdgeInsets.fromLTRB(0, 30, 0, 30), child: Text("HASIL", style: TextStyle(fontSize: 20),)),
//           ElevatedButton(onPressed: () {}, child: Text("RESET", style: TextStyle(fontSize: 30, color: Colors.black),))
//         ],
//       ),
//     );
//   }
// }