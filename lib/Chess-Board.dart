import 'package:flutter/material.dart';

class Chessboard extends StatelessWidget {
  const Chessboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 21, 255),
        centerTitle: true,
        title: Text(
          "Chess Board",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(8, (int index) {
          return rowWidget(index + 1);
        }),
      ),
    );
  }

  Row rowWidget(int rowNumber) {
    if (rowNumber % 2 == 0) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          boxWidget(Colors.black),
          boxWidget(Colors.white),
          boxWidget(Colors.black),
          boxWidget(Colors.white),
          boxWidget(Colors.black),
          boxWidget(Colors.white),
          boxWidget(Colors.black),
          boxWidget(Colors.white),
        ],
      );
    } else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          boxWidget(Colors.white),
          boxWidget(Colors.black),
          boxWidget(Colors.white),
          boxWidget(Colors.black),
          boxWidget(Colors.white),
          boxWidget(Colors.black),
          boxWidget(Colors.white),
          boxWidget(Colors.black),
        ],
      );
    }
  }
}

Widget boxWidget(Color color) {
  Color iconColor = color == Colors.black ? Colors.white : Colors.black; // Choose icon color based on box color
  return Container(
    width: 30,
    height: 30,
    color: color,
    child: Icon(
      Icons.ac_unit, // Replace this with your desired chess piece icon
      color: iconColor,
    ),
  );
}
