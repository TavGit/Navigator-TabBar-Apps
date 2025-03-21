import 'package:flutter/material.dart';

class MyProfileStatefull extends StatefulWidget {
  const MyProfileStatefull({super.key});

  @override
  State<MyProfileStatefull> createState() => _MyProfileStatefullState();
}

class _MyProfileStatefullState extends State<MyProfileStatefull> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Profil', 
              style: TextStyle(
                fontSize: 30, 
                color: Colors.white
              )
            ),
          ],
        ),
      ),
      backgroundColor: Colors.cyan,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to halaman profil',
              style: TextStyle(
                fontFamily: 'SpicyRice-Regular',
                fontSize: 25,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(
                        context,
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      maximumSize: Size(300, 50),
                      minimumSize: Size(300, 50),
                      backgroundColor: Colors.deepPurpleAccent,
                      foregroundColor: Colors.white,
                    ),
                    child: Text(
                      '👈 Back to Home',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfilStateless extends StatelessWidget {
  const ProfilStateless({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Ini adalah halaman profil dari',
              style: TextStyle(
                fontFamily: 'SpicyRice-Regular',
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            Text(
              'TabBar Pages',
              style: TextStyle(
                fontFamily: 'SpicyRice-Regular',
                fontSize: 20,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}