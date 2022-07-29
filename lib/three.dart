import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shayari/four.dart';

class three extends StatefulWidget {
  List<String> mix;
  String name;
  int index;

  three(this.mix, this.name, this.index);

  @override
  State<three> createState() => _threeState();
}

class _threeState extends State<three> {
  PageController pageController = PageController();

  int cnt = 0;

  @override
  void initState() {
    super.initState();

    cnt = widget.index;
    pageController = PageController(initialPage: cnt);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            color: Colors.yellow,
            child: Text(
              "${cnt + 1}/${widget.mix.length}",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 50),
            ),
          ),
          Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  cnt = value;

                  setState(() {});
                },
                controller: pageController,
                itemCount: widget.mix.length,
                itemBuilder: (context, index) {
                  return Container(

                    alignment: Alignment.center,
                    margin: EdgeInsets.all(20),
                    child: ListView(
                      children: [
                        Expanded(
                          child: Container(
                            // height: double.infinity,
                            // width: double.infinity,
                            color: Colors.green.shade300,


                            child: FittedBox(
                              child: Text("${widget.mix[cnt]}",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      // fontSize: 40,
                                      color: Colors.yellow)),
                            ),
                          ),
                        ),
                      ],
                    ),



                  );
                },
              )),
          Expanded(
              child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(onPressed: () {

                FlutterClipboard.copy(widget.mix[cnt]).then(( value ) => print('copied'));

                Fluttertoast.showToast(
                    msg: "Copid!",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    timeInSecForIosWeb: 5,
                    backgroundColor: Colors.red,
                    textColor: Colors.white,
                    fontSize: 16.0
                );

              }, icon: Icon(Icons.copy)),
              IconButton(
                  onPressed: () {
                    if (cnt > 0) {
                      cnt--;
                      pageController.jumpToPage(cnt);
                    }
                    setState(() {});
                  },
                  icon: Icon(Icons.arrow_back_ios_new)),
              IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return foure(widget.name, cnt, widget.mix);
                      },
                    ));
                  },
                  icon: Icon(Icons.edit_off_rounded)),
              IconButton(
                  onPressed: () {
                    if (cnt < widget.mix.length - 1) {
                      cnt++;
                      pageController.jumpToPage(cnt);
                    }
                    setState(() {});
                  },
                  icon: Icon(Icons.arrow_forward_ios_outlined)),
              IconButton(onPressed: () {

                Share.share('check out my website https://example.com', subject: widget.mix[cnt]);

              }, icon: Icon(Icons.share_rounded)),
            ],
          )),
        ],
      ),
    );
  }
}
