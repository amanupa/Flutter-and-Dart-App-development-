import 'package:flutter/material.dart';

import 'package:glassmorphism_ui/glassmorphism_ui.dart';

class getOtp extends StatefulWidget {
  const getOtp({super.key});

  @override
  State<getOtp> createState() => _getOtpState();
}

class _getOtpState extends State<getOtp> {
  final _formKey = GlobalKey<FormState>();
  var userName = "";
  @override
  Widget build(BuildContext context) {
    final mediquery = MediaQuery.of(context);
    return LayoutBuilder(
      builder: (context, constraints) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 1,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          "assets/images/Picsart_23-07-09_09-18-48-431.jpg"),
                      fit: BoxFit.cover),
                ),
                //color: const Color.fromARGB(255, 187, 240, 250),
              ),
              Center(
                child: SizedBox(
                  height: constraints.maxHeight * 0.7,
                  width: constraints.maxWidth,
                  child: Card(
                    margin: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    elevation: 20,

                    color: const Color.fromRGBO(52, 69, 86, 0.9),
                    //color: const Color.fromRGBO(255, 187, 240, 0.7),
                    child: GlassContainer(
                      blur: double.infinity,
                      opacity: 0.145,
                      borderRadius: BorderRadius.circular(25),
                      child: SingleChildScrollView(
                        //physics: const NeverScrollableScrollPhysics(),

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Container(
                                margin: const EdgeInsets.only(top: 30),
                                child: const Text(
                                  "Verify with OTP",
                                  style: TextStyle(
                                      color: Color.fromRGBO(222, 230, 235, 1),
                                      shadows: <Shadow>[
                                        Shadow(
                                          offset: Offset(1.4, 1.4),
                                          blurRadius: 10,
                                          //color: Color.fromRGBO(104, 108, 162, 1),
                                        ),
                                      ],
                                      fontWeight: FontWeight.w500,
                                      fontSize: 25,
                                      fontStyle: FontStyle.normal),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: mediquery.size.height * 0.04,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: const EdgeInsets.all(20),
                                  child: const Center(
                                    child: Text(
                                      "We,ve sent a 6-digit confirmation code to your Mobile No xx123.",
                                      style: TextStyle(
                                        color: Color.fromRGBO(239, 243, 245, 1),
                                        /* shadows: <Shadow>[
                                          Shadow(
                                            offset: Offset(1.4, 1.4),
                                            blurRadius: 10,
                                            //color: Color.fromRGBO(104, 108, 162, 1),
                                          ),
                                        ],*/
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        fontStyle: FontStyle.normal,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: mediquery.size.height * 0.04,
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.only(left: 5, right: 5),
                                  width: constraints.maxWidth,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        height: constraints.maxHeight * 0.1,
                                        width: constraints.maxWidth * 0.145,
                                        child: Card(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          elevation: 20,
                                          child: Form(
                                            child: Container(
                                              margin: const EdgeInsets.only(
                                                  left: 20),
                                              child: TextFormField(
                                                decoration:
                                                    const InputDecoration(
                                                  isDense: true,
                                                  border: InputBorder.none,
                                                ),
                                                onSaved: (value) {
                                                  userName = value!;
                                                },
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: constraints.maxHeight * 0.1,
                                        width: constraints.maxWidth * 0.145,
                                        child: Card(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          elevation: 20,
                                          child: Form(
                                            child: Container(
                                              margin: const EdgeInsets.only(
                                                  left: 20),
                                              child: TextFormField(
                                                decoration:
                                                    const InputDecoration(
                                                  isDense: true,
                                                  border: InputBorder.none,
                                                ),
                                                onSaved: (value) {
                                                  userName = value!;
                                                },
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: constraints.maxHeight * 0.1,
                                        width: constraints.maxWidth * 0.145,
                                        child: Card(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          elevation: 20,
                                          child: Form(
                                            child: Container(
                                              margin: const EdgeInsets.only(
                                                  left: 20),
                                              child: TextFormField(
                                                decoration:
                                                    const InputDecoration(
                                                  isDense: true,
                                                  border: InputBorder.none,
                                                ),
                                                onSaved: (value) {
                                                  userName = value!;
                                                },
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: constraints.maxHeight * 0.1,
                                        width: constraints.maxWidth * 0.145,
                                        child: Card(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          elevation: 20,
                                          child: Form(
                                            child: Container(
                                              margin: const EdgeInsets.only(
                                                  left: 20),
                                              child: TextFormField(
                                                decoration:
                                                    const InputDecoration(
                                                  isDense: true,
                                                  border: InputBorder.none,
                                                ),
                                                onSaved: (value) {
                                                  userName = value!;
                                                },
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: constraints.maxHeight * 0.1,
                                        width: constraints.maxWidth * 0.145,
                                        child: Card(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          elevation: 20,
                                          child: Form(
                                            child: Container(
                                              margin: const EdgeInsets.only(
                                                  left: 20),
                                              child: TextFormField(
                                                decoration:
                                                    const InputDecoration(
                                                  isDense: true,
                                                  border: InputBorder.none,
                                                ),
                                                onSaved: (value) {
                                                  userName = value!;
                                                },
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: constraints.maxHeight * 0.1,
                                        width: constraints.maxWidth * 0.145,
                                        child: Card(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          elevation: 20,
                                          child: Form(
                                            key: _formKey,
                                            child: Container(
                                              margin: const EdgeInsets.only(
                                                  left: 20),
                                              child: TextFormField(
                                                decoration:
                                                    const InputDecoration(
                                                  isDense: true,
                                                  border: InputBorder.none,
                                                ),
                                                onSaved: (value) {
                                                  userName = value!;
                                                },
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: mediquery.size.height * 0.04,
                                ),
                                SizedBox(
                                  width: 335,
                                  height: 60,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    elevation: 20,
                                    color: Color.fromRGBO(97, 197, 201, 1),
                                    child: TextButton(
                                      onPressed: () {},
                                      child: const Text(
                                        "Verify",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: mediquery.size.height * 0.03,
                                ),
                                Center(
                                  child: Container(
                                    margin: const EdgeInsets.all(20),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Text("Didn't recieve code?"),
                                        TextButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: const Text(
                                              "Resend Code?",
                                              style: TextStyle(
                                                color: Color.fromRGBO(
                                                    97, 197, 201, 1),
                                              ),
                                            ))
                                      ],
                                    ),
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
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
