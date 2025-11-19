import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  bool buttonText = true;

  void buttonFunc() {
    setState(() {
      buttonText = !buttonText;
    });
  }

  Widget contactInfo() {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 400),
      child: Padding(
        padding: EdgeInsets.only(top: 16.0, bottom: 16.0, left: 25.0, right: 25.0),
        child: Card(
          elevation: 0,
          color: Colors.black12,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Flexible(
                          flex: 100,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.mail,
                              size: 30,
                            ),
                          ),
                        ),


                        Flexible(
                            flex: 200,
                            child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "hello@mail.com",
                                  style: TextStyle(
                                      fontSize: 16
                                  ),
                                ))
                        ),

                      ]
                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Flexible(
                          flex: 100,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.phone,
                              size: 30,
                            ),
                          ),
                        ),

                        Flexible(
                          flex: 200,
                          child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "+7 999 123 45 67",
                                style: TextStyle(
                                    fontSize: 16
                                ),
                              )
                          ),
                        ),


                      ]
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.blue,

      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(

            child: ConstrainedBox(
                constraints: BoxConstraints(
                    minHeight: viewportConstraints.maxHeight,
                    minWidth: viewportConstraints.maxWidth),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [

                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //Icon(Icons.add),
                      Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.person,
                            size: 60,
                          )//Image.asset('assets/ProfilePicture.png'),
                      ),
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          "Иван Иванов",
                          style: TextStyle(
                            fontSize: 24,
                          ),
                        ),
                      ),

                    ],
                  ),

                  contactInfo(),

                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: MaterialButton(
                        onPressed: buttonFunc,
                        shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(10.0) ),

                        color: Colors.blue,
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            buttonText == true ? "Свяжитесь со мной" : "Спасибо за связь",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        )

                    ),
                  )



                ],
              ),
            )

          );
        }
      )


      );
  }
}
