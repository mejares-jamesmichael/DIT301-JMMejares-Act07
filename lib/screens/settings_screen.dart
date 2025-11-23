import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return LayoutBuilder(
            builder: (context, constraints) {
              double maxWidth = constraints.maxWidth > 600 ? 600 : double.infinity;
              
              return Center(
                child: Container(
                  constraints: BoxConstraints(maxWidth: maxWidth),
                  child: ListView(
                    padding: const EdgeInsets.all(16),
                    children: [
                      const Text(
                        'Account Settings',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                      const SizedBox(height: 10),
                      _buildSettingItem(
                        context,
                        'Edit Profile',
                        Icons.person,
                      ),
                      _buildSettingItem(
                        context,
                        'Change Password',
                        Icons.lock,
                      ),
                      _buildSettingItem(
                        context,
                        'Privacy Settings',
                        Icons.privacy_tip,
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Preferences',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                      const SizedBox(height: 10),
                      _buildSettingItem(
                        context,
                        'Notifications',
                        Icons.notifications,
                      ),
                      _buildSettingItem(
                        context,
                        'Theme',
                        Icons.palette,
                      ),
                      _buildSettingItem(
                        context,
                        'Language',
                        Icons.language,
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Other',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                      const SizedBox(height: 10),
                      _buildSettingItem(
                        context,
                        'About',
                        Icons.info,
                      ),
                      _buildSettingItem(
                        context,
                        'Help & Support',
                        Icons.help,
                      ),
                      _buildSettingItem(
                        context,
                        'Logout',
                        Icons.logout,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }

  // Helper method to build setting items
  Widget _buildSettingItem(
    BuildContext context,
    String title,
    IconData icon, {
    Color? color,
  }) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 4),
      child: ListTile(
        leading: Icon(icon, color: color ?? Colors.blue),
        title: Text(
          title,
          style: TextStyle(color: color),
        ),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('$title tapped'),
              duration: const Duration(seconds: 1),
            ),
          );
        },
      ),
    );
  }
}
