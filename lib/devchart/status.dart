import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'list.dart';

class MyStatus extends StatefulWidget {
  const MyStatus({super.key});

  @override
  State<MyStatus> createState() => _MyStatusState();
}

class _MyStatusState extends State<MyStatus> {
  File? image;
  Future getImage(ImageSource source) async {
    final image = await ImagePicker().pickImage(source: source);
    if (image == null) return;
    final _image = File(image.path);
    setState(() {
      this.image = _image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.orange[400],
        title: Text(
          'Status',
          style: TextStyle(color: Colors.black54),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search, color: Colors.black54),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.camera_alt_outlined, color: Colors.black54),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.more_vert, color: Colors.black54),
          ),
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            leading: image == null?
            CircleAvatar(
              radius: 20,
              backgroundColor: Colors.grey,
            ):
            CircleAvatar(
              radius: 20,
              backgroundColor: Colors.grey,
              backgroundImage: FileImage(image!),
            ),
            title: Text('My Status'),
            subtitle: Text('yesterday, 20:03'),
            trailing: Icon(Icons.more_horiz),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Recent updates'),
          ),
          ...List.generate(
            status.length,
            (index) => ListTile(
              leading: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('${status[index]['image']}'),
              ),
              title: Text('${status[index]['name']}'),
              subtitle: Text('${status[index]['time']}'),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 8,
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text("Pick Image"),
                  content: Column(mainAxisSize: MainAxisSize.min, children: [
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
        backgroundColor: Colors.orange[400],
        child: Icon(Icons.camera_alt_outlined),
      ),
    );
  }
}
