import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Flutter Alignment'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // The title text which will be shown on the action bar
          title: Text(title),
        ),
        body: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(
                top: 20,
            ), 
          child: ListTile(
            leading: Image.network(
              "data:image/jpeg;base64,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"
            ),
            title: Text(
              "Laptop HP Pavilion Core i4", 
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            ),
            subtitle: Text(
              "jsand aifaiofne ejfnenf enwfwefnewifwe jenjnweifnwefjwn wejnfiwjenfjwef ",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            )));
          
          
          
        
          }));
    
    
        
        
  }
}
