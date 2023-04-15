import 'package:apipostadmin/screen/home/provider/home_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  HomeProvider? homeProviderf;
  HomeProvider? homeProvidert;
  @override
  Widget build(BuildContext context) {
    homeProviderf = Provider.of<HomeProvider>(context,listen: false);
    homeProvidert = Provider.of<HomeProvider>(context,listen: true);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
          backgroundColor: Colors.grey.shade100,
          leading: Builder(builder: (context) => InkWell(onTap: () {
            Scaffold.of(context).openDrawer();
          },child: Icon(Icons.menu,color: Colors.black)),),
          title: Text("Day deals seller",style: TextStyle(color: Colors.black)),
          elevation: 0,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Manage your product",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500)),
                  IconButton(onPressed: () {
                    Navigator.pushReplacementNamed(context, '/');
                  }, icon: Icon(Icons.refresh))
                ],
              ),
            ),
            FutureBuilder(
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return Text("${snapshot.error}");
                } else if (snapshot.hasData) {
                  List? data = snapshot.data;
                  return Expanded(
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (context, index) => Container(
                        margin: EdgeInsets.only(top: 10,left: 10,right: 10),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Image.network('https://s.yimg.com/fz/api/res/1.2/kfa68EyKDl_RjpiAU1cT.Q--~C/YXBwaWQ9c3JjaGRkO2ZpPWZpdDtoPTI0MDtxPTgwO3c9MjQw/https://s.yimg.com/zb/imgv1/f3fb234d-9219-3c59-b9bf-17dfd46b3533/t_500x300',fit: BoxFit.cover),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "  ${data[index].productName}",
                                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
                                ),
                                SizedBox(height: 1,),
                                Text(
                                  "   ${data[index].productCategory}",
                                  style: TextStyle(fontWeight: FontWeight.w600,color: Colors.black54,fontSize: 15),
                                ),
                                SizedBox(height: 2,),
                                Text(
                                  "  Rs. ${data[index].productPrice}",
                                  style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20),
                                ),
                              ],
                            ),
                            Expanded(child: SizedBox()),
                            InkWell(onTap: () {
                              homeProviderf!.Removeapi(data[index].id);
                              Navigator.pushReplacementNamed(context, '/');
                            },child: Icon(Icons.delete))
                          ],
                        ),
                      ),
                      itemCount: data!.length,
                    ),
                  );
                }
                return Container(height: 630,alignment: Alignment.center,child: CircularProgressIndicator(color: Colors.black,));
              },
              future: homeProviderf!.Apicalling(),
            ),
          ],
        ),
        drawer: Drawer(
          child: Container(
            color: Colors.grey.shade100,
            child: Column(
              children: [
                Container(
                  height: 85,
                  width: double.infinity,
                  color: Colors.white,
                  alignment: Alignment.bottomLeft,
                  padding: EdgeInsets.all(10),
                  child: Text("Welcome to,\nDay deals seller",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25)),
                ),
                SizedBox(height: 15,),
                Container(
                  width: double.infinity,
                  color: Colors.white,
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Trending",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25)),
                      SizedBox(height: 20,),
                      Text("Best Sellers",style: TextStyle(fontSize: 20)),
                      Text("Best Sellers of month",style: TextStyle(fontSize: 20)),
                    ],
                  ),
                ),
                SizedBox(height: 15,),
                Container(
                  width: double.infinity,
                  color: Colors.white,
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("New Order",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25)),
                      SizedBox(height: 20,),
                      Text("New Order",style: TextStyle(fontSize: 20)),
                      Text("Return Product",style: TextStyle(fontSize: 20)),
                      Text("Claimed Product",style: TextStyle(fontSize: 20)),
                    ],
                  ),
                ),
                SizedBox(height: 15,),
                Container(
                  width: double.infinity,
                  color: Colors.white,
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Categories add by you",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25)),
                      SizedBox(height: 20,),
                      Text("Mobiles",style: TextStyle(fontSize: 20)),
                      Text("Computers",style: TextStyle(fontSize: 20)),
                      Text("Book",style: TextStyle(fontSize: 20)),
                      Text("Fashion",style: TextStyle(fontSize: 20)),
                      Text("See all Categories",style: TextStyle(fontSize: 20)),

                    ],
                  ),
                ),
                SizedBox(height: 15,),
                Container(
                  width: double.infinity,
                  color: Colors.white,
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Program & Help",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25)),
                      SizedBox(height: 20,),
                      Text("Help",style: TextStyle(fontSize: 20)),
                      Text("Customer care",style: TextStyle(fontSize: 20)),
                      Text("Try premium",style: TextStyle(fontSize: 20)),
                      Text("Top selled products",style: TextStyle(fontSize: 20)),

                    ],
                  ),
                ),
                Expanded(child: SizedBox(height: 15,)),
                Container(
                  width: double.infinity,
                  color: Colors.white,
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Logout",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25)),
                      Icon(Icons.logout),
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
