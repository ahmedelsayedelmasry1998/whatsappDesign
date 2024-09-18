import 'package:flutter/material.dart';
import 'package:flutter_advanced_avatar/flutter_advanced_avatar.dart';
import 'package:get/get.dart';
import 'package:whatsapp/presentation/profileScreen.dart';

class SettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        "Settings",
        style: TextStyle(color: Colors.white),
      )),
      body: Container(
          child: Column(
        children: [
          Container(
            child: ListTile(
              onTap: () {
                Get.to(ProfileScreen());
              },
              trailing: Icon(Icons.qr_code),
              title: Text('DemoCode'),
              subtitle: Text(
                "لاتقارن بداياتك بمواسم حصاد الأخرين",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              leading: AdvancedAvatar(
                  size: 45,
                  image: NetworkImage(
                      "data:image/jpeg;base64,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")),
            ),
          ),
          Divider(
            thickness: 1,
            color: Colors.grey,
          ),
          Container(
              height: 500,
              child: ListView(
                children: [
                  ListTile(
                    title: Text("Account",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text("Privacy Secuirty Change Number",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    leading: Icon(Icons.key),
                  ),
                  ListTile(
                    title: Text("Chats",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text("Themes  Background Screen",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    leading: Icon(Icons.chat),
                  ),
                  ListTile(
                    title: Text("Notifactions",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text("Notifaction Message",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    leading: Icon(Icons.notification_add),
                  ),
                  ListTile(
                    title: Text("Backup",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text("Storage Auto Download",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    leading: Icon(Icons.storage),
                  ),
                  ListTile(
                    title: Text("Help",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text("Help Center Copyright",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    leading: Icon(Icons.help_center),
                  ),
                ],
              ))
        ],
      )),
    );
  }
}
