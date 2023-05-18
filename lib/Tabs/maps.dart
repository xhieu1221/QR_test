import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  String qrData = "0346316667";
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
          gradient: new LinearGradient(
              colors: [Color.fromARGB(1, 106, 0, 191), Colors.purple])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              height: height * 0.35,
              margin: EdgeInsets.only(top: height * 0.03),
              child: Row(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Phan Trong Huy',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.015,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.blueAccent,
                            radius: width * 0.13,
                          )
                        ],
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            child: Text('Change Avatar'),
                            onTap: () {
                              //
                            },
                          )
                        ],
                      ),
                      SizedBox(height: 0),
                      // SizedBox(height: 10),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20, top: 1),
                            child: Container(
                              width: 180,
                              height: 180,
                              // color: Colors.amber,
                              child: Column(
                                children: [
                                  QrImage(data: qrData),
                                  // SizedBox(
                                  //   height: 10,
                                  // ),
                                  // Text('dữ liệu'),
                                  // TextField(
                                  //   controller: qrText,
                                  //   decoration:
                                  //       InputDecoration(hintText: "enter the data"),
                                  // )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: height * 0.35,
              ),
              height: height * 0.65,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50))),
              child: Container(
                margin: EdgeInsets.only(left: width * 0.1, top: height * 0.02),
                child: ListView(
                  children: [
                    _menuComponent('Change your information',
                        Icon(Icons.edit_note_sharp), context),
                    _menuComponent('Setting', Icon(Icons.settings), context),
                    _menuComponent('Private Policies and Rights',
                        Icon(Icons.privacy_tip), context),
                    _menuComponent(
                        'Change Password', Icon(Icons.password), context),
                    // _menuComponent(
                    //     'Logout', Icon(Icons.logout_outlined), context),
                    IconButton(
                        onPressed: () {
                          // AuthService().signOut();
                        },
                        icon: const Icon(Icons.logout_outlined))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  final qrText = TextEditingController();
}

Widget _menuComponent(String string, Icon imageIcon, BuildContext context) {
  return InkWell(
    child: Container(
      margin: EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          IconButton(onPressed: () {}, icon: imageIcon),
          Text(string),
        ],
      ),
    ),
    onTap: () {
      /*Navigator.of(context).push(MaterialPageRoute(
          builder: (BuildContext context) => const ChangeInformationScreen()));*/
    },
  );
}
