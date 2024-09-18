import 'package:flutter/material.dart';

class CustomPopupMenueButton extends StatelessWidget {
  Widget? firstTxt;
  Widget? secondTxt;
  Widget? thirdTxt;
  Widget? forthTxt;

  CustomPopupMenueButton(
      {super.key, this.firstTxt, this.secondTxt, this.thirdTxt, this.forthTxt});
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: Icon(
        Icons.more_vert,
        size: 31,
        color: Colors.white,
      ),
      itemBuilder: (context) => [
        PopupMenuItem(
          child: firstTxt,
          value: 'settings',
        ),
        PopupMenuItem(
          child: secondTxt,
          value: 'started message',
        ),
        PopupMenuItem(
          child: thirdTxt,
          value: 'whatsapp web',
        ),
        PopupMenuItem(
          child: forthTxt,
          value: 'new group',
        ),
      ],
    );
  }
}
