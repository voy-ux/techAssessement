import 'package:flutter/material.dart';
import 'package:voy_xaba/screens/display_joke.dart';
import 'package:voy_xaba/screens/display_text.dart';
import 'package:voy_xaba/services/api_call.dart';

void main()  => runApp(
  MaterialApp(
      home: HomePage()),
);

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    ApiCall apiCall = ApiCall();
    return
      Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Technical Assessment'),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                  child: Text('')),
              ListTile(
                leading:const Icon(
                  Icons.text_format,
                ),
                title: const Text('Input Text'),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  const DisplayText()),
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
              ),


            ],
          ),
        ),
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
