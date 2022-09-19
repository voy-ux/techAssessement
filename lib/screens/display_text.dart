import 'package:flutter/material.dart';
import '../services/menu_drawer.dart';

class DisplayText extends StatefulWidget {
  static String routeName = 'DisplayText';
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
      drawer: menuDrawer(),
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
