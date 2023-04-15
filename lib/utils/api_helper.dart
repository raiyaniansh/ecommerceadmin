import 'dart:convert';

import 'package:apipostadmin/screen/home/modal/home_modal.dart';
import 'package:http/http.dart' as http;

class Api {
  Future<String> ApiCall(String name, String rate, String price, String offer, String desc, String cat) async {
    {
      String? link =
          "https://apidatahub.000webhostapp.com/MyShop/API/adddataapi.php";
      Uri uri = Uri.parse(link);
      var json = await http.post(uri, body: {
        "p_name": name,
        "p_category": cat,
        "p_offer": offer,
        "p_price": price,
        "p_desc": desc,
        "p_rate": rate
      });
      if (json.statusCode == 200) {
        return 'Product Add Successfully';
      }
      return 'Product not add please try again...';
    }
  }

  Future<String> RemoveApi(String i)
  async {
    String? link= 'https://apidatahub.000webhostapp.com/MyShop/API/deleteapi.php';
    Uri uri = Uri.parse(link);
    var json= await http.post(uri,body: {"id": i});
    if(json.statusCode == 200)
      {
        return 'Product Deleted Successfully';
      }
    return 'Product Deleted Failed';
  }

  Future<List> ApiCalling() async {
    String? link = 'https://apidatahub.000webhostapp.com/MyShop/API/products.php';
    Uri uri = Uri.parse(link);
    var response = await http.get(uri);
    var json = jsonDecode(response.body);
    List homemodal = json.map((e)=>HomeModal.fromJson(e)).toList();
    return homemodal;
  }
}
