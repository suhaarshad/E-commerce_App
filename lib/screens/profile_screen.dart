// import 'package:flutter/material.dart';
//
// class ProfileScreen extends StatelessWidget {
//   const ProfileScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(child: Text('profile sceeen')),
//     );
//   }
// }

import 'package:ecom/screens/login_screen.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final String userName = "Suha Arshad";
  final String userEmail = "suha@email.com";
  final String profileImage =
      "https://via.placeholder.com/150";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,

      appBar: AppBar(
        title: Text("Profile"),
        centerTitle: true,
        elevation: 0,
      ),

      body: Column(
        children: [
          // 🔹 Profile Header
          Container(
            padding: EdgeInsets.all(20),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xFF779650),
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(30),
              ),
            ),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 45,
                  backgroundImage: NetworkImage(profileImage),
                ),
                SizedBox(height: 10),
                Text(
                  userName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  userEmail,
                  style: TextStyle(color: Colors.white70),
                ),
              ],
            ),
          ),

          SizedBox(height: 20),

          // 🔹 Menu Options
          Expanded(
            child: ListView(
              children: [
                buildTile(Icons.shopping_bag, "My Orders", () {}),
                buildTile(Icons.location_on, "Shipping Address", () {}),
                buildTile(Icons.payment, "Payment Methods", () {}),
                buildTile(Icons.settings, "Settings", () {}),
                buildTile(Icons.help_outline, "Help & Support", () {}),

                SizedBox(height: 20),

                // 🔹 Logout Button

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ElevatedButton.icon(
                    onPressed: () {
                      // Logout logic here
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
                    },
                    icon: Icon(Icons.logout),
                    label: Text("Logout"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                      minimumSize: Size(double.infinity, 50),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  // 🔹 Reusable List Tile
  Widget buildTile(IconData icon, String title, VoidCallback onTap) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),

        ),
        child: ListTile(
          leading: Icon(icon, color: Color(0xFF779650),),
          title: Text(title),
          trailing: Icon(Icons.arrow_forward_ios, size: 16),
          onTap: onTap,
        ),
      ),
    );
  }
}