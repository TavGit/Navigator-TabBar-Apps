import 'package:flutter/material.dart';

class MySettingStatefull extends StatefulWidget {
  const MySettingStatefull({super.key});

  @override
  State<MySettingStatefull> createState() => _MySettingStatefullState();
}

class _MySettingStatefullState extends State<MySettingStatefull> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Pengaturan',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.deepOrangeAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to halaman pengaturan',
              style: TextStyle(
                fontFamily: 'SpicyRice-Regular',
                fontSize: 25,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(crossAxisAlignment: CrossAxisAlignment.center),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(
                  context,
                );
              },
              style: ElevatedButton.styleFrom(
                maximumSize: Size(300, 50),
                minimumSize: Size(300, 50),
                backgroundColor: Colors.blueGrey,
                foregroundColor: Colors.black,
              ),
              child: Text(
                '👈 Back to Home',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SettingStateless extends StatelessWidget {
  const SettingStateless({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Ini adalah halaman pengaturan dari',
              style: TextStyle(
                fontFamily: 'SpicyRice-Regular',
                fontSize: 20,
                color: Colors.black,
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
