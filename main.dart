import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './bottom.dart';

void main(List<String> args) {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((fn) {
    runApp(const MyApp());
  });
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.height);
    return LayoutBuilder(
      builder: (context, constraints) {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            bottomNavigationBar:
                BottomNavigation(), /*SingleChildScrollView(
              child: Stack(
                children: [
                  SingleChildScrollView(
                    child: Container(
                      width: double.infinity,
                      height: constraints.maxHeight * 1,
                      //height: MediaQuery.of(context).size.height * 1,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.3,
                          ),
                          SizedBox(
                            height: MediaQuery.sizeOf(context).height * 0.065,
                            //width: MediaQuery.sizeOf(context).width * 0.9,
                            child: Card(
                              elevation: 5,
                              child: Form(
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                      hintText: "Enter username"),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.sizeOf(context).height * 0.009,
                          ),
                          SizedBox(
                            height: MediaQuery.sizeOf(context).height * 0.2,
                            //width: MediaQuery.sizeOf(context).width * 0.9,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Card(
                                  elevation: 5,
                                  child: Form(
                                    child: TextFormField(
                                      decoration: const InputDecoration(
                                          hintText: "password"),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: MediaQuery.sizeOf(context).height *
                                      0.08, //0.08
                                  child: TextButton(
                                    onPressed: () {},
                                    child: const Text("Password Recovery"),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.sizeOf(context).height * 0.01,
                          ),
                          SizedBox(
                            height: MediaQuery.sizeOf(context).height * 0.078,
                            width: MediaQuery.sizeOf(context).width * 0.9,
                            child: Card(
                              color: const Color.fromARGB(255, 252, 26, 10),
                              child: TextButton(
                                onPressed: () {},
                                child: const Text(
                                  "Sign In",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.sizeOf(context).height * 0.02,
                          ),
                          SizedBox(
                            height: MediaQuery.sizeOf(context).height * 0.04,
                            child: const Text(
                              "-----------Or continue with-----------",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.sizeOf(context).height * 0.01,
                          ),
                          SizedBox(
                            //height: MediaQuery.sizeOf(context).height * 0.1,
                            // width: MediaQuery.sizeOf(context).width * 1,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: 70,
                                  width: 70,
                                  margin: const EdgeInsets.all(8),
                                  child: Card(
                                    child: IconButton(
                                      icon: const Icon(
                                        Icons.apple,
                                        size: 50,
                                      ),
                                      onPressed: () {},
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 70,
                                  width: 70,
                                  margin: const EdgeInsets.all(8),
                                  child: Card(
                                    child: IconButton(
                                      icon: const Icon(
                                        Icons.facebook,
                                        size: 50,
                                      ),
                                      onPressed: () {},
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 70,
                                  width: 70,
                                  margin: const EdgeInsets.all(8),
                                  child: Card(
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.g_mobiledata_rounded,
                                        size: 50,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.sizeOf(context).height * 0.01,
                          ),
                          SizedBox(
                            height: MediaQuery.sizeOf(context).height * 0.07,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "New here?",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: const Text("Register now"),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                      child: Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 0.27,
                        color: const Color.fromARGB(255, 241, 179, 85),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Hello Again!",
                              style: TextStyle(
                                  fontSize: 32, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 9,
                            ),
                            Text(
                              "Welcome back ",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w300,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),*/
          ),
        );
      },
    );
  }
}
