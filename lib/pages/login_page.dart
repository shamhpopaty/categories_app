import 'package:flutter/material.dart';
import '../widgets/auth_textfield.dart';
import '../widgets/button_auth.dart';
import '../widgets/logo_auth.dart';
import '../widgets/password_textfield.dart';
import 'main_page.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color.fromRGBO(255, 255, 255, 1),
      body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                LogoAuth(),
                SizedBox(height: 20),
                AuthTextFormField(
                  hintText: "Your Email",
                  iconPrefix: Icons.email,
                  textBox: '',
                ),
                SizedBox(height: 40),
                AuthPasswordTextFormField(hintText: "Your Password"),
                SizedBox(height: 80),
                CustomBottomAuth(
                  text: "log in",
                  onPressed: () {
Navigator.push(context, MaterialPageRoute(builder: (context){
  return Home_Page();
}));
                  },
                ),
              ],
            ),
          ),
      ),
    );
  }
}

