import 'package:flutter/material.dart';
import 'package:flutter_advanced_avatar/flutter_advanced_avatar.dart';
import 'package:whatsapp/data/datasource/local/status.dart';

class CallsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: status.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(status[index].name),
          subtitle: Text(
            status[index].time,
            style: TextStyle(color: Colors.green),
          ),
          leading: AdvancedAvatar(image: NetworkImage(status[index].image)),
          trailing: Icon(
            Icons.missed_video_call,
            color: Colors.red,
            size: 30,
          ),
        );
      },
    );
  }
}
