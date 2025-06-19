import 'package:flowers/colors.dart';
import 'package:flowers/pages/home_page.dart';
import 'package:flowers/widgets/custom_text.dart';
import 'package:flowers/widgets/my_text_field.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 25),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyTextField(
              keyboardType: TextInputType.name,
              obscureText: false,
              hintText: "Enter your Username",
            ),
            SizedBox(height: 30),
            MyTextField(
              keyboardType: TextInputType.emailAddress,
              obscureText: false,
              hintText: "Enter your Email",
            ),
            SizedBox(height: 30),
            MyTextField(
              keyboardType: TextInputType.name,
              obscureText: true,
              hintText: "Enter your Password",
            ),
            SizedBox(height: 60),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (c) => const HomePage()),
                );
              },
              minWidth: 120,
              height: 50,
              color: btngreen,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(10),
              ),
              child: CustomText(
                text: 'Register',
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
