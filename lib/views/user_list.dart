import 'package:crud_udemy/components/user_tile.dart';

import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../provider/user.dart';

class UserList extends StatelessWidget {
  const UserList({super.key});

  @override
  Widget build(BuildContext context) {
    final Users users = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Usuários'),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              
            },
            icon: Icon(Icons.add),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: users.count,
        itemBuilder: (ctx, i) => UserTile(users.all.elementAt(i)),
      ),
    );
  }
}
