import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user = FirebaseAuth.instance.currentUser!;


  // Logout Function
  void logOut() async{
    showDialog(context: context, builder: (context){
      return const Center(
        child: CircularProgressIndicator(),
      );
    });

    FirebaseAuth.instance.signOut();

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {

    double myHeight = MediaQuery.of(context).size.height;
    double myWeight = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff131417),
        //bottomNavigationBar: BottomNavBar(),
        // appBar: AppBar(actions: [
        //   IconButton(onPressed: logOut, icon: const Icon(Icons.logout))
        // ],),

        body: Center(child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Image.asset('lib/images/google.png', height: 40,),
                  const Text("CS Help line", style:
                  TextStyle(
                    fontSize: 25,
                    color: Colors.white,),),
                ],
              ),
            ),

            //const SizedBox(height: 25,),
            Container(
              height: myHeight * .2,
              width: myWeight * .9,
              decoration: const BoxDecoration(
                  color: Color(0xff2b2b2b),
                  borderRadius: BorderRadius.all(
                      Radius.circular(10)
                  ),
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}
