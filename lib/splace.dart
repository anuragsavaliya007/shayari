
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:shayari/main.dart';

class splace extends StatefulWidget {
  const splace({Key? key}) : super(key: key);

  @override
  State<splace> createState() => _splaceState();
}

class _splaceState extends State<splace> {

  @override
  void initState() {
    super.initState();

    abc();

  }

  abc() async {

    var status = await Permission.storage.status;
   

    if(status.isDenied)
      {
        await [Permission.storage].request();
      }

     await Future.delayed(Duration(seconds: 3));
     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {

       return first();

     },));

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(

        child: Text("Loding...."),

      ),

    );
  }


}
