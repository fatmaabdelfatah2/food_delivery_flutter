import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> items = [
      {
        "image": "images/burger1.png",
        "title": "Classic Beef Burger",
        "price": "\$8.99",
        "rating": "4.5",
      },
      {
        "image": "images/burger2.png",
        "title": "Double Cheese",
        "price": "\$11.50",
        "rating": "4.7",
      },
      {
        "image": "images/burger3.png",
        "title": "Spicy Burger",
        "price": "\$9.50",
        "rating": "4.4",
      },
      {
        "image": "images/burger4.png",
        "title": "Mushroom Burger",
        "price": "\$10.20",
        "rating": "4.8",
      },
    ];

    return Scaffold(
      backgroundColor: Color(0xffF9F5F5),
      body: Padding(
        padding: const EdgeInsets.only(top: 23),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back),
                ),
                SizedBox(width: 90),
                Text(
                  'Favorites',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ],
            ),
            SizedBox(height: 12),
            Row(
              children: [
                Icon(Icons.favorite, color: Colors.orange, size: 19),
                SizedBox(width: 5),
                Text(
                  "4 Favorite Items",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),

            SizedBox(height: 12),

            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index];

                  return Container(
                    margin: EdgeInsets.only(bottom: 15),
                    padding: EdgeInsets.all(18),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            item["image"]!,
                            width: 65,
                            height: 65,
                            fit: BoxFit.cover,
                          ),
                        ),

                        SizedBox(width: 10),

                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item["title"]!,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              SizedBox(height: 4),

                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.orange,
                                    size: 14,
                                  ),
                                  SizedBox(width: 3),
                                  Text(
                                    item["rating"]!,
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ],
                              ),

                              SizedBox(height: 4),

                              Text(
                                item["price"]!,
                                style: TextStyle(
                                  color: Colors.orange,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),

                        Icon(Icons.favorite, color: Colors.red, size: 24),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
