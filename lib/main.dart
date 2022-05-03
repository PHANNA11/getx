import 'package:flutter/material.dart';
import 'package:flutter_getx/second_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
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
  var _counter = 0.obs;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage2(),
                    ),
                  );
                });
              },
              icon: const Icon(
                Icons.add,
                size: 30,
              )),
          IconButton(
              onPressed: () {
                setState(() {
                  Get.to(HomePage2());
                });
              },
              icon: const Icon(
                Icons.shop,
                size: 30,
              ))
        ],
      ),
      body: Center(
        child: Obx(() => Text(
              _counter.toString(),
              style: TextStyle(fontSize: 30),
            )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (() => _counter++),
//tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
