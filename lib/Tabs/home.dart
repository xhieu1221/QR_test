import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
              Color.fromRGBO(165, 204, 205, 1),
              Color.fromRGBO(115, 104, 206, 1),
            ])),
        // child: Column(
        //   children: [
        //     Text('Nội dung 1'),
        //     Text('Nội dung 2'),
        //     Text('Nội dung 3'),
        //   ],
        // ),

        // child: ListView(
        // children: <Widget>[

        child: Container(
          child: ListView(
            children: <Widget>[
              Container(
                  width: MediaQuery.of(context).size.width > 360
                      ? 360
                      : MediaQuery.of(context).size.width,
                  height: 100,
                  // color: Color.fromARGB(255, 136, 68, 125),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                          top: Radius.zero, bottom: Radius.circular(10)),
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Color.fromRGBO(165, 204, 205, 1),
                            Color.fromRGBO(115, 104, 206, 1)
                          ])),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Have a good day!',
                      style: TextStyle(fontSize: 35, color: Colors.white),
                    ),
                  )),
              Divider(
                color: Colors.black12,
                thickness: 1,
                indent: 0,
                endIndent: 0,
              ),
              Container(
                width: MediaQuery.of(context).size.width > 360
                    ? 360
                    : MediaQuery.of(context).size.width,
                height: 55,
                //color: Color.fromARGB(255, 0, 0, 0),
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(10)),
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Color.fromRGBO(255, 254, 255, 1),
                          Color.fromRGBO(255, 254, 255, 1)
                        ])),
                child: Row(
                  children: <Widget>[
                    Column(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.person_pin,
                              size: 40,
                              color: Color.fromARGB(255, 165, 27, 192),
                            ))
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width - 100,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10, top: 5),
                            child: OutlinedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const SecondRoute()));
                              },
                              child: Text(
                                'What are you having problems with?',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 165, 27, 192)),
                              ),
                              style: OutlinedButton.styleFrom(
                                  side: BorderSide(
                                      width: 1,
                                      color: Color.fromARGB(255, 52, 52, 52)),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(70))),
                            ),
                          ),
                        )
                        // BorderSide(

                        // )
                      ],
                    )
                  ],
                ),
              ),
              // Divider(
              //   color: Color.fromARGB(255, 255, 255, 1),
              // ),

              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 45,
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.vertical(bottom: Radius.circular(10)),
                        color: Colors.white),
                    //color: Colors.red,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 3,
                              height: 45,
                              //color: Color.fromARGB(255, 100, 13, 13),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    children: [
                                      Icon(
                                        Icons.photo,
                                        color:
                                            Color.fromARGB(255, 165, 27, 192),
                                      )
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [Text('photo')],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 3,
                              height: 45,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        color:
                                            Color.fromARGB(255, 165, 27, 192),
                                      )
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [Text('location')],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 3,
                              height: 45,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    children: [
                                      Icon(
                                        Icons.notifications,
                                        color:
                                            Color.fromARGB(255, 165, 27, 192),
                                      )
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [Text('remind')],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              //2nd

              //3nd
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 7,
                  )
                ],
              ),
              //3rd

              FriendPost(context,
                  Pic: 'images/8.jpg',
                  Name: 'Nguyen Van A',
                  DateLocation: 'Now . DaNang',
                  NoiDung:
                      'Currently, the Dien Bien Phu road is heavily congested, everyone please take another route',
                  AnhMoi: 'images/1.jpg',
                  SoLike: '15',
                  SoComment: '12'),
              FriendPost(context,
                  Pic: 'images/9.jpg',
                  Name: 'Nguyen Van B',
                  DateLocation: 'Yesterday at 11:20 AM . DaNang',
                  NoiDung: 'chu da2',
                  AnhMoi: 'images/2.jpg',
                  SoLike: '17',
                  SoComment: '13'),
              FriendPost(context,
                  Pic: 'images/10.jpg',
                  Name: 'Nguyen Van C',
                  DateLocation: 'Yesterday at 11:20 AM . DaNang',
                  NoiDung: 'chu da3',
                  AnhMoi: 'images/3.jpg',
                  SoLike: '1',
                  SoComment: '1'),
              FriendPost(context,
                  Pic: 'images/11.jpg',
                  Name: 'Nguyen Van D',
                  DateLocation: 'Yesterday at 11:20 AM . DaNang',
                  NoiDung: 'chu da4',
                  AnhMoi: 'images/4.jpg',
                  SoLike: '10',
                  SoComment: '32'),
            ],
          ),
        )
        // ]
        // )
        );

    // ignore: deprecated_colon_for_default_value
  }
}

Widget FriendPost(BuildContext context,
    {Pic, Name, DateLocation, NoiDung, AnhMoi, SoLike, SoComment}) {
  int like = 0;
  return Padding(
    padding: const EdgeInsets.only(bottom: 7, top: 5),
    child: Row(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 448,
          color: Color.fromARGB(73, 218, 222, 227),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 70,
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(10)),
                    color: Colors.white),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 5, right: 5, top: 5),
                          child: Container(
                            width: 50,
                            height: 50,
                            child: Container(
                              width: 50,
                              height: 50,
                              child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(45),
                                      border: Border.all(
                                          color:
                                              Color.fromARGB(255, 165, 27, 192),
                                          style: BorderStyle.solid),
                                      image: DecorationImage(
                                          image: AssetImage(Pic),
                                          fit: BoxFit.cover))),
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 9),
                              child: Container(
                                width: 240,
                                height: 25,
                                //color: Color.fromARGB(255, 0, 0, 0),
                                child: Text(
                                  Name,
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 0),
                          child: Row(
                            children: [
                              Container(
                                width: 240,
                                height: 20,
                                //color: Colors.green,
                                child: Text(
                                  DateLocation,
                                  style: TextStyle(fontSize: 12),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                            margin: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width -
                                    300 -
                                    50),
                            //width: MediaQuery.of(context).size.width - 300,
                            height: 50,
                            //color: Colors.blue,
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.more_horiz,
                                color: Color.fromARGB(255, 165, 27, 192),
                              ),
                            ))
                      ],
                    )
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 320,
                //color: Colors.red,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 60,
                        color: Colors.white,
                        child: Text(
                          NoiDung,
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 260,
                        color: Colors.pink,
                        child: Image(
                          image: AssetImage(AnhMoi),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ]),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 20,
                child: Row(children: <Widget>[
                  Container(
                    height: 20,
                    width: MediaQuery.of(context).size.width / 2,
                    color: Colors.white,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Icon(
                            Icons.favorite,
                            size: 20,
                            color: Color.fromARGB(255, 165, 27, 192),
                          ),
                        ),
                        Text(SoLike,
                            style: TextStyle(
                                color: Color.fromARGB(255, 165, 27, 192)))
                      ],
                    ),
                  ),
                  Container(
                    height: 20,
                    width: MediaQuery.of(context).size.width / 2,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          // Icon(Icons.comment,size: 20,color: Colors.blue,),
                          Text(
                            SoComment,
                            style: TextStyle(
                                color: Color.fromARGB(255, 165, 27, 192)),
                          ),
                          Text(
                            ' comment',
                            style: TextStyle(
                                color: Color.fromARGB(255, 165, 27, 192)),
                          )
                        ],
                      ),
                    ),
                  ),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0, bottom: 0),
                child: Container(
                  height: 0.5,
                  width: MediaQuery.of(context).size.width,
                  color: Color.fromARGB(255, 165, 27, 192),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 35,
                color: Colors.white,
                child: Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 2,
                      height: 35,
                      color: Colors.white,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(),
                            child: IconButton(
                              icon: Icon(
                                Icons.favorite,
                                size: 25,
                                color: Color.fromARGB(255, 165, 27, 192),
                              ),
                              onPressed: () {
                                //setState(){
                                like++;
                                //}
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 3),
                            child: Text(
                              'like',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 165, 27, 192)),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 2,
                      height: 35,
                      color: Colors.white,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.comment,
                              color: Color.fromARGB(255, 165, 27, 192),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 3),
                            child: Text(
                              'comment',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 165, 27, 192)),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0, bottom: 0),
                child: Container(
                    height: 1,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.zero,
                        bottom: Radius.circular(10),
                      ),
                      color: Colors.white,
                    )),
              )
            ],
          ),
        ),
      ],
    ),
  );
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  get label => null;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 100,
          color: Color.fromARGB(255, 195, 40, 159),
          child: Row(
            children: [
              // Container(
              //   width: MediaQuery.of(context).size.width,
              //   height: 50,
              // ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen()));
                    },
                    child: Text(
                      '<',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 25, left: 15),
                    child: Container(
                      width: 180,
                      height: 40,
                      // color: Colors.blue,
                      child: OutlinedButton(
                        onPressed: () {},
                        // width: 80,
                        // height: 40,
                        //color: Color.fromARGB(255, 46, 44, 178),
                        child: Text(
                          'Create Post',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        //   style: OutlinedButton.styleFrom(
                        //     side: BorderSide(
                        //         width: 2, color: Color.fromARGB(169, 51, 77, 149)),
                        //   ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 25, left: 15),
                    child: Container(
                      width: 100,
                      height: 40,
                      color: Colors.blue,
                      child: OutlinedButton(
                        onPressed: () {},
                        // width: 80,
                        // height: 40,
                        //color: Color.fromARGB(255, 46, 44, 178),
                        child: Text(
                          'Post',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        //   style: OutlinedButton.styleFrom(
                        //     side: BorderSide(
                        //         width: 2, color: Color.fromARGB(169, 51, 77, 149)),
                        //   ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Column(
          children: [
            Container(
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 250,
                    color: Color.fromARGB(255, 179, 123, 44),
                  )
                ],
              ),
            ),
          ],
        ),
        Column(
          children: [
            Container(
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 30,
                    color: Color.fromARGB(255, 179, 123, 44),
                  )
                ],
              ),
            ),
          ],
        ),
        Column(
          children: [
            Container(
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 30,
                    color: Color.fromARGB(255, 105, 79, 43),
                  )
                ],
              ),
            ),
          ],
        ),
        Column(
          children: [
            Container(
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 30,
                    color: Color.fromARGB(255, 179, 123, 44),
                  )
                ],
              ),
            ),
          ],
        ),
        Column(
          children: [
            Container(
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 30,
                    color: Color.fromARGB(255, 143, 138, 132),
                  )
                ],
              ),
            ),
          ],
        ),
        Column(
          children: [
            Container(
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 30,
                    color: Color.fromARGB(255, 26, 25, 24),
                  )
                ],
              ),
            ),
          ],
        ),
        Column(
          children: [
            Container(
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 30,
                    color: Color.fromARGB(255, 218, 140, 44),
                  )
                ],
              ),
            ),
          ],
        ),
        Column(
          children: [
            Container(
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 30,
                    color: Color.fromARGB(255, 143, 138, 132),
                  )
                ],
              ),
            ),
          ],
        ),
        Column(
          children: [
            Container(
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 30,
                    color: Color.fromARGB(255, 68, 42, 10),
                  )
                ],
              ),
            ),
          ],
        ),
        Column(
          children: [
            Container(
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 30,
                    color: Color.fromARGB(255, 124, 105, 82),
                  )
                ],
              ),
            ),
          ],
        ),
        Column(
          children: [
            Container(
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 30,
                    color: Color.fromARGB(255, 143, 138, 132),
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
