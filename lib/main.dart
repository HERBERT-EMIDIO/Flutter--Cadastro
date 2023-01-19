import 'package:crud_udemy/provider/user.dart';
import 'package:crud_udemy/routes/app_routes.dart';
import 'package:crud_udemy/views/user_form.dart';
import 'package:crud_udemy/views/user_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => Users(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'ListUsarios',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {
          AppRoutes.HOME: (_) => UserList(),
          AppRoutes.USER_FORM: (_) => UserForm()
        },
      ),
    );
  }
}
