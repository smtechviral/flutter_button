import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Buttons(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark
      ),
    );
  }
}

class Buttons extends StatefulWidget {
  @override
  _ButtonsState createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Buttons"),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 100,),
              SizedBox(
                width: 200,
                height: 60,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  onPressed: (){
                    print("Raised Button");

                  },
                  child: Text("Raised Button",style: TextStyle(
                      color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold
                  ),),
                ),
              ),
              SizedBox(height: 30,),
              SizedBox(
                width: 200,
                height: 60,
                child: MaterialButton(
                  color: Colors.cyan,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  onPressed: (){
                    print("Material Button");
                  },
                  child: Text("Material Button",style: TextStyle(
                      color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold
                  ),),
                ),
              ),
              SizedBox(height: 30,),
              SizedBox(
                width: 200,
                height: 60,
                child: TextButton(
                    child: Text(
                        "Text Button".toUpperCase(),
                        style: TextStyle(fontSize: 14, color: Colors.cyan)
                    ),
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.red),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(color: Colors.orange)
                            )
                        )
                    ),
                    onPressed: () => null
                ),
              ),
              SizedBox(height: 30,),
              SizedBox(
                width: 200,
                height: 60,
                child: OutlinedButton.icon(
                  icon: Icon(Icons.person_add),
                  label: Text("Outlined Button"),
                  onPressed: () => print("OutlinedButton"),
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(width: 2.0, color: Colors.black54),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0),
                    ),
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              SizedBox(
                width: 200,
                height: 60,
                child: ElevatedButton(
                    child: Text(
                        "Elevated Button".toUpperCase(),
                        style: TextStyle(fontSize: 14, color: Colors.black54)
                    ),
                    style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                side: BorderSide(color: Colors.blue)
                            )
                        )
                    ),
                    onPressed: () => null
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
