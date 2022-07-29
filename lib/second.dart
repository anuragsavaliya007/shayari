
import 'package:flutter/material.dart';
import 'package:shayari/three.dart';

class second extends StatefulWidget {
  String name;
  String image;


  second(this.name, this.image);



  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {

  List<String> mix = [];
  List<String> move = [];



  @override
  void initState() {

    super.initState();

    if(widget.name == "Attitude Shayari")
    {
        mix = attitude;

    }
    if(widget.name == "Friendship Shayari (दोस्ती शायरी)")
    {
      mix = friendship;
    }
    if(widget.name == "Funny Shayari")
    {
      mix = funny;
    }

    if(widget.name == "Good Morning Shayari")
    {
      mix = goodmorning;
    }
    if(widget.name == "Good Night Shayari")
    {
      mix = goodnight;
    }
    if(widget.name == "Birthday Shayari")
    {
      mix = birthday;
    }
    if(widget.name == "Maa Shayari")
    {
      mix = maa;
    }
    if(widget.name == "Love Shayari")
    {
      mix = love;
    }
    if(widget.name == "Life (Zindagi) Shayari")
    {
      mix = life;
    }
    if(widget.name == "Inspirational Shayari")
    {
      mix = inspirational;
    }



    move = mix;



  }




  List<String> attitude = ["""Humein Shayar Samajh Ke Yoon Najar Andaz Mat Kariye,
Najar Hum Fer Le To Husn Ka Baazar Gir Jayega.""","""Humari Haisiyat Ka Andaza Tum Ye Jaan Ke Laga Lo,
Hum Kabhi Unke Nahi Hote Jo Har Kisi Ke Ho Gaye.""","""Mere Dushman Bhi Mere Mureed Hain Shayad,
Waqt-BeWaqt Mera Naam Liya Karte Hain,
Meri Gali Se Gujarte Hain Chhupa Ke Khanzar,
Ru-Ba-Ru Hone Par Salaam Kiya Karte Hain.""","""Haalat Ke Kadamo Par Sikandar Nahi Jhukte,
Toote Huye Taare Kabhi Zamin Par Nahi Girte,
Bade Shauk Se Girti Hai Lahrein Samundar Mein,
Par Samundar Kabhi Lahron Mein Nahi Girte.""","""Jubaan Par Mohar Lagana Koi Badi Baat Nahi,
Badal Sako To Badal Do Mere Khayalon Ko."""];

  List<String> friendship = ["""Zindagi Har Pal Kuchh Khaas Nahi Hoti,
Phoolo Ki Khushboo Hamesha Paas Nahi Hoti,
Milna Humari Takdeer Mein Tha Varna,
Itni Pyari Dosti ittefaaq Nahi Hoti.""","""Tum Dost Ban Ke Aise Aaye Zindagi Mein,
Ki Hum Yeh Zamana Hi Bhool Gaye,
Tumhein Yaad Aaye Na Aaye Humari Kabhi,
Par Hum To Tumhein Bhulaana Hi Bhool Gaye.""","""Zindagi Ke Toofanon Ka Saahil Hai Dosti,
Dil Ke Armaanon Ki Manzil Hai Dosti,
Zindagi Bhi Ban Jayegi Apni To Jannat,
Agar Maut Aane Tak Saath De Dosti.""","""Dushmano Se Mohabbat Hone Lagi Hai Mujhe,
Jaise Jaise Dosto Ko Aazmata Ja Raha Hoon.""","""Dost Hokar Bhi Maheeno Nahi Milta Mujhse,
Uss Se Kehna Ki Kabhi Zakhm Lagaane Aaye."""];

  List<String> funny =  ["""Tera Pyar Paane Ke Liye
Maine Kitna Intezar Kiya,
Aur Uss Intezar Mein Na Jaane
Kitno Se Pyar Kiya.""","""Jise Koyal Samjha Wo Kauwa Nikla,
Dosti Ke Naam Par Hauwa Nikla,
Jo Rokte The Humein Sharab Peene Se,
Aaj Unhein Ki Jeb Mein Pauwa Nikla.""","""Hum Uske Ishq Mein
Iss Kadar Chot Khaye Huye Hain,
Kal Uske Baap Ne Maara Tha
Aaj Bhai Aaye Huye Hain.""","""Bahut Khoobsurat Ho Tum Phool Ki Tareh,
Khud Ko Duniya Ki Najar Se Bachaya Karo,
Sirf Aankhon Mein Kaajal Hi Kafi Nahi,
Gale Mein Nimboo-Mirchi Bhi Latkaya Karo.""","""Twinkle Twinkle Little Star,
Teri GirlFriend Gayi Bazaar,
Usko Mil Gaya Doosra Yaar,
Uske Sang Wo Ho Gayi Faraar,
Ab Tu Baithh Ke Makkhi Maar."""];

  List<String> goodmorning = ["""Uthh Kar Dekhiye Iss Subah Ka Najara,
Hawa Hai Thandi Aur Mausam Bhi Hai Pyara,
So Gaya Chaand Aur Chhup Gaya Har Ek Tara,
Kabool Kariye Aap Good Morning Humara.
Good Morning! Have a nice day...""","""Os Ki Boondein Phoolon Ko Bhiga Rahi Hain,
Hawa Ki Lehrein Ek Taazgi Jaga Rahi Hain,
Aaiye Aur Ho Jayiye Aap Bhi Ismein Shamil,
Ek Pyari Si Subah Aapko Bula Rahi Hai.
Good Morning!""","""Subah-Subah Aapko Ye Paigaam Dena Hai,
Aapko Subah Ka Pehla Salaam Dena Hai,
Gujre Saara Din Aapka Khushi-Khushi,
Iss Subah Ko KhoobSoorat Sa Naam Dena Hai.
Good Morning!""","""Har Subah Ek Naye Din Ki Shuruat Hoti Hai,
Kisi Apne Se Baat Ho To Khaas Hoti Hai,
Hans Ke Pyar Se Doston Ko SuPrabhat Bolo,
To Din Bhar Khushiyan Apne Sath Hoti Hain.
Good Morning Friends.""","""Phoolo Ki Wadiyon Mein Ho Tera Basera,
Sitaron Ke Aangan Mein Ho Ghar Tera,
Duaa Hai Ek Dost Ki Ek Dost Ko,
Ki Tujhse Bhi Khoobsoorat Ho Savera Tera.
Good Morning."""];

  List<String> goodnight = ["""Raat Ko Jab Chaand Sitare Chamakte Hain,
Hum Hardam Aapki Yaad Mein Tadapte Hain,
Aap To Chale Jaate Ho Chhod Ker Humein,
Hum Raat Bhar Aapse Milne Ko Taraste Hain.
Good Night... Missing You...""","""Chaand Ki Chaandni Se Ek Palki Banai Hai,
Yeh Palki Hum Ne Taaro Se Sajai Hai,
Ai Hawa Jara Dheere Dheere Hi Chalna,
Mere Dost Ko Badi Pyari Neend Aayi Hai.
Good Night and Sweet Dreams..!!""","""Ai Chand Mere Dost Ko Ek Tohfa Dena,
Taaro Ki Mehfil Ke Sapne De Dena,
Chhupa Dena Tum Andhere Ko Roshni Se,
Is Raat Ke Bad Ek Khoobsurat Svera Dena.
Good Night Dear!""","""Tanha Raat Mein Jab Humeri Yaad Sataye,
Hawaa Jab Aapke Baalon Ko Sehlaaye,
Kar Lena Aankhein Band Aur So Jana,
Shayad Hum Aapke Khawabo Mein Aa Jaaye.
Good Night & Sweet Dreams.""","""Honthh Keh Nahi Sakte Fasaana Dil Ka,
Shayad Najar Se Humari Baat Ho Jaaye,
Is Ummeed Mein Karte Hain Intezaar Raat Ka,
Ki Shayad Sapne Mein Hi Mulakat Ho Jaaye.
G.Night"""];

  List<String> birthday = ["""Dil Ka Tohfa De Doon Ya De Doon Chaand Taare,
JanamDin Pe Tujhe Kya Doon Poochhe Mujhse Sare,
Ye Zindagi Tere Naam Kar Doon Bhi To Kam Hai.
Daaman Mein Bhar Doon Har Khushi Main Tumhare.
Happy Birthday Dear...""","""Ye Mahina Ye Din Ye Tareekh Jab Jab Aayi,
Humne Pyar Se JanmDin Ki Mehfil Sajayi,
Har Shama Par Naam Likh Diya Dosti Ka,
Iski Roshani Mein Chand Jaise Teri Surat Samayi.""","""Kaise Karoon Shukriya Khuda Ka Iss Din Ke Liye,
Jisne Tumhein Dharti Pe Bheja Humare Liye,
Iss JanmDin Par Kuchh Aur Toh Nahi De Sakte,
Bas Meri Har Dua Hai Teri Lambi Umr Ke Liye.
Happy Birthday""","""Likh Du Tumhari Umr Main Chand-Sitaro Se,
Janmdin Manaau Tumhara Phool-Baharon Se,
Har Ek KhoobSoorti Duniya Ki LaKar De Du,
Mehfilein Sajaa Du Haseen-Haseen Najaro Se.
Happy Birthday!!""","""Har Din Se Pyara Lagta Hai Ye Khaas Din,
Jise Hum Bitana Nahi Chahte Aapke Bin,
Waise Woh Dil Deta Hai Sadaa Hi Duaa Aapko,
Fir Bhi Kahte Hain Mubaaraq Ho JanamDin.
Happy Birthday..."""];

  List<String> maa = ["""Sar Par Jo Haath Fere To Himmat Mil Jaye,
Maa Ek Baar Muskura De To Jannat Mil Jaye.""","""Chalti Firti Aankhon Se Azaan Dehi Hai,
Maine Jannat To Nahi Dekhi Hai Maa Dekhi Hai.""","""Seedha Sadha Bhola Bhala Main Hi Sabse Achchha Hoon,
Kitna Bhi Ho Jaaun Bada Maa Aaj Bhi Tera Bachcha Hoon.""","""Yun To Maine Bulandiyon Ke Har Nishaan Ko Chhuaa,
Jab Maa Ne God Mein Uthaya To Aasman Ko Chhuaa.""","""Wo To Likha Ke Laayi Hai Kismat Mein Jaagna,
Maa Kaise So Sakegi Ki Beta Safar Mein Hai."""];

  List<String> love  = ["""Tere Khayal Se Khud Ko Chhupa Ke Dekha Hai,
Dil-o-Najar Ko Rula-Rula Ke Dekha Hai,
Tu Nahi To Kuchh Bhi Nahi Hai Teri Kasam,
Maine Kuchh Pal Tujhe Bhula Ke Dekha Hai.""","""हम ज़िन्दगी भर आपका इंतज़ार कर लेंगे।
Hum Aapki Har Cheez Se Pyar Kar Lenge,
Aapki Har Baat Par Aitbaar Kar Lenge,
Bas Ek Bar Keh Do Ki Tum Sirf Mere Ho,
Hum Zindagi Bhar AapKa Intezaar Kar Lenge.""","""Jaagne Ki Bhi Jagaane Ki Bhi Aadat Ho Jaye,
Kaash Tujhko Kisi Shayar Se Mohabbat Ho Jaye.""","""Nahi Jo Dil Mein Jagah To Najar Mein Rehne Do,
Meri Hayaat Ko Tum Apne Asar Mein Rehne Do,
Main Apni Soch Ko Teri Gali Mein Chhod Aaya Hun,
Mere Wajood Ko Khwabon Ke Ghar Mein Rehne Do.""","""Kitaab-e-Dil Mein Bhi Rakha To Tazagi Na Gayi,
Tere Khayal Ka Jalwa Gulaab Jaisa Hai."""];

  List<String> life = ["""Bade Hi Ajeeb Hain Ye Zindagi Ke Raaste,
Anjane Mod Par Kuchh Log Apne Ban Jate Hain,
Milne Ki Khushi Dein Ya Na Dein,
Magar Bichadne Ka Gam Zaroor De Jate Hain.""","""Ajeeb Tarah Se Gujar Gayi Meri Bhi Zindagi,
Socha Kuchh, Kia Kuchh, Hua Kuchh, Mila Kuchh.""","""Zindagi Sirf Mohabbat Nahi Kuchh Aur Bhi Hai,
Zulf-o-Rukhsaar Ki Jannat Nahi Kuchh Aur Bhi Hai,
Bhookh Aur Pyaas Ki Maari Huyi Iss Duniya Mein,
Ishq Hi Ek Hakiqat Nahi Kuchh Aur Bhi Hai.

""","""Kitna Mushkil Hai Zindagi Ka Yeh Safar,
Khuda Ne Marna Haraam Kiya Logon Ne Jeena.""","""Sar-e-Aam Mujhe Ye Shikayat Hai Zindagi Se,
Kyun Milta Nahi Mijaaz Mera Kisi Se."""];

  List<String> inspirational = ["""Ye Zindagi Hasin Hai Iss Se Pyar Karo,
Abhi Hai Raat To Subah Ka Intezar Karo,
Wo Pal Bhi Ayega Jiski Khwahish Hai Aapko,
Rab Par Rakho Bharosa Waqt Par Aitbar Karo.""","""Hausle Bhi Kisi Hakeem Se Kam Nahi Hote,
Har Takleef Mein Takat Ki Davaa Dete Hain.""","""Ek Sooraj Tha Ki Taaro Ke Gharane Se Uthha,
Aankh Hairan Hai Kya Shakhs Zamane Se Uthha.""","""Yahi Soch Kar Har Tapish Mein Jalta Aaya Hoon,
Dhoop Kitni Bhi Tej Ho Samandar Nahi Sookha Karte.""","""Lakeerein Apne Haathon Ki Banana Humko Aata Hai,
Wo Koi Aur Honge Apni Kismat Pe Jo Rote Hain."""];






  @override
  Widget build(BuildContext context) {

    return Scaffold(
      
      appBar: AppBar(title: Text("${widget.name}"),),



      body: InkWell(

        child: ListView.separated(


          itemCount: mix.length,

            separatorBuilder: (context, index) {

              return Divider();

            },
            itemBuilder: (context, index) {

              return Container(

                margin: EdgeInsets.all(10),

                decoration: BoxDecoration(
                  

                  border: Border.all(color: Colors.grey,width: 2),
                   borderRadius: BorderRadius.circular(30),


                ),


                child: ListTile(


                  onTap: () {


                    Navigator.push(context, MaterialPageRoute(builder: (context) {

                      return three(mix,widget.name,index);

                    },));


                    setState(() {


                    });

                  },

                  leading: Image.asset(

                    widget.image,
                    height: 100,
                    width: 100,

                  ),

                  title: Text(mix[index],textAlign: TextAlign.center,maxLines: 1,),

                ),




              );








        },  ),





      ),


      
    );
  }


}
