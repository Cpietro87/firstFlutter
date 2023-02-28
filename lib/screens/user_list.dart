import 'package:flutter/material.dart';

class UserList extends StatefulWidget {
  const UserList({super.key});

  @override
  State<UserList> createState() => _UserListState();
}

class User {
  String userName, fullName, photoUrl;
  User(this.userName, this.fullName, this.photoUrl);
}

class _UserListState extends State<UserList> {
  late List<User> users;
  @override
  void initState() {
    users = [
      User('Pepe', 'Jose', ''),
      User('Walo', 'Walter', ''),
      User('Pietro', 'Cristian', ''),
      User('Btx', 'Beto', ''),
      User('Pancho', 'Francisco', '')

    ];
    super.initState();
  }

  _borrarUsuario(context, users) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              title: const Text('Eliminar Usuario'),
              content: Text('Estas seguro de eliminar' + users.userName),
              actions: [
                FloatingActionButton(
                  backgroundColor: Colors.white,

                  onPressed: () {
                    print(users.userName);
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Volver',
                    style: TextStyle(color: Colors.green),
                  ),
                ),
                FloatingActionButton(
                  backgroundColor: Colors.white,
                  onPressed: () {
                    print(users.userName);
                    users.remove(users);
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Borrar',
                    style: TextStyle(color: Colors.red),
                  ),
                )
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CRM leads'),
        actions: <Widget>[
            IconButton(
          icon: const Icon(Icons.auto_delete),
          onPressed: () {
      },)]
        
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              _borrarUsuario(context, users[index]);
            },
            title: Text(users[index].fullName),
            subtitle: Text(users[index].userName),
            leading: CircleAvatar(
              child: Text(users[index].fullName.substring(0, 1)),
            ),
            trailing: const Icon(Icons.arrow_forward_ios),
          );
        },
        itemCount: users.length,
      ),
    );
  }
}
