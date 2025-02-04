import 'package:flutter/material.dart';
class HelloScreen extends StatelessWidget {
  const HelloScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'hello World',
              style: TextStyle(
                fontSize: 50,
                color: Colors.purple,
                /*backgroundColor: Colors.black,
                fontWeight: FontWeight.w900,
                textBaseline: TextBaseline.alphabetic,
                wordSpacing: 18,*/
              ),
            ),
          ],
        ),
      ),
    );
  }
}
