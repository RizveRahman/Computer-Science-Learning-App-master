import 'package:computer_science_in_bangla/components/bottom_nav.dart';
import 'package:computer_science_in_bangla/pages/navigation_page/home_page.dart';
import 'package:computer_science_in_bangla/pages/login_or_register.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot){
          if(snapshot.hasData) {
            return const BottomNavBar();
          } else {
            return const LoginOrRegisterPage();
          }
        },
      ),
    );
  }
}
