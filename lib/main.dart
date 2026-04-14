import 'package:flutter/material.dart';
import 'productCard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Товары", style: TextStyle(color: Colors.black87)),
          backgroundColor: const Color.fromRGBO(255, 235, 59, 1),
          centerTitle: true, 
          elevation: 0,
        ),
        body: GridView.count(
          crossAxisCount: 2, 
          childAspectRatio: 0.58, 
          padding: EdgeInsets.all(16),
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          children: [
            ProductCard(
              image: "images/nike.jpg", 
              title: "Nike Air Max",
              price: "\$120",
              category: "Shoes",
              rating: 4,
            ),
            ProductCard(
              image: "images/leatherbag.jpg",
              title: "Leather Bag",
              price: "\$85",
              category: "Bags",
              rating: 5,
            ),
            ProductCard(
              image: "images/headphones.jpg",
              title: "Headphones",
              price: "\$210",
              category: "Audio",
              rating: 4,
            ),
            ProductCard(
              image: "images/smartwatch.jpg",
              title: "Smart Watch",
              price: "\$150",
              category: "Gadgets",
              rating: 5,
            ),
          ],
        ),
      ),
    );
  }
}