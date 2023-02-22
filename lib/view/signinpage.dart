import 'package:demo/drawer.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  String _email = "";
  String _password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavDrawer(),
      appBar: AppBar(
        title: const Text("Sign In Page"),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 15),
            child: const Text(
              'Enter Email Address',
              style: TextStyle(fontSize: 15, color: Colors.black),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.symmetric(horizontal: 15),
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(5),
            ),
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              style: const TextStyle(
                fontSize: 20,
              ),
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: "Enter Email Address",
              ),
              onChanged: (text) => _email = text,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Enter your email";
                }
                if (!value.contains(' ')) {
                  return "Enter your email";
                }
                if (!value.contains('@') || !value.contains('.com')) {
                  return "enter email properly ";
                }
                return null;
              },
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.symmetric(horizontal: 15),
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(5),
            ),
            child: TextFormField(
              keyboardType: TextInputType.visiblePassword,
              style: const TextStyle(
                fontSize: 20,
              ),
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: "Enter Password",
              ),
              onChanged: (text) => _password = text,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Enter your email";
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("LOGIN"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
