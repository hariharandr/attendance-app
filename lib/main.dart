import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'F lutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(
        title: 'Employee Attendance App',
      ),
      debugShowCheckedModeBanner: false,
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
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 40.0, bottom: 30.0),
                child: const Text(
                  "Good Afternoon,",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Text(
                "Working Hours",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "09:30am - 6:30pm",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10.0),
                      child: const Text(
                        "26 August 2022",
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10.0),
                      child: const Text(
                        "Friday",
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 131, 124, 121),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(20.0),
                      height: 50,
                      width: 300,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          maximumSize: const Size(300, 100),
                          minimumSize: const Size(100, 40),
                          shadowColor: Colors.black54,
                          elevation: 20,
                          textStyle: const TextStyle(fontSize: 20),
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(12), // <-- Radius
                          ),
                        ),
                        onPressed: () {},
                        child: const Text('Clock Out'),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text(
                        "Cock In:",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "- -",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: const [
                      Text(
                        "Cock Out:",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "- -",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromRGBO(212, 231, 248, 1),
                  // border: OutlineInputBorder(
                  //   borderRadius: BorderRadius.circular(50.0),
                  //   borderSide: BorderSide(width: 0),
                  // ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 0,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15.0),
                    ),
                  ),
                  hintText: 'Permission Note(optional)',
                  contentPadding: EdgeInsets.all(20),
                  hintStyle: TextStyle(
                    fontSize: 18.0,
                    color: Color.fromARGB(156, 79, 150, 204),
                  ),
                ),
                keyboardType: TextInputType.multiline,
                maxLines: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
