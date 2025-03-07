import 'package:flutter/material.dart';

class day82 extends StatelessWidget {
  const day82({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.qr_code_scanner_rounded),
                    SizedBox(
                      width: 15,
                    ),
                    Icon(Icons.settings),
                    SizedBox(
                      width: 15,
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage("images/assets82/bg.jpg"),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              padding: EdgeInsets.only(
                                left: 20,
                              ),
                              child: Text(
                                "Luck HotPot",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize:
                                        MediaQuery.of(context).size.width / 18),
                              )),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 20,
                            width: 70,
                            color: Colors.amber[200],
                            child: Center(child: Text("New User")),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text(
                          "4",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "Collect",
                          style: TextStyle(color: Colors.black54),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "28",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "Browse",
                          style: TextStyle(color: Colors.black54),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              " 3",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "*",
                              style: TextStyle(color: Colors.red, fontSize: 25),
                            ),
                          ],
                        ),
                        Text(
                          "Card",
                          style: TextStyle(color: Colors.black54),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  padding: EdgeInsets.only(left: 40),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 200,
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.check_sharp,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      " CLUB",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 17,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 200,
                                child: Text(
                                  "Member of the exclusive",
                                  style: TextStyle(color: Colors.grey[400]),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        height: 40,
                        width: 90,
                        child: Center(
                            child: Text(
                          "Open",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        )),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                      )
                    ],
                  ),
                  height: MediaQuery.of(context).size.height / 8,
                  width: MediaQuery.of(context).size.width / 1.1,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        stops: [0.3, 0.5, 0.7, 0.8, 0.9],
                        colors: [
                          Colors.deepPurple.shade900,
                          Colors.deepPurple.shade700,
                          Colors.deepPurple.shade600,
                          Colors.deepPurple.shade500,
                          Colors.deepPurple.shade400,
                        ],
                      )),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            " My order",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 16),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Icon(Icons.money),
                              Text(
                                "Payment",
                                style: TextStyle(color: Colors.grey[600]),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.delivery_dining),
                              Text(
                                "Delivery",
                                style: TextStyle(color: Colors.grey[600]),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.flight_takeoff),
                              Text(
                                "Take",
                                style: TextStyle(color: Colors.grey[600]),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.my_library_books_sharp),
                              Text(
                                "Complete",
                                style: TextStyle(color: Colors.grey[600]),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      Divider(),
                      Container(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "My goods",
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "Stay back: 2 >",
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  width: MediaQuery.of(context).size.width / 1.1,
                  height: MediaQuery.of(context).size.height / 5.2,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 0,
                          blurRadius: 3,
                          offset: Offset(0, 0), // changes position of shadow
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  padding: EdgeInsets.only(top: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            " My service",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 16),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Icon(Icons.credit_score_outlined),
                              Text(
                                "Credit",
                                style: TextStyle(color: Colors.grey[600]),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.group_outlined),
                              Text(
                                "Invite",
                                style: TextStyle(color: Colors.grey[600]),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.restore_page_outlined),
                              Text(
                                "Advice",
                                style: TextStyle(color: Colors.grey[600]),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.headset_mic_outlined),
                              Text(
                                "Help",
                                style: TextStyle(color: Colors.grey[600]),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  width: MediaQuery.of(context).size.width / 1.1,
                  height: MediaQuery.of(context).size.height / 6.5,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 0,
                          blurRadius: 3,
                          offset: Offset(0, 0),
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.search_rounded), label: "Find"),
            BottomNavigationBarItem(
                icon: Icon(Icons.message_outlined), label: "Message"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Me"),
          ],
        ));
  }
}
