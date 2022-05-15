import 'package:flutter/material.dart';
import 'package:sunney_web/screen/about.dart';
import 'package:sunney_web/screen/landingScreen.dart';
import 'package:sunney_web/screen/projects.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(
      initialPage: 0,
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      // body: Container(
      //   decoration: const BoxDecoration(
      //     image: DecorationImage(
      //         image: AssetImage("../assets/images/bg.jpg"), fit: BoxFit.cover),
      //   ),
      // ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("../assets/images/bg.jpg"), fit: BoxFit.cover),
        ),
        child: RawScrollbar(
          thumbColor: Colors.orange,
          radius: const Radius.circular(20),
          thickness: 10,
          
          
          
          child: PageView(
            scrollDirection: Axis.vertical,
            
            controller: controller,
            children: const [
              LandingScreen(),
              Projects(),
              About(),
              Center(
                child: Text('First Page'),
              ),
              Center(
                child: Text('Second Page'),
              ),
              Center(
                child: Text('Third Page'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
