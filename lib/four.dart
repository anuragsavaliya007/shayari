import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:share_plus/share_plus.dart';

class foure extends StatefulWidget {
  String name;
  int cnt;
  List<String> mix;

  foure(this.name, this.cnt, this.mix);

  @override
  State<foure> createState() => _foureState();
}

class _foureState extends State<foure> {
  List<Color> c = [
    Colors.red,
    Colors.black,
    Colors.black38,
    Colors.white,
    Colors.lightBlue,
    Colors.greenAccent,
    Colors.green,
    Colors.lightBlue,
    Colors.indigoAccent,
    Colors.deepOrange,
    Colors.lightGreen,
    Colors.cyan,
    Colors.yellow,
    Colors.orange,
    Colors.grey,
    Colors.pinkAccent,
    Colors.teal,
    Colors.purple,
  ];
  List<Color> b = [
    Colors.white,
    Colors.black,
    Colors.black38,
    Colors.red,
    Colors.lightBlue,
    Colors.greenAccent,
    Colors.green,
    Colors.lightBlue,
    Colors.indigoAccent,
    Colors.deepOrange,
    Colors.lightGreen,
    Colors.cyan,
    Colors.yellow,
    Colors.orange,
    Colors.grey,
    Colors.pinkAccent,
    Colors.teal,
    Colors.purple,
  ];
  List<String> font = ["family1", "family2", "family3"];
  List<String> emoji = [""];

  int i = 0;
  int j = 0;
  int v = 1;
  double textsize = 30;

  @override
  void initState() {
    super.initState();

    creatfolder();
  }

  String folderpath = "";

  creatfolder() async {
    String path = "storage/emulated/0/Download/Shariy";
    Directory directory = Directory(path);

    if (await directory.exists()) {
      print("Already exits...");
    } else {
      await directory.create();
      print("Creat Folder");
    }

    folderpath = directory.path;
  }

  GlobalKey _globalKey = GlobalKey();

  Future<Uint8List> _capturePng() async {
    try {
      print('inside');
      RenderRepaintBoundary? boundary = _globalKey.currentContext!
          .findRenderObject() as RenderRepaintBoundary?;
      ui.Image image = await boundary!.toImage(pixelRatio: 3.0);
      ByteData? byteData =
          await image.toByteData(format: ui.ImageByteFormat.png);
      var pngBytes = byteData!.buffer.asUint8List();
      var bs64 = base64Encode(pngBytes);

      setState(() {});
      return pngBytes;
    } catch (e) {
      print(e);
      return Future.value();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                child: Container(
              margin: EdgeInsets.all(20),
              alignment: Alignment.center,
              child: ListView(
                shrinkWrap: true,
                children: [
                  RepaintBoundary(
                    key: _globalKey,
                    child: Container(
                      color: c[i],
                      child: Text(
                        widget.mix[widget.cnt],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: textsize,
                          fontFamily: font[v],
                          color: b[j],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )),
            SafeArea(
              child: Container(
                height: 200,
                color: Colors.lightBlue,
                // margin: EdgeInsets.only(bottom: 5,),
                child: Column(
                  children: [
                    Expanded(
                        child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.zoom_out_map_outlined,
                            size: 50,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.autorenew_outlined,
                            size: 50,
                          ),
                        )
                      ],
                    )),
                    Expanded(
                        child: Row(
                      children: [
                        Expanded(
                            child: InkWell(
                          onTap: () {
                            showModalBottomSheet(
                              builder: (context) {
                                return Container(
                                  height: 150,
                                  margin: EdgeInsets.all(10),
                                  child: GridView.builder(
                                    itemCount: c.length,
                                    itemBuilder: (context, index) {
                                      return Container(
                                        child: InkWell(
                                          onTap: () {
                                            setState(() {
                                              i = index;
                                            });
                                          },
                                        ),
                                        decoration: BoxDecoration(
                                          color: c[index],
                                          border: Border.all(
                                              width: 2, color: Colors.black),
                                          borderRadius:
                                              BorderRadius.circular(2),
                                        ),
                                      );
                                    },
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 10,
                                            mainAxisSpacing: 10,
                                            crossAxisSpacing: 10,
                                            childAspectRatio: 1),
                                  ),
                                );
                              },
                              context: context,
                            );

                            setState(() {});
                          },
                          child: Container(
                            height: 50,
                            color: Colors.red,
                            margin: EdgeInsets.all(10),
                            child: FittedBox(
                              child: Text(
                                "Background",
                                // style: TextStyle(fontSize: 50),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        )),
                        Expanded(
                            child: InkWell(
                          onTap: () {
                            showModalBottomSheet(
                              builder: (context) {
                                return Container(
                                  height: 150,
                                  margin: EdgeInsets.all(10),
                                  child: GridView.builder(
                                    itemCount: b.length,
                                    itemBuilder: (context, index) {
                                      return Container(
                                        child: InkWell(
                                          onTap: () {
                                            setState(() {
                                              j = index;
                                            });
                                          },
                                        ),
                                        decoration: BoxDecoration(
                                          color: b[index],
                                          border: Border.all(
                                              width: 2, color: Colors.black),
                                          borderRadius:
                                              BorderRadius.circular(2),
                                        ),
                                      );
                                    },
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 10,
                                      childAspectRatio: 1,
                                      crossAxisSpacing: 10,
                                      mainAxisSpacing: 10,
                                    ),
                                  ),
                                );
                              },
                              context: context,
                            );
                            setState(() {});
                          },
                          child: Container(
                            height: 50,
                            color: Colors.red,
                            margin: EdgeInsets.all(10),
                            child: FittedBox(
                              child: Text(
                                "Text Color",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        )),
                        Expanded(
                            child: InkWell(
                          onTap: () {
                            _capturePng().then((value) async {
                              DateTime d = DateTime.now();
                              print(d);

                              String time =
                                  "${d.year}${d.month}${d.day}${d.day}${d.hour}${d.minute}${d.second}${d.millisecond}";
                              String imagepath = "${folderpath}/Image$time.jpg";
                              File file = File(imagepath);
                              await file.create();

                              file.writeAsBytesSync(value);
                              Share.shareFiles([file.path],
                                  text: 'Great picture');
                            });
                            setState(() {});
                          },
                          child: Container(
                            height: 50,
                            color: Colors.red,
                            margin: EdgeInsets.all(10),
                            child: FittedBox(
                              child: Text(
                                "Share",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        )),
                      ],
                    )),
                    Expanded(
                        child: Row(
                      children: [
                        Expanded(
                            child: InkWell(
                          onTap: () {
                            showModalBottomSheet(
                              builder: (context) {
                                return Container(
                                  height: 150,
                                  margin: EdgeInsets.all(10),
                                  child: GridView.builder(
                                    itemCount: font.length,
                                    itemBuilder: (context, index) {
                                      return InkWell(
                                        onTap: () {
                                          setState(() {
                                            v = index;
                                          });
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.pink,
                                            border: Border.all(
                                                color: Colors.black, width: 2),
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          child: FittedBox(
                                            child: Text("Shayri",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontFamily: font[index])),
                                          ),
                                        ),
                                      );
                                    },
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: font.length,
                                            childAspectRatio: 3,
                                            mainAxisSpacing: 10,
                                            crossAxisSpacing: 10),
                                  ),
                                );
                              },
                              context: context,
                            );
                          },
                          child: Container(
                            height: 50,
                            color: Colors.red,
                            margin: EdgeInsets.all(10),
                            child: FittedBox(
                              child: Text(
                                "Font",
                                // style: TextStyle(fontSize: 50),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        )),
                        Expanded(
                            child: InkWell(
                          child: Container(
                            height: 50,
                            color: Colors.red,
                            margin: EdgeInsets.all(10),
                            child: FittedBox(
                              child: Text(
                                "Emoji",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        )),
                        Expanded(
                            child: InkWell(
                          onTap: () {
                            showModalBottomSheet(
                              builder: (context) {
                                return Container(
                                  height: 150,
                                  child: StatefulBuilder(
                                    builder: (context, setState1) {
                                      return Slider(
                                          min: 10,
                                          max: 100,
                                          onChanged: (value) {
                                            textsize = value;
                                            setState1(() {});
                                            setState(() {});
                                          },
                                          value: textsize);
                                    },
                                  ),
                                );
                              },
                              context: context,
                            );
                          },
                          child: Container(
                            height: 50,
                            color: Colors.red,
                            margin: EdgeInsets.all(10),
                            child: FittedBox(
                              child: Text(
                                "Font Size",
                                textAlign: TextAlign.center,
                                // style: TextStyle(fontSize: 30),
                              ),
                            ),
                          ),
                        )),
                      ],
                    )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
