// ignore_for_file: prefer_const_constructors

import 'package:firstapp/utils/routes.dart';
import 'package:flutter/material.dart';

class SignPage extends StatelessWidget {
  const SignPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 80.0,
              ),
              Text("Welcome", style: TextStyle(fontSize: 40.0)),
              SizedBox(
                height: 40.0,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter Name",
                  labelText: "Name",
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter Email",
                  labelText: "Email",
                ),
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Password",
                  labelText: "Create Password",
                ),
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Password",
                  labelText: "Confirm Password",
                ),
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, MyRoutes.homeRoute);
                },
                style: TextButton.styleFrom(minimumSize: Size(100, 40)),
                child: Text(
                  "Submit",
                  style: TextStyle(fontSize: 22),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
