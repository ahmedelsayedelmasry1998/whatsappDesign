import 'package:flutter/material.dart';
import 'package:flutter_advanced_avatar/flutter_advanced_avatar.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile")),
      body: Center(
        child: ListView(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: AdvancedAvatar(
              size: 120,
              image: NetworkImage(
                  'data:image/jpeg;base64,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'),
            ),
          ),
          ListTile(
            title: Text("Name"),
            subtitle: Text("Demo Code"),
            leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.person),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.edit),
            ),
          ),
          ListTile(
            title: Text("About"),
            subtitle: Text("One day"),
            leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.info),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.info),
            ),
          ),
          ListTile(
            title: Text("Phone"),
            subtitle: Text("0125486585"),
            leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.phone),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.phone),
            ),
          ),
        ]),
      ),
    );
  }
}
