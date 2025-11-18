import 'package:flutter/material.dart';
// import 'dart:convert';
import './model/pizza.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Irsyad Dimas - Flutter JSON Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blueGrey,
          brightness: Brightness.light,
        ),
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
  List<Pizza> myPizzas = [];
  int appCounter = 0;

  String documentsPath = '';
  String tempPath = '';

  late File myFile;
  String fileText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Path Provider'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('Doc path: $documentsPath'),
          Text('Temp path $tempPath'),

          ElevatedButton(
            child: const Text('Read File'),
            onPressed: () => readFile(),
          ),
          Text(fileText),
        ],
      ),
    );
  }

  Future readAndWritePreference() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    int count = prefs.getInt('appCounter') ?? 0;
    count++;

    await prefs.setInt('appCounter', count);

    setState(() {
      appCounter = count;
    });
  }

  Future deletePreferece() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.clear();
    setState(() {
      appCounter = 0;
    });
  }

  Future getPaths() async {
    final docDir = await getApplicationDocumentsDirectory();
    final tempDir = await getTemporaryDirectory();

    setState(() {
      documentsPath = docDir.path;
      tempPath = tempDir.path;
    });
  }

  Future<bool> writeFile() async {
    try {
      await myFile.writeAsString(
        'Irsyad Dimas - 2341720088: Margherita, Capricciosa, Napoli',
      );
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> readFile() async {
    try {
      // Read the file
      String contents = await myFile.readAsString();
      setState(() {
        fileText = contents;
      });
      return true;
    } catch (e) {
      // On error, return false.
      return false;
    }
  }

  @override
  void initState() {
    getPaths().then((_) {
      myFile = File('$documentsPath/pizza.txt');
      writeFile();
    });
    super.initState();
  }
}
