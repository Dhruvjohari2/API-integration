import 'package:demo/view/loginpage.dart';
import 'package:demo/view/profile.dart';
import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            child: Text(
              'Side menu',
              style: TextStyle(color: Colors.black, fontSize: 25),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.input),
            title: const Text('Login'),
            onTap: () => {
              Navigator.push(context, MaterialPageRoute(builder: (_) => const LoginPage(),)),
            },
          ),
          ListTile(
            leading: const Icon(Icons.verified_user),
            title: const Text('Profile'),
            onTap: () => {
              Navigator.push(context,MaterialPageRoute(builder: (_) => const ProfilePage(),)),
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: const Icon(Icons.border_color),
            title: const Text('Feedback'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Logout'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}
