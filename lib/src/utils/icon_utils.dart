import 'package:flutter/material.dart';

final _icons = <String, IconData>{
  "add_alert": Icons.add_alert,
  "accessibility": Icons.accessibility,
  "folder_open": Icons.folder_open,
  "animation": Icons.animation
};

Icon findIcon(String iconName) {
  return Icon(_icons[iconName]);
}
