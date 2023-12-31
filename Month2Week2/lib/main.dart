import 'package:flutter/material.dart';
//import 'package:intl/intl.dart'; // For date formatting

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GDSC BookStore',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: const Text('GDSC BookStore'),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Looking for ...',
                      // prefixIcon:  Icon(Icons.search),
                      suffixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const Icon(Icons.filter_list),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(16),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sep 23,  2023",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 8),
                Text(
                  '"Today a reader, tomorrow a LEADER"',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.translate),
                    SizedBox(width: 16),
                    Icon(Icons.bookmark),
                    SizedBox(width: 16),
                    Icon(Icons.share),
                  ],
                ),
              ],
            ),
          ),
          // Add Categories section here (using a ListView for horizontal scrolling)
          const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Categories",
                  style: TextStyle(color: Colors.black, fontSize: 24),
                ),
              ),
              Row(children: [
                Icon(Icons.health_and_safety),
                Text("Helath"),
                SizedBox(
                  height: 8,
                  width: 15,
                ),
                Icon(Icons.science),
                Text("Science"),
                SizedBox(
                  height: 8,
                  width: 15,
                ),
                Icon(Icons.history_edu),
                Text("History"),
                SizedBox(
                  height: 8,
                  width: 15,
                ),
              ]),
              Row(
                children: [
                  Icon(Icons.web),
                  Text("Technology"),
                  SizedBox(
                    height: 8,
                    width: 15,
                  ),
                  Icon(Icons.circle_notifications),
                  Text("Philosophy"),
                  SizedBox(
                    height: 8,
                    width: 15,
                  ),
                ],
              ),
              // Add Recommendations, New, Trending sections with horizontal lists
              Row(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Recommendation",
                      style: TextStyle(color: Colors.black, fontSize: 24),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  
              ],)
              // Add extended icons bar at the bottom
            ],
          ),
        ]),
      ),
    );
  }
}
