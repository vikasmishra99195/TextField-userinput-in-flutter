import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var emailText = TextEditingController();
  var password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        width: double.infinity,
        margin: EdgeInsets.only(right: 15, left: 15, top: 30),
        child: Column(
          children: [
            TextField(

                // enabled: false,

                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                          width: 1,
                          color: Colors.red,
                        )),
                    // border: OutlineInputBorder(
                    //     borderRadius: BorderRadius.circular(30),
                    //     borderSide: BorderSide(color: Colors.pink)),

                    // ## enabled border
                    enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.yellow,
                            width: 3,
                            style: BorderStyle.solid)),

                    //  ## disabled border
                    disabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        borderSide: BorderSide(
                          color: Colors.blue,
                          width: 3,
                          style: BorderStyle.solid,
                        )))),

            //  ## second textField

            Container(
              margin: EdgeInsets.only(top: 20),
              child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  controller: emailText,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                          color: Colors.red,
                        )),
                    suffixText: "hide",
                    suffixIcon: IconButton(
                      icon: Icon(
                        Icons.remove_red_eye,
                        color: Colors.orange,
                      ),
                      onPressed: () {},
                    ),
                    // ## suffix: Here we can use widget
                    prefixIcon: Icon(
                      Icons.email_rounded,
                      size: 30,
                      color: Colors.black,
                    ),
                    prefixText: 'Username',
                  )),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: TextField(
                  keyboardType: TextInputType.number,
                  controller: password,
                  obscureText: true,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.blue, fontSize: 13),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                            color: Colors.red,
                          )))),
            ),

            ElevatedButton(
                onPressed: () {
                  String username = emailText.text.toString();
                  String pass = password.text.toString();
                  print("Email $username and password is $pass");
                },
                child: Text("Login"))
          ],
        ),
      ),
    );
  }
}
