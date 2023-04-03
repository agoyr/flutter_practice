import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
 const SecondPage({super.key});
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SecondPage"),
      ),
      body: Center(
        child: TextButton(
          child :const Text("ToFirstPage"),
          onPressed: () => { Navigator.of(context).pop()},
        )
      ),
    );
  }
}


