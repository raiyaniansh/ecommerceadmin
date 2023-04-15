import 'package:apipostadmin/utils/api_helper.dart';
import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier
{
  TextEditingController txtname = TextEditingController();
  TextEditingController txtrate = TextEditingController();
  TextEditingController txtprice = TextEditingController();
  TextEditingController txtcat = TextEditingController();
  TextEditingController txtdesc = TextEditingController();
  TextEditingController txtoffer = TextEditingController();

  Future<String> api()
  async {
    Api api = Api();
    String status= await api.ApiCall(txtname.text,txtrate.text,txtprice.text,txtoffer.text,txtdesc.text,txtcat.text);
    return status;
  }

  Future<List> Apicalling()
  async {
    Api api = Api();
    List homeModal = await api.ApiCalling();
    return homeModal;
  }

  Future<String> Removeapi(String id)
  async {
    Api api=Api();
    String status = await api.RemoveApi(id);
    return status;
  }
}