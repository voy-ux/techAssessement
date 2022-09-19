import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../services/api_call.dart';
import '../services/menu_drawer.dart';
import 'display_joke.dart';

class DadJoke extends StatefulWidget {
  static String routeName = 'DadJoke';
  const DadJoke({Key? key}) : super(key: key);

  @override
  State<DadJoke> createState() => _DadJokeState();
}

class _DadJokeState extends State<DadJoke> {
  @override
  Widget build(BuildContext context) {
    ApiCall apiCall = ApiCall();
    return
      Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Technical Assessment'),
        ),
        drawer: menuDrawer(),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text("Click on the button to get a DAD joke ",
                style: TextStyle(fontSize: 25),),

              MaterialButton(
                onPressed: ()async {
                  setState(() {
                  });
                  await apiCall.getDadJoke().then((value) => {
                    setState(() {
                    }),
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DisplayJoke(value),
                      ),
                    ),
                  });
                },
                color: Colors.blue,
                child:  const Text('DAD Joke', style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ),
      );
    // );
  }
}
