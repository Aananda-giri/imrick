import 'package:flutter/material.dart';
import 'package:imrick/flutter_help';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        debugShowMaterialGrid: false,
        home: Scaffold(
          backgroundColor: Colors.green,
          body: SafeArea(
            child: Column(
              mainAxisAlignment: mainAxisAlignment.center,

              // verticalDirection: VerticalDirection.down,
              // crossAxisAlignment: CrossAxisAlignment.end,
              // circled shape
              children: [
                Container(
                  height: 100,
                  width: 100,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Color.fromARGB(255, 248, 245, 235),
                    backgroundImage: AssetImage('assets/Logo.png'),
                  ),
                ),
                Text(
                  'Ayan Siddiquie',
                  style: TextStyle(
                    fontSize: 20,
                    // color: Color.fromARGB(255, 1, 14, 7),
                    fontFamily: 'Pacifico',
                  ),
                ),
                Text(
                  'FLUTTER DEVELOPER',
                ),
                SizedBox(
                  width: 50,
                  child: Divider(
                      // color: Color.fromARGB(255, 244, 222, 25),
                      //width: 100,
                      ),
                ),
                //],
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Card(
                    child: ListTile(
                      leading: Icon(Icons.phone),
                      title: Text('Contact Number'),
                      subtitle: (Text('9741805158')),
                      //trailing: Icon(Icons.phone),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Card(
                    child: ListTile(
                      leading: Icon(Icons.local_post_office),
                      title: Text('Email'),
                      subtitle: (Text('siddiquieayan786@gmail.com')),
                      //trailing: Icon(Icons.phone),
                    ),
                  ),
                ),
                Card(
                    child: Column(
                  mainAxisAlignment: mainAxisAlignment.min,
                  children: <Widget>[
                    const ListTile(
                        leading: Icon(Icons.album, size: 45),
                        title: Text("Rick Senchaz"),
                        subtitle: Text('Woba laba dub dub - bitch')),
                    ClipRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        subject['images']['image'],
                        height: 150.0,
                        width: 100.0,
                      ),
                    )
                  ],
                )),
              ],
            ),
          ),
        ));
  }
}
