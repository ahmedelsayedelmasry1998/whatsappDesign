import 'package:flutter/material.dart';
import 'package:story_viewer/story_viewer.dart';

class StoryWidget extends StatelessWidget {
  String url;
  String username;

  StoryWidget({super.key, required this.url, required this.username});
  @override
  Widget build(BuildContext context) {
    return StoryViewer(
      backgroundColor: Colors.black,
      ratio: StoryRatio.r9_16,
      stories: [
        StoryItemModel(
          imageProvider: NetworkImage(url),
        )
      ],
      userModel:
          UserModel(username: username, profilePicture: NetworkImage(url)),
    );
  }
}
