import 'package:flutter/material.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 400,
                  width: MediaQuery.of(context).size.width * 0.5,
                  decoration: BoxDecoration(color: Colors.red),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('He he'),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                              width: MediaQuery.of(context).size.width * 0.4,
                              height: 350,
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://i.pinimg.com/564x/2e/06/8e/2e068e8a4321e0a086ee5316db83e655.jpg')),
                        )
                      ]),
                ),
                Container(
                  height: 400,
                  width: MediaQuery.of(context).size.width * 0.5,
                  decoration: BoxDecoration(color: Colors.blue),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('ateodinang'),
                      )
                    ],
                  ),
                )
                // Container(
                //   height: 400,
                //   width: MediaQuery.of(context).size.width,
                //   decoration: BoxDecoration(color: Colors.red),
                // ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
