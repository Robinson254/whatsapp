import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'chat.dart';
import 'list.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool online = true;
  File? image;
  Future getImage(ImageSource source) async {
    final image = await ImagePicker().pickImage(source: source);
    if (image == null) return;
    final _image = File(image.path);
    setState(() {
      this.image = _image;
    });
  }
 void tap(){
  bool tap = true;
  setState(() {
    if (tap == true){
      TextFormField();
    }
    else{
      const Icon(Icons.search);
    }
  });
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 65,
        backgroundColor: Colors.orange[400],
        title: const Text(
          'DevChat',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text("Pick Image"),
                        content:
                            Column(mainAxisSize: MainAxisSize.min, children: [
                          GestureDetector(
                              onTap: () {
                                getImage(ImageSource.camera);
                                setState(() {
                                  Navigator.pop(context);
                                });
                              },
                              child: const Text("Pick From Camera")),
                          const SizedBox(height: 15),
                          GestureDetector(
                              onTap: () {
                                getImage(ImageSource.gallery);
                                setState(() {
                                  Navigator.pop(context);
                                });
                              },
                              child: const Text("Pick From Gallery")),
                        ]),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text("Close")),
                          const SizedBox(
                            height: 10,
                          )
                        ],
                      );
                    });
              },
              child: const Icon(
                Icons.camera_alt,
                color: Colors.white,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: Data.length,
        itemBuilder: ((context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => ChartUi(data: Data[index]))));
            },
            child: ListTile(
              title: Text("${Data[index]['name']}"),
              subtitle: Text(Data[index]['text']),
              trailing: Column(
                children: [
                  Text(Data[index]['time']),
                  Text(Data[index]['on_off']),
                ],
              ),
              leading: Stack(children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage(Data[index]['image']),
                ),
                online
                    ? const Positioned(
                        top: 3,
                        right: 1.5,
                        child: CircleAvatar(
                          backgroundColor: Colors.green,
                          radius: 6,
                        ))
                    : Container(),
              ]),
            ),
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange[400],
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
