
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),

          const CircleAvatar(
            radius: 50,
            backgroundColor: Color(0xFFDCF8C6),
            child: Icon(
              Icons.person,
              size: 65,
              color: Color(0xFF546E52),
            ),
          ),

          const SizedBox(height: 12),

          const Text(
            'Jonathan',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 25),

          Container(
            color: Colors.white,
            child: Column(
              children: [
                _profileItem(
                  Icons.person_outline,
                  'Name',
                  'Jonathan',
                ),
                _profileItem(
                  Icons.info_outline,
                  'About',
                  'Available',
                ),
                _profileItem(
                  Icons.phone_outlined,
                  'Phone',
                  '+62 812-3456-7890',
                ),
              ],
            ),
          ),

          const SizedBox(height: 15),

          Container(
            color: Colors.white,
            child: Column(
              children: [
                _menuItem(
                  Icons.lock_outline,
                  'Privacy',
                ),
                _menuItem(
                  Icons.security,
                  'Security',
                ),
                _menuItem(
                  Icons.help_outline,
                  'Help',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _profileItem(
    IconData icon,
    String title,
    String value,
  ) {
    return ListTile(
      leading: Icon(icon, color: const Color(0xFF008069)),
      title: Text(
        title,
        style: const TextStyle(color: Colors.grey, fontSize: 13),
      ),
      subtitle: Text(
        value,
        style: const TextStyle(fontSize: 15, color: Colors.black87),
      ),
      trailing: const Icon(Icons.edit_outlined, size: 20),
    );
  }

  Widget _menuItem(IconData icon, String title) {
    return ListTile(
      leading: Icon(icon, color: Colors.grey[700]),
      title: Text(title),
      trailing: const Icon(Icons.chevron_right),
      onTap: () {},
    );
  }
}
