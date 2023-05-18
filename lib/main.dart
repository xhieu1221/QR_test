import 'package:flutter/material.dart';
import 'package:giao_dien_lts/Tabs/group.dart';
import 'package:giao_dien_lts/Tabs/home.dart';
import 'package:giao_dien_lts/Tabs/maps.dart';
import 'package:giao_dien_lts/Tabs/message.dart';
import 'package:giao_dien_lts/Tabs/noti.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ' LTS test sms',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 165, 27, 192),
            title: Text(
              'LTS test',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0)),
            ),
            actions: <Widget>[
              // FloatingActionButton(
              //   onPressed: (){},
              //   child: const Icon(Icons.search,size: 25 ,color: Color.fromARGB(255, 244, 67, 54),),
              //   focusColor: Colors.amber,
              // ),
              // FloatingActionButton(
              //   onPressed: (){},
              //   child: const Icon(Icons.alarm_add),
              // )
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notification_add,
                    color: Colors.red,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.settings,
                    color: Colors.black,
                  ))
            ],
            bottom: TabBar(
              unselectedLabelColor: Colors.black54,
              indicatorColor: Colors.blue,
              labelColor: Colors.blue,
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                ),
                Tab(
                  icon: Icon(Icons.group),
                ),
                Tab(
                  icon: Icon(Icons.map),
                ),
                Tab(
                  icon: Icon(Icons.notifications_none),
                ),
                Tab(
                  icon: Icon(Icons.message),
                ),
              ],
            )),
        body: TabBarView(children: <Widget>[
          HomeScreen(),
          GroupScreen(),
          MapScreen(),
          NotiScreen(),
          MessageScreen(),
        ]),
      ),
    );
  }
}
