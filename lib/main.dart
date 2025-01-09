import 'package:englishlessons/pages/subjects.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 1;

  @override
  Widget build(BuildContext context) {


    Widget currentPage = const Text("init");
    var title = "init";

    switch (selectedIndex) {
      case 0:
        currentPage = const SubjectsPage();
        title = "tematy";
      case 1:
        currentPage = const Text("Nauka");
        title = "Nauka";
      case 2:
        currentPage = const Text("Lekcja");
        title = "Lakcja";
      }

    return Scaffold(

      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),


      body: currentPage,


      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (selection){
          setState(() {
            selectedIndex = selection;
          });
        },
         items: const [
            BottomNavigationBarItem(label: "Tematy", icon: Icon(Icons.list)),
            BottomNavigationBarItem(label: "Nauka", icon: Icon(Icons.book)),
            BottomNavigationBarItem(label: "Lekcja", icon: Icon(Icons.lock_clock)),
          ]
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}