import 'package:flutter/material.dart';
import 'package:shayari/second.dart';
import 'package:shayari/splace.dart';

void main(){

  runApp(MaterialApp(home: splace()));
}
class first extends StatefulWidget {
  const first({Key? key}) : super(key: key);

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {

  List<String> name = ["Attitude Shayari","Friendship Shayari (दोस्ती शायरी)","Funny Shayari","Good Morning Shayari","Good Night Shayari","Birthday Shayari","Maa Shayari","Love Shayari","Life (Zindagi) Shayari","Inspirational Shayari"];
  List<String> image = ["myimage/attitude.jpg","myimage/friendship.jpg","myimage/Funny.png","myimage/Good Morning.jpg","myimage/Good Night.webp","myimage/Birthday.jpg","myimage/Maa.png","myimage/Love.jpg","myimage/Life.webp","myimage/inspirational.jpg"];


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("Shyari"),),
      body: InkWell(

       child: ListView.separated(

           itemCount: name.length,
         separatorBuilder: (context, index) {

             return Divider();



       },itemBuilder: (context, index) {

             return Container(

               margin: EdgeInsets.all(10),


               child:   ListTile(

                 onTap: () {

                   Navigator.push(context, MaterialPageRoute(builder: (context) {


                     return second(name[index],image[index]);

                   },));




                   setState(() {

                   });
                 },

                 leading: Image.asset(

                   image[index],

                   height: 100,
                   width: 100,

                 ),


                 title: Text(name[index]),


               ),


             );





       },  ),





      ),


    );
  }
}
