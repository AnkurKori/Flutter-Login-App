// ignore_for_file: prefer_const_constructors

import 'package:firstapp/utils/routes.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 40.0,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter Name",
                    labelText: "Name",
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                    labelText: "Password",
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Row(
                  children: [
                    ElevatedButton(
                      child: Text(
                        "Login",
                        style: TextStyle(fontSize: 22),
                      ),
                      style: TextButton.styleFrom(minimumSize: Size(100, 40)),
                      onPressed: () {},
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    ElevatedButton(
                      child: Text(
                        "SignUp",
                        style: TextStyle(fontSize: 22),
                      ),
                      style: TextButton.styleFrom(minimumSize: Size(100, 40)),
                      onPressed: () {
                        Navigator.pushNamed(context, MyRoutes.signRoute);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
