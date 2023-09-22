import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
            "Ateo dep trai",
            style: TextStyle(
              color: Colors.purple,
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Vaibiu",
            style: TextStyle(
              color: Colors.red,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            children: [
              IconButton(
                icon: Icon(
                  Icons.home,
                  color: Colors.black,
                  size: 36,
                ),
                onPressed: () {
                  print("Tiêu tiền của pepper");
                  var snackBar = new SnackBar(
                    content: Text("Chao mung may da ve voi trang chu"),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.account_box_outlined,
                  color: Colors.black,
                  size: 36,
                ),
                onPressed: () {
                  print("Tiêu tiền của pepper");
                  var snackBar = new SnackBar(
                    content: Text("Chao mung may da den voi danh ba"),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
              ),
              Icon(
                Icons.share,
                color: Colors.orange,
                size: 36,
              ),
              Icon(
                Icons.account_box,
                color: Colors.orange,
                size: 36,
              )
            ],
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          )
        ],
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
      ),
    );
  }
}
