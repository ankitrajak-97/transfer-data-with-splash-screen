import 'package:flutter/material.dart';
import 'package:multiple_screens/IntroPage.dart';
import 'package:multiple_screens/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Multiple screens ',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.deepPurple,
        ),
      ),
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  var nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home Page",
          style: TextStyle(fontSize: 24),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(16),
        width: 400,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Welcome to Home Page',
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            TextField(
              keyboardType: TextInputType.text,
              controller: nameController,
              decoration: InputDecoration(
                  hintText: 'Enter your Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  )),
            ),
            SizedBox(
              height: 24,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            IntroPage(nameController.text.toString())),
                  );
                },
                child: Text('Click to send data'))
          ],
        ),
      ),
    );
  }
}
