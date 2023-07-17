import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/rendering.dart';
import 'package:sliding_window/textstyle.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'dart:async';

void main(List<String> args) {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  // Using "static" so that we can easily access it later
  static final ValueNotifier<ThemeMode> themeNotifier =
      ValueNotifier(ThemeMode.light);

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
        valueListenable: themeNotifier,
        builder: (_, ThemeMode currentMode, __) {
          return MaterialApp(
            // Remove the debug banner
            debugShowCheckedModeBanner: false,
            title: 'Kindacode.com',
            theme: ThemeData(primarySwatch: Colors.cyan),
            darkTheme: ThemeData.dark(),
            themeMode: currentMode,
            home: MyHomePage(),
          );
        });
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => slidingApp())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image:
                AssetImage("assets/images/Picsart_23-07-09_09-18-48-431.jpg"),
          ),
        ),
        //color: Colors.white,
        child: Image.network(
          "https://i.pinimg.com/736x/42/79/a6/4279a6be2a972f5f6a691e1b75a4c8dd--motors.jpg",
          height: 300,
          width: 300,
        ));
  }
}

class slidingApp extends StatefulWidget {
  const slidingApp({super.key});

  @override
  State<slidingApp> createState() => _slidingAppState();
}

class _slidingAppState extends State<slidingApp> with TickerProviderStateMixin {
  int activeIndex = 0;
  final controlller =
      CarouselController(); //this is a controller variable of a carouselcontroller class to controll the sliding effect, we can use this variable to controll the effects of sliding and assign to this any button to controll the sliding effect
  animateToslide(int index) => controlller.animateToPage(index);
  final imageList = [
    "https://th.bing.com/th/id/OIP.vRbEf7cGdFda2LBP9yMP9AHaER?w=302&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7",
    "https://th.bing.com/th/id/OIP.SwYwwi-pKPGwJ4ong6bZ_wHaEK?w=265&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7",
    "https://th.bing.com/th/id/OIP.4GLBLAz94YgCvB2C6hRU3gHaEo?w=267&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7",
    "https://th.bing.com/th/id/OIP.b_MrNDt-VqNnlzswfkfF8QHaEo?w=267&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7",
    "https://th.bing.com/th/id/OIP.b_MrNDt-VqNnlzswfkfF8QHaEo?w=267&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7",
  ];
  late AnimationController controller;

  @override
  initState() {
    super.initState();
    controller = BottomSheet.createAnimationController(this);
    // Animation duration for displaying the BottomSheet
    controller.duration = const Duration(seconds: 1);
    // Animation duration for retracting the BottomSheet
    controller.reverseDuration = const Duration(seconds: 1);
    // Set animation curve duration for the BottomSheet
    controller.drive(CurveTween(curve: Curves.bounceOut));
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Widget buildImage(String url, int index) {
      return SizedBox(
        //width: 320,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            //shape: BoxShape.circle
          ),
          /*surfaceTintColor: const Color.fromARGB(255, 203, 14, 0),
            color: Colors.blue,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
            elevation: 20,*/
          margin: const EdgeInsets.symmetric(
              horizontal: 0), //spacing between the images

          child: ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: Image.network(
              url,
              fit: BoxFit.cover,
            ),
          ),
        ),
      );
    }

    Widget buldIndicator() {
      return AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        onDotClicked:
            animateToslide, //this is for slide the page by tapping on the dots
        count: imageList.length,
        effect: const JumpingDotEffect(
          dotHeight: 10,
          dotWidth: 10,
          dotColor: Color.fromRGBO(161, 191, 212, 1),
          activeDotColor: Color.fromARGB(255, 19, 5, 150),
        ),
        /* effect: const SlideEffect(
          spacing: 8.0,
          radius: 10,
          dotWidth: 24.0,
          dotHeight: 16.0,
          paintStyle: PaintingStyle.stroke,
          strokeWidth: 1.5,
          dotColor: Colors.grey,
          activeDotColor: Colors.indigo,
        ),*/
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Shop page",
          style: TextStyle(
            color: Color.fromRGBO(161, 191, 212, 1),
          ),
        ),
        actions: [
          IconButton(
              icon: Icon(MyApp.themeNotifier.value == ThemeMode.light
                  ? Icons.dark_mode
                  : Icons.light_mode),
              onPressed: () {
                MyApp.themeNotifier.value =
                    MyApp.themeNotifier.value == ThemeMode.light
                        ? ThemeMode.dark
                        : ThemeMode.light;
              })
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height * 1,
        decoration: const BoxDecoration(
            /* gradient: LinearGradient(
            colors: [
              //Color.fromARGB(255, 182, 65, 202),
              //Colors.blueAccent,
              Color.fromRGBO(161, 191, 212, 1),
              Color.fromRGBO(165, 180, 190, 1),
              Color.fromRGBO(168, 173, 176, 1)
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.4, 0.8, 0.9],
            tileMode: TileMode.mirror,
          ),*/

            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                    "assets/images/Picsart_23-07-09_09-18-48-431.jpg"))),
        child: SafeArea(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.32,
                margin: const EdgeInsets.only(top: 5),
                child: Center(
                  child: Stack(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CarouselSlider.builder(
                        itemCount: imageList.length,
                        options: CarouselOptions(
                          initialPage:
                              0, //setting the one page as a initial page any page can be the initial page by setting this
                          // enlargeStrategy: CenterPageEnlargeStrategy.height,
                          enlargeCenterPage: true,
                          height: 246,

                          enableInfiniteScroll:
                              true, //means it stop the scrolling at the begning and end of the image
                          //autoPlay: true,
                          //pageSnapping: false,//means scrolling every pixel check it by make it true
                          // reverse: true,
                          autoPlayAnimationDuration: const Duration(seconds: 2),
                          viewportFraction: 0.7,
                          // 1, //setting how many images display on the display at a time
                          onPageChanged: (index, reason) {
                            setState(() {
                              activeIndex = index;
                            });
                          },
                        ),
                        itemBuilder: (context, index, realindex) {
                          final urlImage = imageList[index];
                          return buildImage(urlImage, index);
                        },
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                          margin: const EdgeInsets.only(
                            top: 215,
                          ),
                          child: Center(child: buldIndicator())),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                  margin: const EdgeInsets.all(2),
                  height: MediaQuery.of(context).size.height * 0.53,
                  child: GridView.count(
                    crossAxisCount: 2,
                    childAspectRatio: 0.9,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                    shrinkWrap: true,
                    children: List.generate(
                      4,
                      (index) {
                        return Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                    "https://th.bing.com/th/id/OIP.vRbEf7cGdFda2LBP9yMP9AHaER?w=302&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7"),
                                fit: BoxFit.fill,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(20.0),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  )),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet<void>(
            showDragHandle: true,
            transitionAnimationController: controller,
            // barrierColor: Colors.purpleAccent,
            elevation: 20,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
            ),
            backgroundColor: Colors.greenAccent,
            // context and builder are
            // required properties in this widget
            context: context,
            builder: (BuildContext context) {
              // we set up a container inside which
              // we create center column and display text

              // Returning SizedBox instead of a Container
              return ListView.builder(
                  itemCount: 1,
                  itemBuilder: (ctx, index) {
                    return Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(5),
                          height: 90,
                          width: 480,
                          child: const Card(
                            color: Color.fromARGB(255, 201, 242, 244),
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            elevation: 10,
                            child: ListTile(
                              leading: CircleAvatar(
                                radius: 50,
                                backgroundColor: Colors.yellowAccent,
                              ),
                              title: Text(
                                "Sync verse",
                                style: titleStyle,
                              ),
                              subtitle: Text(
                                "best company to provide fundamental and elements to secure your house and business",
                                style: subtitleStyle,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(5),
                          height: 90,
                          width: 480,
                          child: const Card(
                            color: Color.fromARGB(255, 201, 242, 244),
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            elevation: 10,
                            child: ListTile(
                              leading: CircleAvatar(
                                radius: 50,
                                backgroundColor: Colors.yellowAccent,
                              ),
                              title: Text(
                                "Sync verse",
                                style: titleStyle,
                              ),
                              subtitle: Text(
                                "best company to provide fundamental and elements to secure your house and business",
                                style: subtitleStyle,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(5),
                          height: 90,
                          width: 480,
                          child: const Card(
                            color: Color.fromARGB(255, 201, 242, 244),
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            elevation: 10,
                            child: ListTile(
                              leading: CircleAvatar(
                                radius: 50,
                                backgroundColor: Colors.yellowAccent,
                              ),
                              title: Text(
                                "Sync verse",
                                style: titleStyle,
                              ),
                              subtitle: Text(
                                "best company to provide fundamental and elements to secure your house and business",
                                style: subtitleStyle,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(5),
                          height: 90,
                          width: 480,
                          child: const Card(
                            color: Color.fromARGB(255, 201, 242, 244),
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            elevation: 10,
                            child: ListTile(
                              leading: CircleAvatar(
                                radius: 50,
                                backgroundColor: Colors.yellowAccent,
                              ),
                              title: Text(
                                "Sync verse",
                                style: titleStyle,
                              ),
                              subtitle: Text(
                                "best company to provide fundamental and elements to secure your house and business",
                                style: subtitleStyle,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(5),
                          height: 90,
                          width: 480,
                          child: const Card(
                            color: Color.fromARGB(255, 201, 242, 244),
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            elevation: 10,
                            child: ListTile(
                              leading: CircleAvatar(
                                radius: 50,
                                backgroundColor: Colors.yellowAccent,
                              ),
                              title: Text(
                                "Sync verse",
                                style: titleStyle,
                              ),
                              subtitle: Text(
                                "best company to provide fundamental and elements to secure your house and business",
                                style: subtitleStyle,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(5),
                          height: 90,
                          width: 480,
                          child: const Card(
                            color: Color.fromARGB(255, 201, 242, 244),
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            elevation: 10,
                            child: ListTile(
                              leading: CircleAvatar(
                                radius: 50,
                                backgroundColor: Colors.yellowAccent,
                              ),
                              title: Text(
                                "Sync verse",
                                style: titleStyle,
                              ),
                              subtitle: Text(
                                "best company to provide fundamental and elements to secure your house and business",
                                style: subtitleStyle,
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  });
              /*
              Card(
                color: Colors.greenAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50))),
                //height: 200,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('GeeksforGeeks'),
                    ],
                  ),
                ),
              );*/
            },
          );
        },
        child: const Icon(Icons.keyboard_double_arrow_up_sharp),
      ),
    );
  }
}
