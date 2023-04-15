import 'package:apipostadmin/screen/home/provider/home_provider.dart';
import 'package:apipostadmin/utils/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeProvider? homeProviderf;
  HomeProvider? homeProvidert;

  @override
  Widget build(BuildContext context) {
    homeProviderf = Provider.of<HomeProvider>(context, listen: false);
    homeProvidert = Provider.of<HomeProvider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey.shade100,
          title: Text("Day deals seller",style: TextStyle(color: Colors.black)),
          elevation: 0,
        ),
        backgroundColor: Colors.grey.shade100,
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Add New Product",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500)),
              SizedBox(height: 15,),
              TextF(homeProviderf!.txtname, 'Name'),
              SizedBox(
                height: 10,
              ),
              TextF(homeProviderf!.txtrate, 'Rate'),
              SizedBox(
                height: 10,
              ),
              TextF(homeProviderf!.txtcat, 'Category'),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(width: 165,child: TextF(homeProviderf!.txtprice, 'Price')),
                  SizedBox(width: 10,),
                  Container(width: 165,child: TextF(homeProviderf!.txtoffer, 'Offer')),
                ],
              ),
              SizedBox(height: 10,),
              TextF(homeProviderf!.txtdesc, 'Desciption'),
              Expanded(child: SizedBox()),
              InkWell(
                onTap: () async{

                  String status =await homeProviderf!.api();
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("${status}")));
                },
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey),
                  ),
                  alignment: Alignment.center,
                  child: Text("Add Product",style: TextStyle(color: Colors.grey.shade700,fontSize: 20)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
