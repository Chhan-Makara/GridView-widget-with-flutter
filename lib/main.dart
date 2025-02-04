import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GridViewScreen(),
    );
  }
}

class GridViewScreen extends StatelessWidget {
  GridViewScreen({super.key});

  List<String> lstImage = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwPy1oSckWNKt9CkhEE4TUoRKN7r9WCnqocg&s",
    "https://images.unsplash.com/photo-1599283787923-51b965a58b05?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YW5na29yJTIwd2F0fGVufDB8fDB8fHww",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRS3UY8AVk-VuUpJPUtBTXXA8GuKfIqJNsPc2X9WJ_-RhXUxkTCZKJ4KATOFMEkgU2ozCk&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQi9Ufqeexnj2xNJPEyeHjeWpm2qA2bnhY8jPzRGjHb1GPX6Y-tDvP6x83dmZdMtUbc9KA&usqp=CAU"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView"),
      ),
      body: Expanded(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 5),
            children: List.generate(
              lstImage.length,
              (index) => Image.network(
                lstImage[index],
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
