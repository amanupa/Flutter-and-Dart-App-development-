import 'package:flutter/material.dart';

class BackendContainer extends StatefulWidget {
  const BackendContainer({super.key});

  @override
  State<BackendContainer> createState() => _BackendContainerState();
}

class _BackendContainerState extends State<BackendContainer> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: SizedBox(
        child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Container(
              color: Colors.yellow,
              height: 300,
              width: double.infinity,
            )),
      )),
    );
  }
}
