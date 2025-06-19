import 'package:flowers/colors.dart';
import 'package:flowers/model/flowers.dart';
import 'package:flowers/pages/details.dart';
import 'package:flowers/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 15, right: 15),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 5,
          ),
          itemCount: flowers.length,
          itemBuilder: (context, index) {
            return GridTile(
              footer: GridTileBar(
                leading: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.add, color: Colors.black),
                ),
                title: CustomText(text: ""),
                trailing: CustomText(text: "${flowers[index].price}", color: Colors.black),
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Details(product: flowers[index]),
                    ),
                  );
                },
                child: Image.asset(flowers[index].image),
              ),
            );
          },
        ),
      ),
      drawer: Drawer(
        backgroundColor: whiteColor,
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              SingleChildScrollView(
                child: UserAccountsDrawerHeader(
                  accountEmail: CustomText(text: "sofian@gmial.com"),
                  currentAccountPicture: CircleAvatar(
                    radius: 100,
                    backgroundImage: AssetImage("lib/Images/Sofian.jpg"),
                  ),
                  accountName: CustomText(text: "Sofian Tarek"),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("lib/Images/bg.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                width: double.infinity,
                child: Column(
                  children: [
                    ListTile(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (c) => const HomePage()),
                        );
                      },
                      title: CustomText(
                        text: "Home",
                        fontWeight: FontWeight.bold,
                      ),
                      trailing: Icon(Icons.home),
                    ),
                    ListTile(
                      onTap: () {},
                      title: CustomText(
                        text: "Details",
                        fontWeight: FontWeight.bold,
                      ),
                      trailing: Icon(Icons.details),
                    ),
                    ListTile(
                      onTap: () {},
                      title: CustomText(
                        text: "Settings",
                        fontWeight: FontWeight.bold,
                      ),
                      trailing: Icon(Icons.settings),
                    ),
                    ListTile(
                      onTap: () {},
                      title: CustomText(
                        text: "Logout",
                        fontWeight: FontWeight.bold,
                      ),
                      trailing: Icon(Icons.logout),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: appbarGreen,
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Icon(Icons.menu, color: whiteColor, size: 25),
          ),
        ),
        title: CustomText(
          text: 'Home',
          color: whiteColor,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
        actions: [
          Row(
            children: [
              Stack(
                children: [
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.green[400],
                    child: CustomText(text: "8", color: whiteColor),
                  ),
                  SizedBox(height: 300),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.shopping_cart, color: whiteColor),
                  ),
                ],
              ),
              CustomText(text: "13", color: whiteColor),
              SizedBox(width: 20),
            ],
          ),
        ],
      ),
    );
  }
}
