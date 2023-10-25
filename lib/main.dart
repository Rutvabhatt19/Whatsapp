import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:whatsappui/Screen1.dart';
import 'package:whatsappui/Screen2.dart';

bool a=true;
int currentindex=0;
int currentInd=0;
List<Map<String,dynamic>> chat=[
  {
    'name':'Person 1',
    'sub':'Hii,I am using Whatsapp',
    'last':'12:05',
    'Img':AssetImage('Imf/Img 1.jpg'),
  },
  {
    'name':'Person 2',
    'sub':'Hii',
    'last':'2:50',
    'Img':AssetImage('Imf/Img 2.jpg'),
  },
  {
    'name':'Person 3',
    'sub':'Hello',
    'last':'Yesterday',
    'Img':AssetImage('Imf/Img 3.jpg'),
  },
  {
    'name':'Person 4',
    'sub':'Hii,I am using Whatsapp',
    'last':'Monday',
    'Img':AssetImage('Imf/Img 4.jpg'),
  },
  {
    'name':'Person 5',
    'sub':'Hii',
    'last':'9/22/23',
    'Img':AssetImage('Imf/Img 5.jpg'),
  },
  {
    'name':'Person 6',
    'sub':'Hello',
    'last':'8/30/23',
    'Img':AssetImage('Imf/Img 6.jpg'),
  },
  {
    'name':'Person 7',
    'sub':'Hii,I am using Whatsapp',
    'last':'8/28/23',
    'Img':AssetImage('Imf/Img 7.jpg'),
  },
  {
    'name':'Person 8',
    'sub':'Hii',
    'last':'8/20/23',
    'Img':AssetImage('Imf/Img 8.jpg'),
  },
  {
    'name':'Person 9',
    'sub':'Hello',
    'last':'8/09/23',
    'Img':AssetImage('Imf/Img 9.jpg'),
  },
  {
    'name':'Person 10',
    'sub':'Hii,I am using Whatsapp',
    'last':'8/03/23',
    'Img':AssetImage('Imf/Img 10.jpg'),
  },
];

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => editfunction(),),
    ChangeNotifierProvider(create: (context) => fun(),),
    ChangeNotifierProvider(create: (context) => cuttent(),),
    ChangeNotifierProvider(create: (context) => search(),),
  ],
    child: MyApp(),)
  );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Android(),
    );
  }
}