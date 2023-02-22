import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String _email = '';
  String _password ='';
  String _name = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile Page'),),
      body: Column(
        children: [
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
              onChanged: (text) => _name = text,
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
              keyboardType: TextInputType.emailAddress,
              style: const TextStyle(
                fontSize: 20,
              ),
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: "Enter Email Address",
              ),
              onChanged: (text) => _password = text,
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
          Padding(
            padding: const EdgeInsets.all(20),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                },
                child: const Text("Profile Changes"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
