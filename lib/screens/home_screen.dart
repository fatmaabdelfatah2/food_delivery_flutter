import 'package:flutter/material.dart';
import 'package:flutter_first_projectt/widgets/category_item.dart';
import 'package:flutter_first_projectt/widgets/food_card.dart';
import 'package:flutter_first_projectt/screens/favorite_screen.dart';
import 'package:flutter_first_projectt/screens/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<Widget> screens = [
      HomeContent(),
      FavoriteScreen(),
      ProfileScreen(
        onBack: () {
          setState(() {
            selectedIndex = 0;
          });
        },
      ),
    ];

    return Scaffold(
      body: screens[selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favorite",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}

class HomeContent extends StatefulWidget {
  const HomeContent({super.key});

  @override
  State<HomeContent> createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  int selectedCategoryIndex = 0;

  List<String> categories = ["Burgers", "Pizza", "Sandwiches", "Drinks"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFF5F5),
      body: Padding(
        padding: const EdgeInsets.only(top: 26),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.location_on, color: Colors.orange, size: 28),
                Text(
                  'Mansoura',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),

            SizedBox(height: 14),

            Row(
              children: [
                Expanded(
                  child: Text(
                    'Order Your Food\nFast and Free',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 27),
                  ),
                ),
                Image.asset('images/delievry.png', height: 100),
              ],
            ),

            SizedBox(height: 20),

            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search for food...",
                      prefixIcon: Icon(Icons.search),
                      filled: true,
                      fillColor: Colors.grey.shade200,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Icon(Icons.filter_list, size: 30, color: Colors.orange),
              ],
            ),

            SizedBox(height: 25),

            Text(
              'Categories',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 15),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(categories.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedCategoryIndex = index;
                        });
                      },
                      child: CategoryItem(
                        text: categories[index],
                        isSelected: selectedCategoryIndex == index,
                      ),
                    ),
                  );
                }),
              ),
            ),

            SizedBox(height: 22),

            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: FoodCard(
                            image: "images/burger1.png",
                            title: "Classic Beef Burger",
                            price: "\$8.99",
                            rationg: "4.5",
                            isFavorite: true,
                          ),
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: FoodCard(
                            image: "images/burger2.png",
                            title: "Double Cheese",
                            price: "\$11.50",
                            rationg: "4.7",
                            isFavorite: true,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 12),

                    Row(
                      children: [
                        Expanded(
                          child: FoodCard(
                            image: "images/burger3.png",
                            title: "Spicy Burger",
                            price: "\$9.50",
                            rationg: "4.4",
                            isFavorite: false,
                          ),
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: FoodCard(
                            image: "images/burger4.png",
                            title: "Mashroom Burger",
                            price: "\$10.20",
                            rationg: "4.8",
                            isFavorite: false,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
