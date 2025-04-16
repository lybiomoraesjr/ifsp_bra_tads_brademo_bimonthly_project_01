import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/article_card.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, String>> articles = [
    {
      'image': 'https://www.allrecipes.com/thmb/K9Ea4w7sUDgfgMfRLbLopR7oxok=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/50050-five-minute-ice-cream-DDMFS-4x3-076-fbf49ca6248e4dceb3f43a4f02823dd9.jpg',
      'title': 'Ice cream is made with carrageenan ...'
    },
    {
      'image': 'https://as1.ftcdn.net/jpg/01/98/46/60/1000_F_198466056_PCqEL4oinf9DEbHurjpS7BvW2vRmjMhy.jpg',
      'title': 'Is makeup one of your daily esse ...'
    },
    {
      'image': 'https://upload.wikimedia.org/wikipedia/commons/4/45/A_small_cup_of_coffee.JPG',
      'title': 'Coffee is more than just a drink: It\'s ...'
    },
  ];

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5), // Fundo cinza claro
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("Home", style: TextStyle(color: Colors.black)),
        centerTitle: false,
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu, color: Colors.black),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_none, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(0),
                bottomRight: Radius.circular(0),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                  offset: Offset(0, 5),
                )
              ],
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: "What are you looking for?",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FilterChip(
                      label: Text("Beauty"),
                      onSelected: (_) {},
                    ),
                    SizedBox(width: 10),
                    FilterChip(
                      label: Text("Fashion"),
                      onSelected: (_) {},
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Color(0xFFF5F5F5),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: ListView(
                children: articles.map((article) => ArticleCard(article)).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}