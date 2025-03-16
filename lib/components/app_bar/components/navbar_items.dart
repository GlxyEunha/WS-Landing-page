import 'package:flutter/material.dart';

// navbar_items
final navbarItems = ["Home", "Menu", "Promo", "News"];

class NavbarItems extends StatelessWidget {
  const NavbarItems({
    Key? key,
    this.isMobile = false,
  }) : super(key: key);
  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: isMobile ? Axis.vertical : Axis.horizontal,
      itemBuilder: (context, index) {
        return NavbarItem(
          title: navbarItems[index],
          onTap: () {
            // Check which page to navigate to based on the title
            switch (navbarItems[index]) {
              case "Home":
                Navigator.push(context, MaterialPageRoute(builder: (_) => HomePage()));
                break;
              case "Menu":
                Navigator.push(context, MaterialPageRoute(builder: (_) => MenuPage()));
                break;
              case "Promo":
                Navigator.push(context, MaterialPageRoute(builder: (_) => PromoPage()));
                break;
              case "News":
                Navigator.push(context, MaterialPageRoute(builder: (_) => NewsPage()));
                break;
            }
          },
        );
      },
      separatorBuilder: (context, index) {
        return const SizedBox(width: 30.0);
      },
      shrinkWrap: true,
      itemCount: navbarItems.length,
    );
  }
}

class NavbarItem extends StatelessWidget {
  const NavbarItem({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);
  
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 20.0,
        ),
      ),
    );
  }
}

// Define example pages
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      body: Center(child: Text("Welcome to Home Page")),
    );
  }
}

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Menu")),
      body: Center(child: Text("Welcome to Menu Page")),
    );
  }
}

class PromoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Promo")),
      body: Center(child: Text("Welcome to Promo Page")),
    );
  }
}

class NewsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("News")),
      body: Center(child: Text("Welcome to News Page")),
    );
  }
}
