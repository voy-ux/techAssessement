import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dad_joke.dart';

class DisplayJoke extends StatefulWidget {
  static const String id = 'DisplayJoke';
  late final joke;
  DisplayJoke(this.joke);
  @override
  State<DisplayJoke> createState() => _DisplayJokeState();
}

class _DisplayJokeState extends State<DisplayJoke> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        padding: EdgeInsets.all(MediaQuery.of(context).size.width / 6),
        child: Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("DAD Joke: ", style: (TextStyle(
                  fontSize: 15
                )),),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  widget.joke,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: "Arial",
                      decoration: TextDecoration.none),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                MaterialButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DadJoke(),
                      ),
                    );
                  },
                  color: Colors.blue,
                  child:  const Text('Back', style: TextStyle(color: Colors.white)),
                ),

              ]
          ),
        ),
      ),
    );
  }
}
