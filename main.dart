import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _formKey = GlobalKey<FormState>();
  var _enteredName = "";

  void _saveNotes() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      final url = Uri.https(
          "practisebackend-default-rtdb.firebaseio.com", "Notes.json");
      final response = await http.post(
        url,
        headers: {
          "Content-Type": "application/json",
        },
        body: json.encode(
          {
            "notes": _enteredName,
          },
        ),
      );
      print(response);
      print(response.statusCode);
      if (!context.mounted) {
        return;
      }
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    final appbar = AppBar(
      title: const Text(
        ("NotePad"),
      ),
    );
    return LayoutBuilder(builder: (ctx, Constraints) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: appbar,
          body: SizedBox(
            height: Constraints.maxHeight * 1 - appbar.preferredSize.height,
            child: Column(
              children: [
                Form(
                  key: _formKey,
                  child: TextFormField(
                    decoration: const InputDecoration(hintText: "New Notes"),
                    validator: (value) {
                      if (value == null ||
                          value.isEmpty ||
                          value.trim().length <= 1 ||
                          value.trim().length >= 20) {
                        return "Enter the valid input";
                      }
                      return null;
                    },
                    onSaved: (Newvalue) {
                      _enteredName = Newvalue!;
                    },
                  ),
                ),
                // ElevatedButton(onPressed: (), child: child)
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: _saveNotes,
            child: const Icon(Icons.add),
          ),
        ),
      );
    });
  }
}
