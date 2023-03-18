import 'package:flutter/material.dart';

import 'list.dart';

class MyCalls extends StatefulWidget {
  const MyCalls({super.key});

  @override
  State<MyCalls> createState() => _MyCallsState();
}

class _MyCallsState extends State<MyCalls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.orange[400],
        title: const Text('Calls',
        style: TextStyle(color: Colors.black54),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.search,
            color: Colors.black54),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.camera_alt_outlined,
            color: Colors.black54),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.more_vert,
            color: Colors.black54),
          ),
        ],
      ),
      body: ListView(
        children: [
           const ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.grey,
            ),
            title: Text('Create call link'),
            subtitle: Text('Share a link for your whatsApp call'),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Recent'),
          ),
          ... List.generate(calls.length, (index) => 
          ListTile(leading: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('${calls[index]['image']}'),
            ),
            title: Text('${calls[index]['name']}'),
            subtitle: calls[index]['time'],
            trailing: calls[index]['icon'],
           ),

          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 8,
        onPressed: (){},
        backgroundColor: Colors.orange[400],
        child: const Icon(Icons.add_call),
      ),
    );
  }
}