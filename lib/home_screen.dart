import 'package:c5_navigation/screen_two.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("navigation "),
        backgroundColor: Colors.teal,
      ),
      drawer: Drawer(
        child:  ListView(
          padding: EdgeInsets.zero,
          children:   [
           const  UserAccountsDrawerHeader(accountName: Text("Zohaib Ahmed"), accountEmail: Text("zhbah234@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage("https://images.unsplash.com/photo-1594751543129-6701ad444259?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8ZGFyayUyMHByb2ZpbGV8ZW58MHx8MHx8&w=1000&q=80"),
              ),
             decoration: BoxDecoration(
               color: Colors.teal
             ),
            ),
           ListTile(
             leading:  const Icon(Icons.home),
             title:  const Text("page1"),
             onTap: (){
               Navigator.push(context , MaterialPageRoute(builder: (context)=>ScreenTwo()));
               },

           ),
            ListTile(
              leading:  const Icon(Icons.cleaning_services),
              title:  const Text("page2"),
              onTap: (){

              },

            ),
            ListTile(
              leading:  const Icon(Icons.logout_outlined),
              title:  const Text("Log out"),
              onTap: (){

              },

            ),

          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: TextButton(onPressed: () {
              Navigator.push(context , MaterialPageRoute(builder: (context)=>ScreenTwo()));
            },
                child: const Text("Screen 1")),
          )
        ],
      ),
    );
  }
}
