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
                      leading: Image.network("data:image/jpeg;base64,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"),
                      title: Text(
                        "Brand New Shoes",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      subtitle: Text(
                        "SH-231",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      )));
            }));
  }
}
