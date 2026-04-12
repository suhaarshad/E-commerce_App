// import 'package:flutter/material.dart';
//
// class FavouritesScreen extends StatelessWidget {
//   const FavouritesScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(child: Text('fav sceeen')),
//     );
//   }
// }

import 'package:flutter/material.dart';

class FavoritesScreen extends StatefulWidget {
  @override
  _FavoritesScreenState createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  List<Map<String, dynamic>> favorites = [
    {
      "name": "Red Dress",
      "price": 1200,
      "image": "https://via.placeholder.com/150"
    },
    {
      "name": "Sneakers",
      "price": 2500,
      "image": "https://via.placeholder.com/150"
    },
    {
      "name": "Handbag",
      "price": 1800,
      "image": "https://via.placeholder.com/150"
    },
  ];

  void removeItem(int index) {
    setState(() {
      favorites.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Favorites"),
        centerTitle: true,
      ),
      body: favorites.isEmpty
          ? Center(
        child: Text(
          "No favorites yet ❤️",
          style: TextStyle(fontSize: 18),
        ),
      )
          : GridView.builder(
        padding: EdgeInsets.all(12),
        itemCount: favorites.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          final item = favorites[index];

          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 5,
                  color: Colors.grey.shade300,
                )
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Image + favorite icon
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.vertical(
                          top: Radius.circular(15)),
                      child: Image.network(
                        item["image"],
                        height: 130,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      right: 8,
                      top: 8,
                      child: GestureDetector(
                        onTap: () => removeItem(index),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(Icons.favorite,
                              color: Colors.red),
                        ),
                      ),
                    ),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    item["name"],
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    "Rs ${item["price"]}",
                    style: TextStyle(color: Colors.green),
                  ),
                ),

                Spacer(),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      // Add to cart logic here
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 40),
                    ),
                    child: Text("Add to Cart"),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}