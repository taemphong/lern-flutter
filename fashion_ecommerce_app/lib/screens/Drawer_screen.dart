import 'package:fashion_ecommerce_app/main_wrapper.dart';
import 'package:fashion_ecommerce_app/screens/Favoritepage.dart';
import 'package:fashion_ecommerce_app/screens/account_screen.dart';
import 'package:fashion_ecommerce_app/screens/login.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('WB SHOP'),
            accountEmail: const Text('W&B@KU.th'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  'assets/images/son.jpg',
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                ),
              ),
            ),
            decoration: const BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/shop.png'),
                      ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('Favorites'),
            onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
              builder: (context) {
              return const FavoriteItemsPage(); 
        },
      ),
    );
  },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Profile'),
            onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
              builder: (context) {
              return const LoginScreen(); 
        },
      ),
    );
  },
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
              builder: (context) {
              return const MainWrapper(); 
        },
      ),
    );
  },
          ),
          const ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Request'),
          ),
          const Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
              builder: (context) {
              return const AccountScreen(); 
        },
      ),
    );
  },
          ),
          ListTile(
           leading: Icon(Icons.exit_to_app),
           title: Text('Exit'),
           onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
              builder: (context) {
              return const LoginScreen(); 
        },
      ),
    );
  },
),
        ],
      ),
    );
  }
}