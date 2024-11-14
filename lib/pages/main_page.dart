

import 'package:categories_app/pages/profile_page.dart';
import 'package:flutter/material.dart';
import 'Settings_page.dart';
import 'details_page.dart';

List<Map<String, dynamic>> Category = [
  {"CategoryName": "Bags", "GoodIndex": 0},
  {"CategoryName": "Furniture", "GoodIndex": 1},
  {"CategoryName": "Laptops", "GoodIndex": 2},
  {"CategoryName": "SeaFoods", "GoodIndex": 3},
  {"CategoryName": "Fruits", "GoodIndex": 4},
  {"CategoryName": "FastFoods", "GoodIndex": 5},
  {"CategoryName": "Books", "GoodIndex": 6},
  {"CategoryName": "Mobiles", "GoodIndex": 7},
  {"CategoryName": "Cloths", "GoodIndex": 8},
  {"CategoryName": "FastFoods", "GoodIndex": 9},
];

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});
  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
          appBar:AppBar(
            title: Text("Category"),
          ),
          drawer: Drawer(
              child: ListView(
                padding: EdgeInsets.only(top:80),
                children: [
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return Home_Page();
              }));
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Your Profile"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return ProfilePage();
              }));
            },
          ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text("Settings"),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return SettingsPage();
                      }));
                    },
                  ),
        ],
      ),
    ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 5.0,
                crossAxisSpacing: 5.0,
              ),
              itemCount: Category.length,
              itemBuilder: (context, i) {
                return GestureDetector(
                  onTap: () {
                    int goodIndex = Category[i]["GoodIndex"];
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return DetailsPage(
                            namegood: Goods[goodIndex]["GoodName"],
                            description: Goods[goodIndex]["description"],
                            image: Goods[goodIndex]["image"],
                          );
                        },
                      ),
                    );
                  },
                  child: Container(
                    height: 100,
                    width: 200,
                    margin: EdgeInsets.only(right: 10, left: 10, bottom: 10, top: 15),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 3,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 70),
                      child: Text(
                        Category[i]["CategoryName"],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                );
              },

            ),
          ],
        ),
      ),
    );
  }
}
