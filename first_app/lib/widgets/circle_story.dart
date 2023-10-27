import 'package:flutter/material.dart';

class CircleStory extends StatelessWidget {
  const CircleStory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(6.0),
      child: ClipOval(
        child: Image(
          height: 68,
          width: 68,
          image: NetworkImage(
              'https://i.pinimg.com/564x/2e/06/8e/2e068e8a4321e0a086ee5316db83e655.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
