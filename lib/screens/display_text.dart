import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class DisplayText extends StatefulWidget {
  static const String id = 'DisplayText';
  const DisplayText({Key? key}) : super(key: key);

  @override
  State<DisplayText> createState() => _DisplayTextState();
}

class _DisplayTextState extends State<DisplayText> {
  final textController = TextEditingController();
  String userInput = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Technical Assessment'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              // decoration: BoxDecoration(
              //   color: Colors.blue,
              // ),
                child: Text('')
            ),
            ListTile(
              leading:const Icon(
                Icons.text_format,
              ),
              title: const Text('Input Text'),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  DisplayText()),
                );
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.face_unlock_sharp,
              ),
              title: const Text('Dad joke'),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  HomePage()),
                );
              },
              // onTap: (){
              //  HomePage();
              // },
            ),


          ],
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                child: Center(
                  child: Text(userInput),
                )
            ),
            TextField(
              controller: textController,
              decoration: InputDecoration(
                  hintText: 'Enter text',
                  border: const OutlineInputBorder(),
                  suffixIcon: IconButton(
                    onPressed: (){
                      textController.clear();
                    },
                    icon: const Icon(Icons.clear),
                  )
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            MaterialButton(
              onPressed: (){
                setState((){
                  userInput = textController.text;
                });
              },
              color: Colors.blue,
              child:  const Text('Display', style: TextStyle(color: Colors.white)),
            ),

          ],
        ),
      ),
    );
  }
}
