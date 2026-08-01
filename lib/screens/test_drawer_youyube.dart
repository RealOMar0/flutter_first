import 'package:flutter/material.dart';

class TestDrawerYouyube extends StatelessWidget {
  const TestDrawerYouyube({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Verve"),backgroundColor: Colors.red,),
      
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(child: Text("Verve")),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              onTap: () {},
            ),
            Spacer(),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
              onTap: () {},
            ),
          ],
        ),
      ),
      
    );
  }
}
