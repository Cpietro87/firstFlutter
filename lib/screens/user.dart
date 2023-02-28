import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class UserList extends StatefulWidget {
  const UserList({super.key});

  @override
  State<UserList> createState() => _UserListState();
}

class User {
  String userName, fullName, photoUrl;
  User(this.userName, this.fullName, this.photoUrl);
  User.fromJson(Map<String, dynamic> json)
      : fullName = json['name']['first'] + ' ' + json['name']['last'],
        userName = json['login']['username'],
        photoUrl = json['piture']['medium'];
}

class _UserListState extends State<UserList> {
  late bool loading;
  late List<User> users;
  @override
  void initState() {
    users = [];
    loading = true;

    _loadUser();

    super.initState();
  }

  void _loadUser() async {
    final response = await http.get('https://randomuser.me/api/?results=20' as Uri);
    List<User> user = [];
    final json = jsonDecode(response.body);
    for (var jsonUser in json['results']) {
      user.add(User.fromJson(jsonUser));
    }
    setState(() {
      users = user;
      loading = false;

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CRM leads'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(users[index].fullName),
            subtitle: Text(users[index].userName),
            leading: const Icon(Icons.supervised_user_circle),
          );
        },
        itemCount: users.length,
      ),
    );
  }
}
