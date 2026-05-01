import 'package:flutter/material.dart';
import 'package:flutter_first_projectt/screens/favorite_screen.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  int count = 1;
  bool isFavorite = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                "images/burger1.png",
                height: 330,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Positioned(
                top: 40,
                left: 16,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back),
                  ),
                ),
              ),
              Positioned(
                top: 40,
                right: 16,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FavoriteScreen(),
                        ),
                      );
                    },
                    icon: Icon(Icons.favorite, color: Colors.red),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Transform.translate(
              offset: Offset(0, -20),
              child: ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                child: Container(
                  padding: EdgeInsets.only(top: 15),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Classic Beef Burger',
                              style: TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Icon(Icons.star, size: 20, color: Colors.orange),
                              SizedBox(width: 4),
                              Text(
                                '4.8 (41 Reviews)',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              '\$8.99',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.orange,
                              ),
                            ),
                          ),
                          Container(
                            height: 38,

                            padding: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 249, 242, 230),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              children: [
                                IconButton(
                                  onPressed: () {
                                    if (count > 1) {
                                      setState(() {
                                        count--;
                                      });
                                    }
                                  },
                                  icon: Icon(
                                    Icons.remove,
                                    color: Colors.orange,
                                    size: 18,
                                  ),
                                ),
                                SizedBox(width: 8),
                                Text(
                                  "$count",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 8),
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      count++;
                                    });
                                  },
                                  icon: Icon(
                                    Icons.add,
                                    color: Colors.orange,
                                    size: 18,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          DetailItem(text: "Size", value: "Medium"),
                          DetailItem(text: "Energy", value: "554 KCal"),
                          DetailItem(text: "Delivery", value: "45 min"),
                        ],
                      ),
                      SizedBox(height: 20),
                      Text(
                        "About",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 6),
                      Text(
                        "Beef Patty, Chesse, Lettuce, Tomato",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Spacer(),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(vertical: 16),
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Text(
                            "Add to Cart",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DetailItem extends StatelessWidget {
  const DetailItem({super.key, required this.text, required this.value});
  final String text;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.orange.withOpacity(0.4)),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        children: [
          Text(text, style: TextStyle(fontSize: 12, color: Colors.grey)),
          SizedBox(height: 5),
          Text(value, style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
