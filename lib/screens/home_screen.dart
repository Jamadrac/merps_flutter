import 'package:flutter/material.dart';
import '../home2Screen/DashBoard.dart';
import '../home2Screen/Chart.dart';
import '../home2Screen/Profile.dart';
import '../home2Screen/Settings.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int CurrentTab = 0;
  final List<Widget> screens = [DashBorad(), Chart(), Profile(), Settings()];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = DashBorad();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          child: Container(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = DashBorad();
                          CurrentTab = 0;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.dashboard,
                            color: CurrentTab == 0 ? Colors.blue : Colors.grey,
                          ),
                          Text(
                            "Dashboard",
                            style: TextStyle(
                                color: CurrentTab == 0
                                    ? Colors.blue
                                    : Colors.grey),
                          )
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = Chart();
                          CurrentTab = 1;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.chat,
                            color: CurrentTab == 1 ? Colors.blue : Colors.grey,
                          ),
                          Text(
                            "chat",
                            style: TextStyle(
                                color: CurrentTab == 1
                                    ? Colors.blue
                                    : Colors.grey),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                // right tab bar,

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = DashBorad();
                          CurrentTab = 0;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.dashboard,
                            color: CurrentTab == 0 ? Colors.blue : Colors.grey,
                          ),
                          Text(
                            "Dashboard",
                            style: TextStyle(
                                color: CurrentTab == 0
                                    ? Colors.blue
                                    : Colors.grey),
                          )
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = Chart();
                          CurrentTab = 1;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.chat,
                            color: CurrentTab == 1 ? Colors.blue : Colors.grey,
                          ),
                          Text(
                            "chat",
                            style: TextStyle(
                                color: CurrentTab == 1
                                    ? Colors.blue
                                    : Colors.grey),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}
