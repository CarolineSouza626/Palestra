import 'package:flutter/material.dart';

class EntrouScreen extends StatelessWidget {
  const EntrouScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Parabens'),
          backgroundColor: Colors.purple,
          shadowColor: Colors.red,
        ),
        body: SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(children: [
              const SizedBox(
                height: 60,
              ),
              Image.asset(
                'assets/lala.png',
                height: 200,
                matchTextDirection: true,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
