import 'package:flutter/material.dart';
// import 'package:gustav_navigator/TabBar-Pages/main_pages.dart';
import 'package:gustav_navigator/Home/home_pages.dart';
import 'package:gustav_navigator/Profile/profil_pages.dart';
import 'package:gustav_navigator/Settings/setting_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/home': (context) => MyHome(),
        '/profil': (context) => MyProfileStatefull(),
        '/setting': (context) => MySettingStatefull(),
      },
      home: MyTabBar(),
    );
  }
}

class MyTabBar extends StatefulWidget {
  const MyTabBar({super.key});

  @override
  State<MyTabBar> createState() => _MyTabBarState();
}

class _MyTabBarState extends State<MyTabBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 142, 197, 13),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'TabBar Pages',
                style: TextStyle(
                  fontSize: 30,
                  color: const Color.fromARGB(255, 45, 105, 47),
                ),
              ),
            ],
          ),
          bottom: TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black,
            indicatorColor: Colors.blue,
            indicatorWeight: 6,
            tabs: [
              Tab(
                text: 'Home',
                icon: Icon(Icons.home),
              ),
              Tab(
                text: 'Profil',
                icon: Icon(Icons.account_circle),
              ),
              Tab(
                text: 'Pengaturan',
                icon: Icon(Icons.brightness_high_rounded),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            MyHome(),
            ProfilStateless(),
            SettingStateless(),
          ],
        ),
      ),
    );
  }
}


