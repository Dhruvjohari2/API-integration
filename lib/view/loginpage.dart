import 'package:demo/view/home_page.dart';
import 'package:demo/view/profile.dart';
import 'package:demo/view/signinpage.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  _onclick() async {
    debugPrint('userdata: $_email,$_phone,$_name,$_gender');
    try {
      final response = await http
          .post(Uri.parse("http://192.168.0.106:3001/student"), body: {
        "name": _name,
        "gender": _gender,
        "email": _email,
        "phone": _phone,
      });
      _send();
    } catch (e) {
      debugPrint('error : $e');
    }
  }

  _send() async {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (_) => HomePage(),
      ),
    );
  }

  String _phone = "";
  String _email = "";
  String _name = "";
  String _gender = "Male";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("login Page")),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
              child: const Text(
                'Enter Name',
                style: TextStyle(fontSize: 18, color: Colors.black87,fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
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
                keyboardType: TextInputType.name,
                style: const TextStyle(
                  fontSize: 20,
                ),
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: "Enter Name",
                ),
                onChanged: (text) => _name = text,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter your name";
                  }
                  if (!value.contains(' ')) {
                    return "Enter your Full Name";
                  }
                  return null;
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
              child: const Text(
                'Enter Email Address',
                style: TextStyle(fontSize: 18, color: Colors.black87,fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
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
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
              child: const Text(
                'Enter Phone',
                style: TextStyle(fontSize: 18, color: Colors.black87,fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
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
                keyboardType: TextInputType.number,
                style: const TextStyle(
                  fontSize: 20,
                ),
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: "Enter Phone",
                ),
                onChanged: (text) => _phone = text,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter your number";
                  }
                  if (value.length != 10) {
                    return "Enter your number properly";
                  }
                  return null;
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: const Text(
                'Enter Gender',
                style: TextStyle(fontSize: 18, color: Colors.black87,fontWeight: FontWeight.w600),
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
                keyboardType: TextInputType.name,
                style: const TextStyle(
                  fontSize: 20,
                ),
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: "Enter Gender",
                ),
                onChanged: (text) => _gender = text,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter your name";
                  }
                  if (!value.contains(' ')) {
                    return "Enter your Full Name";
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
                    _onclick();
                  },
                  child: const Text("SAVE DATA"),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const SignInPage()));
              },
              child: const Text('SignIn ?'),
            )
          ],
        ),
      ),
    );
  }
}
