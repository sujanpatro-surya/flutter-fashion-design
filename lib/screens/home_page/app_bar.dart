import 'package:flutter/material.dart';

AppBar buildAppBar() {
  return AppBar(
    backgroundColor: Colors.transparent,
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.camera_alt, size: 36, color: Colors.deepPurple)
      )
    ],
    elevation: 0,
    title: const Text(
      'Fashion Design',
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color:Colors.deepPurple,
      )
    )
  );
}
