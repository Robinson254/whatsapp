// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'class.dart';

class ChartUi extends StatefulWidget {
  Map data;
   ChartUi({super.key, required this.data});

  @override
  State<ChartUi> createState() => _ChartUiState();
}

class _ChartUiState extends State<ChartUi> {
  String userpost = "";

  TextEditingController name = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 65,
        backgroundColor: Colors.orange[400],
        // leading: const Icon(Icons.arrow_back_ios),
        title: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage(widget.data['image']),
            ),
            SizedBox(width: 8),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  widget.data['name'],
                   overflow: TextOverflow.ellipsis,
                  ), 
                Text("online")],
            ),
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.video_call_sharp),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.call),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: ListView(
        children: [
          Column(
            // mainAxisSize: MainAxisSize.m,
            children: [
              SizedBox(height: 8),
              ChatBubble(
                text: 'Kuna class leo❓',
                isCurrentUser: false,
              ),
              ChatBubble(
                text: 'Zii',
                isCurrentUser: true,
              ),
              ChatBubble(
                text: 'Awesome! Atleast leo tuko free',
                isCurrentUser: false,
              ),
              ChatBubble(
                text: 'Leo ni maform tu',
                isCurrentUser: true,
              ),
              ChatBubble(
                text: '😋😋😉😉😉😂🤣',
                isCurrentUser: false,
              ), 
              ChatBubble(
                  text: userpost,
                  isCurrentUser: true,
                ),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.3,),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.height * 0.05),
            child: TextFormField(
              controller: name,
              decoration: InputDecoration(
                constraints: BoxConstraints(maxHeight: 40),
                hintText: "Type your message",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        userpost = name.text;
                        name.clear();
                      }
                    );
                    },
                    child: Icon(Icons.send)),
                 prefixIcon: Icon(Icons.emoji_emotions),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
