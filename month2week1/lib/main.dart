import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              // Handle back button pressed
            },
          ),
          title: const Text("To-Do List"),
          actions: [
            IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {
                // Handle menu button pressed
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 200, // Adjust the height as needed
                child: Image.network(
                  'assets/Notebook.png',
                  fit: BoxFit.cover,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  "Tasks List",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                child: const TaskContainer(
                  icon: Icons.title_outlined,
                  title: "Complete assignment",
                  date: "Dec 31, 2023",
                  deadlineColor: Colors.green,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                child: const TaskContainer(
                  icon: Icons.shopping_cart,
                  title: "Buy groceries",
                  date: "Jan 3, 2024",
                  deadlineColor: Colors.red,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                child: const TaskContainer(
                  icon: Icons.event,
                  title: "Attend meeting",
                  date: "Jan 5, 2024",
                  deadlineColor: Colors.red,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                child: const TaskContainer(
                  icon: Icons.book,
                  title: "Read book",
                  date: "Jan 7, 2024",
                  deadlineColor: Colors.green,
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Handle create task button pressed
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

class TaskContainer extends StatelessWidget {
  final IconData icon;
  final String title;
  final String date;
  final Color deadlineColor;

  const TaskContainer({
    Key? key,
    required this.icon,
    required this.title,
    required this.date,
    required this.deadlineColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Icon(icon),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(width: 16),
          Text(
            date,
            style: TextStyle(
              fontSize: 16,
              color: deadlineColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            width: 5,
            height: 30,
            color: deadlineColor,
            margin: const EdgeInsets.symmetric(horizontal: 8),
          ),
        ],
      ),
    );
  }
}
