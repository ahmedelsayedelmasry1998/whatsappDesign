import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp/presentation/settingScreen.dart';
import 'package:whatsapp/presentation/statusScreen.dart';

import '../domain/comaraController.dart';
import '../utils/customPopupMenueButton.dart';
import 'callsScreen.dart';
import 'chatsScreen.dart';

class MyHomeScreen extends GetView<ComaraController> {
  @override
  Widget build(BuildContext context) {
    Get.put(ComaraController());
    return DefaultTabController(
        length: 4,
        initialIndex: 1,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              "Whats App",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            actions: [
              CustomPopupMenueButton(
                firstTxt: Text("Settings"),
                secondTxt: Text("Started Message"),
                thirdTxt: Text("Whats App Web"),
                forthTxt: Text("New Group"),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                  )),
              IconButton(
                  onPressed: () {
                    Get.to(SettingScreen());
                  },
                  icon: Icon(Icons.settings, color: Colors.white))
            ],
            bottom: TabBar(tabs: [
              Tab(
                child: IconButton(
                  onPressed: () {
                    controller.openComara();
                  },
                  icon: Icon(
                    Icons.camera_alt_outlined,
                    color: Colors.white,
                  ),
                ),
              ),
              Tab(
                child: Text("Chats", style: TextStyle(color: Colors.white)),
              ),
              Tab(
                child: Text("Status", style: TextStyle(color: Colors.white)),
              ),
              Tab(
                child: Text("Calls", style: TextStyle(color: Colors.white)),
              ),
            ]),
          ),
          body: TabBarView(children: [
            Icon(Icons.camera_alt_outlined),
            ChatsScreen(),
            StausScreen(),
            CallsScreen(),
          ]),
        ));
  }
}
