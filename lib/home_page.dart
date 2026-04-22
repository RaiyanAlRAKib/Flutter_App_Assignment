import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 20, 177, 255),
        title: Text("Homepage", style: TextStyle(color: const Color.fromARGB(255, 5, 0, 16))),
        // leading: Icon(Icons.home, color: Colors.green),
        // actions: [
        //   IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
        //   IconButton(onPressed: () {}, icon: Icon(Icons.person_2_outlined)),
        // ],
      ),
      body: Column(
        children: [
          Padding(padding: const EdgeInsets.all(15), child: Text("Hello Users")),
          Text("Welcome to this homepage"),
          Container(
            height: 350,
            width: 420,
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(20),
            color: const Color.fromARGB(255, 2, 171, 255),
            child: Text("Container"),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        foregroundColor: const Color.fromARGB(255, 28, 255, 7),
        onPressed: () {},
        child: Icon(Icons.add),
      ),

      endDrawer: NavigationDrawer(
        children: [
          DrawerHeader(
            child: UserAccountsDrawerHeader(
              accountName: Text("Name"),
              accountEmail: Text("Email"),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Homepage"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("ProfilePage"),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}