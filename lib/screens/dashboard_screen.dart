import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 62, 28, 28),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 62, 28, 28),
        elevation: 0,
        title: const Text(
          "Welcome William",
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications, color: Color.fromARGB(255, 255, 255, 255)),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Placeholder Image
              Container(
                width: double.infinity,
                height: 150,
                color: const Color.fromARGB(255, 210, 173, 161),
              ),
              const SizedBox(height: 16),
              // Keep Moving Up Section (Warna teks putih)
              const Text(
                "Keep Moving Up",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              const SizedBox(height: 8),
              const Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do",
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 16),
              // Categories Section (Warna teks putih)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Categories",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(255, 255, 252, 252), // Warna border
                        width: 2.0, // Ketebalan border
                      ),
                      borderRadius: BorderRadius.circular(8.0), // Mengatur radius border untuk sudut melengkung
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "See All",
                        style: TextStyle(color: Colors.white), // Mengubah warna teks menjadi putih
                      ),
                    ),
                  ),
                ]
              ),
              const SizedBox(height: 8),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: const [
                  CategoryButton(title: "Development"),
                  CategoryButton(title: "IT & Software"),
                  CategoryButton(title: "UI/UX"),
                  CategoryButton(title: "Business"),
                  CategoryButton(title: "Finance & Business"),
                  CategoryButton(title: "Personal"),
                ],
              ),
              const SizedBox(height: 16),
              // Top Courses Section (Warna teks putih)
              const Text(
                "Top Courses",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(4, (index) {
                  return Container(
                    width: 80,
                    height: 100,
                    color: const Color.fromARGB(255, 210, 173, 161),
                  );
                }),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 62, 28, 28),
        selectedItemColor: Colors.grey,
        unselectedItemColor: const Color.fromARGB(255, 62, 28, 28),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Color.fromARGB(255, 62, 28, 28)),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message, color: Color.fromARGB(255, 62, 28, 28)),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book, color: Color.fromARGB(255, 62, 28, 28)),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Color.fromARGB(255, 62, 28, 28)),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Color.fromARGB(255, 62, 28, 28)),
            label: "",
          ),
          
        ],
      ),
    );
  }
  
}

class CategoryButton extends StatelessWidget {
  final String title;

  const CategoryButton({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 210, 173, 161),
        foregroundColor: const Color.fromARGB(255, 255, 255, 255),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      onPressed: () {},
      child: Text(
        title,
        style: const TextStyle(color: Colors.black), // Mengubah warna teks menjadi hitam
      ),
    );
    
  }

  
}
