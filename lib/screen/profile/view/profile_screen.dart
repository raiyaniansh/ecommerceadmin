import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                SizedBox(height: 50,),
                CircleAvatar(
                  backgroundImage: NetworkImage('https://tse2.mm.bing.net/th?id=OIP.pGCf7VFVHloTyjrq43fM8gHaHa&pid=Api&P=0',),
                  maxRadius: 65,
                ),
                SizedBox(height: 10,),
                Text("Loyd Haynes",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600)),
                SizedBox(height: 3,),
                Text("loydhaynes@gmail.com",style: TextStyle(fontSize: 16,color: Colors.grey)),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(25)
                  ),
                  child: Text("Upgrade to Pro",style: TextStyle(color: Colors.white,fontSize: 18)),
                ),
                SizedBox(height: 25,),
                Container(
                  padding: EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(25)
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.task_alt),
                      SizedBox(width: 10,),
                      Text("Order",style: TextStyle(fontSize: 18)),
                      Expanded(child: SizedBox()),
                      Icon(Icons.navigate_next,)
                    ],
                  ),
                ),
                SizedBox(height: 15,),
                Container(
                  padding: EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(25)
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.person),
                      SizedBox(width: 10,),
                      Text("Account",style: TextStyle(fontSize: 18)),
                      Expanded(child: SizedBox()),
                      Icon(Icons.navigate_next,)
                    ],
                  ),
                ),
                SizedBox(height: 15,),
                Container(
                  padding: EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(25)
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.settings_outlined),
                      SizedBox(width: 10,),
                      Text("Settings",style: TextStyle(fontSize: 18)),
                      Expanded(child: SizedBox()),
                      Icon(Icons.navigate_next,)
                    ],
                  ),
                ),
                SizedBox(height: 15,),
                Container(
                  padding: EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(25)
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.info_outline),
                      SizedBox(width: 10,),
                      Text("info",style: TextStyle(fontSize: 18)),
                      Expanded(child: SizedBox()),
                      Icon(Icons.navigate_next,)
                    ],
                  ),
                ),
                SizedBox(height: 15,),
                Container(
                  padding: EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(25)
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.logout),
                      SizedBox(width: 10,),
                      Text("Logout",style: TextStyle(fontSize: 18)),
                      Expanded(child: SizedBox()),
                      Icon(Icons.navigate_next,)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
