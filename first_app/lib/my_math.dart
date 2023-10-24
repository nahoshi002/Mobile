import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyMath extends StatefulWidget {
  const MyMath({super.key});

  @override
  State<MyMath> createState() => _MyMathState();
}

class _MyMathState extends State<MyMath> {
  var sothunhat = TextEditingController();
  var sothuhai = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
          child: ListView(
        children: [
          Text(
            "Toan is very de~",
            style: TextStyle(fontSize: 25),
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(bottom: 10),
            child: TextFormField(
              decoration: InputDecoration(hintText: "Nhap so dau tien di may`"),
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r"[0-9]"))
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(bottom: 10),
            child: TextFormField(
              decoration: InputDecoration(hintText: "Nhap so thu 2 di may`"),
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r"[0-9]"))
              ],
            ),
          ),
          Container(
            child: ElevatedButton(
              onPressed: () {
                var tong = sothunhat.text + sothuhai.text;
                ScaffoldMessenger.of(context).showSnackBar((SnackBar(
                  content: Text("Tong hai so la ${tong}"),
                )));
              },
              child: Text("Plus"),
            ),
          ),
        ],
      )),
    );
  }
}
