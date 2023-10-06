import 'package:flutter/material.dart';

class Cinema extends StatelessWidget {
  const Cinema({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "ATEO CINEMA",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: PageView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 9,
          pageSnapping: true,
          itemBuilder: (context, pagePosition) {
            List<String> imagePaths = [
              "assets/images/meow.jpg",
              "assets/images/meoww.jpg",
              "assets/images/meowww.jpg",
              "assets/images/meowwww.jpg",
            ];

            List<String> textPaths = [
              "The Cat 1",
              "The Cat 2",
              "The Cat 3",
              "The Cat 4",
            ];

            int index1 = pagePosition % textPaths.length;
            int index = pagePosition % imagePaths.length;
            return Container(
              margin: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Image.asset(
                      imagePaths[index],
                      width: 300,
                    ),
                  ),
                  Text(
                    textPaths[index1],
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
