import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.blueGrey,
      //   title: Row(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Text(
      //         'Home',
      //         style: TextStyle(
      //           fontSize: 30,
      //           color: Colors.white,
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
      backgroundColor: Colors.brown,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.only(top: 200.0)),
            Text(
              'Ini adalah halaman home',
              style: TextStyle(
                fontFamily: 'SpicyRice-Regular',
                fontSize: 25,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 130.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context, '/profil',
                );
              },
              style: ElevatedButton.styleFrom(
                maximumSize: Size(500, 50),
                minimumSize: Size(300, 50),
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
              ),
              child: Text('Go to Profil 👉 ', style: TextStyle(fontSize: 20)),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context, '/setting',
                );
              },
              style: ElevatedButton.styleFrom(
                maximumSize: Size(500, 50),
                minimumSize: Size(300, 50),
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
              ),
              child: Text(
                'Go to Pengaturan 👉 ',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
