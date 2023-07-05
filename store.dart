import 'package:flutter/material.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final _formKey = GlobalKey<FormState>();
  var userName = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              color: const Color.fromARGB(255, 187, 240, 250),
            ),
            Center(
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.65,
                child: Card(
                  margin: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  elevation: 20,

                  color: const Color.fromRGBO(230, 239, 243, 1),
                  //color: const Color.fromRGBO(255, 187, 240, 0.7),
                  child: SingleChildScrollView(
                    /* child: Container(
                          height: MediaQuery.of(context).size.height * 1,
                          color: Colors.white,
                          margin: const EdgeInsets.all(20),
                          child:*/
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 26, top: 10),
                          child: const Text(
                            "Create Account",
                            style: TextStyle(
                              shadows: <Shadow>[
                                Shadow(
                                  offset: Offset(1.4, 1.4),
                                  blurRadius: 15,
                                  color: Color.fromARGB(255, 249, 193, 193),
                                ),
                              ],
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              elevation: 20,
                              child: Form(
                                key: _formKey,
                                child: Container(
                                  margin: const EdgeInsets.only(left: 20),
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                      constraints: BoxConstraints(
                                          maxHeight: 60, maxWidth: 310),
                                      isDense: true,
                                      border: InputBorder.none,
                                      label: Text(
                                        "Email Address",
                                        style: TextStyle(),
                                      ),
                                      labelStyle: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 18,
                                        letterSpacing: 1,
                                      ),
                                    ),
                                    onSaved: (value) {
                                      userName = value!;
                                    },
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Card(
                              //color: const Color.fromRGBO(255, 125, 200, 0.5),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              elevation: 20,
                              child: Form(
                                child: Container(
                                  margin: const EdgeInsets.only(left: 20),
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                      constraints: BoxConstraints(
                                          maxHeight: 60, maxWidth: 310),
                                      border: InputBorder.none,
                                      label: Text("Password"),
                                      labelStyle: TextStyle(
                                        letterSpacing: 1,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Card(
                              //color: const Color.fromRGBO(255, 125, 200, 0.5),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              elevation: 20,
                              child: Form(
                                child: Container(
                                  margin: const EdgeInsets.only(left: 20),
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                      constraints: BoxConstraints(
                                          maxHeight: 60, maxWidth: 310),
                                      border: InputBorder.none,
                                      label: Text(" Conferm Password"),
                                      labelStyle: TextStyle(
                                        letterSpacing: 1,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            SizedBox(
                              width: 335,
                              height: 60,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                elevation: 20,
                                color: const Color.fromARGB(255, 79, 125, 169),
                                child: TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    "SIGN UP",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              margin: const EdgeInsets.all(20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text("Allready have a account?"),
                                  TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: const Text("Login Here"))
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                      //),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
