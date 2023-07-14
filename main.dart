import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './store.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';

void main(List<String> args) {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((fn) {
    runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyLogin(),
    ));
  });
}

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  final _formKey = GlobalKey<FormState>();
  var userName = "";
  bool _isObscure = true;

  Color color = const Color(0xFFB74093);
  @override
  Widget build(BuildContext context) {
    final mediquery = MediaQuery.of(context);

    return LayoutBuilder(
        builder: (context, constraints) => Scaffold(
              //appBar: AppBar(),
              body: Stack(children: [
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            "assets/images/Picsart_23-07-09_09-18-48-431.jpg"),
                        fit: BoxFit.cover),
                  ),
                  height: constraints.maxHeight * 1,
                  //height: MediaQuery.of(context).size.height * 1,
                  //color: const Color.fromARGB(255, 187, 240, 250),
                ),
                Center(
                  child: SizedBox(
                    width: constraints.maxWidth,
                    height: constraints.maxHeight * 0.7,
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
                        opacity: 0.2,
                        borderRadius: BorderRadius.circular(25),
                        height: constraints.maxHeight,
                        child: SingleChildScrollView(
                          //physics: const NeverScrollableScrollPhysics(),

                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                child: Container(
                                  margin:
                                      const EdgeInsets.only(left: 26, top: 10),
                                  child: const Text(
                                    "Login",
                                    style: TextStyle(
                                      color: Color.fromRGBO(154, 158, 162, 1),
                                      shadows: <Shadow>[
                                        Shadow(
                                          offset: Offset(1.4, 1.4),
                                          blurRadius: 15,
                                        ),
                                      ],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: mediquery.size.height * 0.02,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: constraints.maxHeight * 0.08,
                                    width: constraints.maxWidth * 0.85,
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      elevation: 20,
                                      child: Form(
                                        key: _formKey,
                                        child: Container(
                                          margin:
                                              const EdgeInsets.only(left: 20),
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
                                  ),
                                  SizedBox(
                                    height: mediquery.size.height * 0.02,
                                  ),
                                  SizedBox(
                                    height: constraints.maxHeight * 0.08,
                                    width: constraints.maxWidth * 0.85,
                                    child: Card(
                                      //color: const Color.fromRGBO(255, 125, 200, 0.5),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      elevation: 20,
                                      child: Form(
                                        child: Container(
                                          margin:
                                              const EdgeInsets.only(left: 20),
                                          child: TextFormField(
                                            obscureText: _isObscure,
                                            decoration: InputDecoration(
                                              suffixIcon: IconButton(
                                                  icon: Icon(_isObscure
                                                      ? Icons.visibility
                                                      : Icons.visibility_off),
                                                  onPressed: () {
                                                    setState(() {
                                                      _isObscure = !_isObscure;
                                                    });
                                                  }),
                                              border: InputBorder.none,
                                              label: const Text("Password"),
                                              labelStyle: const TextStyle(
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
                                  ),
                                  SizedBox(
                                    height: mediquery.size.height * 0.02,
                                  ),
                                  SizedBox(
                                    width: 335,
                                    height: 60,
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      elevation: 20,
                                      color:
                                          const Color.fromRGBO(97, 197, 201, 1),
                                      child: TextButton(
                                        onPressed: () {},
                                        child: const Text(
                                          "LOGIN",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: mediquery.size.height * 0.01,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      SizedBox(
                                        // width: constraints.maxWidth * 0.4,
                                        //margin: const EdgeInsets.only(
                                        // right: 20),
                                        child: TextButton(
                                            onPressed: () {},
                                            child: const Text(
                                              "Forget Password ?",
                                              style: TextStyle(
                                                color: Color.fromRGBO(
                                                    97, 197, 201, 1),
                                              ),
                                            )),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: mediquery.size.height * 0.02,
                                  ),
                                  Container(
                                    width: constraints.maxWidth,
                                    margin: const EdgeInsets.only(
                                        left: 5, right: 5),
                                    child: const Center(
                                      child: Text(
                                        "------------------------or continue with------------------------",
                                        style: TextStyle(
                                          fontSize: 15,
                                          color:
                                              Color.fromRGBO(154, 158, 162, 1),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: mediquery.size.height * 0.02,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          color: Colors.white,
                                          Icons.apple,
                                          size: 50,
                                        ),
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          color: Colors.white,
                                          Icons.facebook,
                                          size: 50,
                                        ),
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          color: Colors.white,
                                          Icons.g_mobiledata_outlined,
                                          size: 50,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: mediquery.size.height * 0.01,
                                  ),
                                  Center(
                                    child: Container(
                                      width: constraints.maxWidth * 1,
                                      margin: const EdgeInsets.all(14),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const Text(
                                            "Don't have a account?",
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Color.fromRGBO(
                                                  154, 158, 162, 1),
                                            ),
                                          ),
                                          TextButton(
                                              onPressed: () =>
                                                  Navigator.of(context).push(
                                                    MaterialPageRoute(
                                                      builder: (_) {
                                                        return const CreateAccount();
                                                      },
                                                    ),
                                                  ),
                                              child: const Text(
                                                "Register Now",
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
              ]),
            ));
  }
}
