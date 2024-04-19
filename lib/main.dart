import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Qunnect'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Map<String, dynamic>> chats = [
    {"name": "John Doe", "message": "Hey kaise ho?", "lastSeen": "12:00"},
    {"name": "John Doe", "message": "Hey kaise ho?", "lastSeen": "12:00"},
    {"name": "John Doe", "message": "Hey kaise ho?", "lastSeen": "12:00"},
    {
      "name": "John Doe",
      "message": "Hey kaise ho? All goood have fun",
      "lastSeen": "12:00"
    },
    {
      "name": "John Doe",
      "message": "Hey kaise ho? All goood have fun",
      "lastSeen": "12:00"
    },
    {
      "name": "John Doe",
      "message": "Hey kaise ho? All goood have fun",
      "lastSeen": "12:00"
    },
    {
      "name": "John Doe",
      "message": "Hey kaise ho? All goood have fun",
      "lastSeen": "12:00"
    },
    {
      "name": "John Doe",
      "message": "Hey kaise ho? All goood have fun",
      "lastSeen": "12:00"
    },
    {
      "name": "John Doe",
      "message": "Hey kaise ho? All goood have fun",
      "lastSeen": "12:00"
    },
    {
      "name": "John Doe",
      "message": "Hey kaise ho? All goood have fun",
      "lastSeen": "12:00"
    },
    {
      "name": "John Doe",
      "message": "Hey kaise ho? All goood have fun. All the best. Bon Voyage.",
      "lastSeen": "12:00"
    },
    {
      "name": "John Doe",
      "message": "Hey kaise ho? All goood have fun. All the best. Bon Voyage.",
      "lastSeen": "12:00"
    },
    {
      "name": "John Doe",
      "message": "Hey kaise ho? All goood have fun. All the best. Bon Voyage.",
      "lastSeen": "12:00"
    },
    {
      "name": "John Doe",
      "message": "Hey kaise ho? All goood have fun. All the best. Bon Voyage.",
      "lastSeen": "12:00"
    },
    {
      "name": "John Doe",
      "message": "Hey kaise ho? All goood have fun. All the best. Bon Voyage.",
      "lastSeen": "12:00"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: Row(
          children: [
            Text(
              widget.title,
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () => print('Search clicked'),
          ),
          IconButton(
            icon: const Icon(Icons.camera_alt), // Camera icon
            onPressed: () => print('Camera clicked'),
          ),
          IconButton(
            icon: const Icon(Icons.more_vert), // Three dots for menu
            onPressed: () => print('Menu clicked'),
          ),
        ],
      ),
      body: ListView.builder(
          itemCount: chats.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/slow.png'),
                radius: 30.0,
              ),
              title:
                  Text(chats[index]['name'], style: TextStyle(fontSize: 19.0)),
              subtitle: Row(
                mainAxisSize: MainAxisSize.min, // Important for overflow
                children: [
                  const Icon(Icons.done_all_rounded, size: 16.0),
                  const SizedBox(width: 5.0),
                  Flexible(
                    // Allows text to expand but respects min/max constraints
                    child: Text(
                      chats[index]['message'],
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              trailing: Text(chats[index]['lastSeen']),
            );
          }),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.message_outlined),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wifi_calling_3_outlined),
            label: 'Calls',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box_outlined),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
