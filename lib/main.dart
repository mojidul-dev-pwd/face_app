//import 'apicall.dart';
import 'dart:convert';

import 'user_info.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

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
      //color: Colors.red,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Welcome to PWD'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyAppState();
}

class _MyAppState extends State<MyHomePage> {
  //late Future<UserInfo> allUser;
  List<dynamic> users = [];

  /*
  @override
  void initState() {
    super.initState();
    allUser = fetchUserInfo();
  }
  */

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Fetch Data Example'),
        ),
        body: ListView.builder(
            itemCount: users.length,
            itemBuilder: (context, index){
              final user = users[index];
              return ListTile(
                leading: ,
                title: Text(user['email']),
              );
            },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: fetchUsers,
        ),
      ),
    );
  }

  void fetchUsers() async {
    print("Api call start");
    const url = "https://gorest.co.in/public/v2/users";
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);
    setState((){
      users = json;
    });
    print("Api call End");
  }
}


