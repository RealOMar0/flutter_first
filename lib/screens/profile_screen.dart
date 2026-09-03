import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ProfileLeading(),
            SizedBox(height: 10),
            _ProfileMenu(icon: Icons.person_outline, title: 'Account details'),
            _ProfileMenu(icon: Icons.receipt_long_outlined, title: 'My orders'),
            _ProfileMenu(icon: Icons.favorite_border, title: 'Wishlist'),
            _ProfileMenu(icon: Icons.settings_outlined, title: 'Settings'),
          ],
        ),
      ),
    );
  }
}

class ProfileLeading extends StatelessWidget {
  const ProfileLeading({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF111111), Color(0xFF383838)],
        ),
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(20),
          bottomLeft: Radius.circular(20),
        ),
      ),
      child: Column(
        spacing: 20,
        children: [
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.arrow_back,
                  size: 25,
                  color: Colors.white,
                ),
              ),
              const Text(
                "Profile",
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
              const Icon(Icons.settings, size: 25, color: Colors.white),
            ],
          ),

          const CircleAvatar(
            backgroundColor: Color(0xFFEDEDED),
            radius: 70,
            child: Icon(Icons.sports_esports_rounded, size: 70, color: Color(0xFF1C1C1E)),
          ),
          const Column(
            children: [
              Text(
                "GameVault Player",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Text(
                "Level 12 Gamer",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("24", style: TextStyle(color: Colors.white, fontSize: 18)),
              SizedBox(width: 5),
              Text(
                "Orders",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              SizedBox(width: 10),
              SizedBox(
                height: 40,
                child: VerticalDivider(color: Colors.white, thickness: 1.5),
              ),

              SizedBox(width: 10),

              Text("8", style: TextStyle(color: Colors.white, fontSize: 18)),
              SizedBox(width: 5),
              Text(
                "Wishlist",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _ProfileMenu extends StatelessWidget {
  const _ProfileMenu({required this.icon, required this.title});
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
        decoration: BoxDecoration(
          color: const Color(0xFFF5F5F5), borderRadius: BorderRadius.circular(14)),
        child: ListTile(
          leading: Icon(icon, color: const Color(0xFF1C1C1E)),
          title: Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
          trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 16),
          onTap: () {},
        ),
      );
}

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          // Header
          Container(
            width: double.infinity,
            height: 200,
            padding: const EdgeInsets.all(24),
            decoration: const BoxDecoration(color: Color(0xFF1C1C1E)),
            child: const Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                "GameVault",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          const SizedBox(height: 10),

          // Home
          ListTile(
            onTap: () {
              Navigator.pop(context);
            },
            leading: const Icon(Icons.home_outlined),
            title: const Text("Home"),
            trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 16),
          ),

          const Divider(),

          // Settings
          ListTile(
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, "/settings");
            },
            leading: const Icon(Icons.settings_outlined),
            title: const Text("Settings"),
            trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 16),
          ),

          const Divider(),

          // About
          ListTile(
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, "/about");
            },
            leading: const Icon(Icons.info_outline),
            title: const Text("About"),
            trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 16),
          ),
        ],
      ),
    );
  }
}
