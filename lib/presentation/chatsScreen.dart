import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_advanced_avatar/flutter_advanced_avatar.dart';
import 'package:whatsapp/data/datasource/local/chats.dart';

class ChatsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
      itemCount: chats.length,
      itemBuilder: (context, index) {
        return Container(
          color: Colors.black26,
          margin: EdgeInsets.only(bottom: 2),
          child: ListTile(
            onTap: () {},
            title: Text(
              "${chats[index].name}",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              "${chats[index].msg}",
              style: TextStyle(color: Colors.green),
            ),
            leading: AdvancedAvatar(
                size: 44, image: NetworkImage('${chats[index].image}')),
            trailing: Text(
              "${chats[index].time}",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
        );
      },
    ));
  }
}
