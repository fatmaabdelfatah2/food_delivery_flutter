import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final VoidCallback onBack;

  const ProfileScreen({super.key, required this.onBack});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F5F5),
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: IconButton(
                onPressed: onBack,
                icon: Icon(Icons.arrow_back),
              ),
            ),

            SizedBox(height: 10),

            Stack(
              alignment: Alignment.bottomRight,
              children: [
                Container(
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.orange, width: 2),
                  ),
                  child: CircleAvatar(
                    radius: 45,
                    backgroundColor: Colors.orange.withOpacity(0.2),
                    child: Icon(Icons.person, size: 40, color: Colors.orange),
                  ),
                ),

                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.camera_alt, size: 14, color: Colors.white),
                ),
              ],
            ),

            SizedBox(height: 12),

            Text(
              "Nour Mohamed",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 4),

            Text("nour@gmail.com", style: TextStyle(color: Colors.grey)),

            SizedBox(height: 20),

            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 16),
                children: [
                  profileItem(Icons.person_outline, "Edit Profile"),
                  profileItem(Icons.location_on_outlined, "My Addresses"),
                  profileItem(Icons.receipt_long, "Order History"),
                  profileItem(Icons.favorite_border, "Favorites"),
                  profileItem(Icons.payment, "Payment Methods"),
                  profileItem(Icons.notifications_none, "Notifications"),
                  profileItem(Icons.help_outline, "Help & Support"),
                  profileItem(Icons.settings, "Settings"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget profileItem(IconData icon, String text) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.orange),
          SizedBox(width: 10),
          Expanded(
            child: Text(text, style: TextStyle(fontWeight: FontWeight.w500)),
          ),
          Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
        ],
      ),
    );
  }
}
