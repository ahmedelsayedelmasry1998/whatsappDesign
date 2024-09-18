import 'package:flutter/material.dart';
import 'package:flutter_advanced_avatar/flutter_advanced_avatar.dart';
import 'package:get/get.dart';
import 'package:whatsapp/data/datasource/local/status.dart';
import 'package:whatsapp/utils/customPopupMenueButton.dart';

// import '../utils/storyWidget.dart';

class StausScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return ListView(
      children: [
        ListTile(
          title: Text(
            "My Status",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            "Tap To Add",
            style: TextStyle(color: Colors.green),
          ),
          leading: Icon(
            Icons.person,
            size: 50,
          ),
          trailing: CustomPopupMenueButton(
            firstTxt: Text("Add State"),
            secondTxt: Text("Second State"),
            thirdTxt: Text("Delete State"),
            forthTxt: Text("Show My State"),
          ),
        ),
        Container(
          height: 40,
          width: double.infinity,
          color: Color(0xff025456),
          alignment: Alignment.center,
          child: Text(
            "Recent Updates",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        Container(
            height: height * 69,
            child: ListView.builder(
              itemCount: status.length,
              itemBuilder: (context, index) {
                return Container(
                  color: Colors.black12,
                  margin: EdgeInsets.only(bottom: 3),
                  child: ListTile(
                    onTap: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (context) => StoryWidget(
                      //           url: status[index].image,
                      //           username: status[index].name),
                      //     ));
                      // ////////////

                      // Get.to(StoryWidget(
                      //     url: status[index].image,
                      //     username: status[index].name));
                    },
                    title: Text(
                      "${status[index].name}",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      "${status[index].time}",
                      style: TextStyle(color: Colors.green),
                    ),
                    leading: AdvancedAvatar(
                        size: 40,
                        image: NetworkImage("${status[index].image}")),
                  ),
                );
              },
            )),
      ],
    );
  }
}
