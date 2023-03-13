import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget with ChangeNotifier {
   ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  void logOut() async{

    FirebaseAuth.instance.signOut();

    showDialog(context: context, builder: (context){
      return const Center(
        child: CircularProgressIndicator(),
      );
    });
    Navigator.pop(context);
  }


  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;

    double myHeight = MediaQuery.of(context).size.height;
    double myWeight = MediaQuery.of(context).size.width;


    Object getProfilePic() {
      if (user.photoURL != null) {
        return NetworkImage(user.photoURL!);
      } else {
        return  Icon(Icons.account_circle_outlined);
      }
    }


    //var contentArry = ['My Courses', 'Bookmarked Articles', 'Bookmarked Video' 'Interests'];

    return SafeArea(
      child: Scaffold(
        backgroundColor:  Color(0xff222831),
        body: SingleChildScrollView(
          child: SizedBox(
            width: myWeight,
            child: Padding(
              padding:  EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    decoration:  BoxDecoration(
                      color: Color(0xff393E46),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10))
                    ),
                    height: 150,
                    child: Row(
                      children: [
                          Expanded(
                          flex: 1,
                          child: SizedBox(
                            height: 60,
                            width: 60,
                            child: CircleAvatar(
                              backgroundImage: NetworkImage('https://via.placeholder.com/150'),
                              maxRadius: 15,
                              minRadius: 15,
                            ),
                          ),
                        ),
                        Expanded(
                            flex: 2,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:  [
                                Text(user.displayName!, style:
                                const TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white70
                                ),
                                ),
                                const SizedBox(height: 10,),
                                const Text('Green University of Bangladesh',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white70
                                  ),
                                ),
                                const SizedBox(height: 10,),
                                Text(user.email!, style: const TextStyle(color: Colors.green),),
                              ],
                            ))
                      ],
                    ),
                  ),

                  const SizedBox(height: 15,),

                  // Content Section
                  Container(
                    decoration: const BoxDecoration(
                      color: Color(0xff393E46),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10))
                    ),
                    height: myHeight * 1.2,
                    width: myWeight * 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 10,left: 20),
                          child: Text("Content", style: TextStyle(fontSize: 25, color: Colors.white),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: const BoxDecoration(
                                color: Color(0xff1e1e1e),
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            height: myHeight * 0.07,
                            width: myWeight * 0.9,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: const BoxDecoration(
                                color: Color(0xff1e1e1e),
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            height: myHeight * 0.07,
                            width: myWeight * 0.9,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: const BoxDecoration(
                                color: Color(0xff1e1e1e),
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            height: myHeight * 0.07,
                            width: myWeight * 0.9,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: const BoxDecoration(
                                color: Color(0xff1e1e1e),
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            height: myHeight * 0.07,
                            width: myWeight * 0.9,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: const BoxDecoration(
                                color: Color(0xff1e1e1e),
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            height: myHeight * 0.07,
                            width: myWeight * 0.9,
                          ),
                        ),

                        ElevatedButton(onPressed: logOut,
                            child: Text("LogOut"))
                      ],
                    )
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}




