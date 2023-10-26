import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsappui/main.dart';





class Screen2 extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Screen2State();
  }
}
int currentindex=0;
class Screen2State extends State<Screen2> {
  List screen=[Status_Screen(),calls(),com(),chats(),settings()];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  CupertinoTabScaffold(
      backgroundColor: Colors.black,

      tabBar: CupertinoTabBar(
          backgroundColor: Color(0xff282829),
          height: 60,
          activeColor: Colors.blue,
          inactiveColor: Colors.grey,
          iconSize: 30,
          items: [
            BottomNavigationBarItem(icon:Consumer(
              builder: (context, cuttent , child) {
                return currentindex==0?Icon(CupertinoIcons.circle_fill):Icon(CupertinoIcons.circle);
              },
            ),label: "Status"),
            BottomNavigationBarItem(
                icon:Consumer(
                  builder: (context, cuttent , child) {
                    return currentindex==1?Icon(CupertinoIcons.phone_fill):Icon(CupertinoIcons.phone);
              },
            ) ,label: "Calls"),
            BottomNavigationBarItem(
                icon: Consumer(
                  builder: (context, cuttent , child) {
                    return  currentindex==2?Icon(CupertinoIcons.group_solid):Icon(CupertinoIcons.group);
              },
            ),label: "Communities"),
            BottomNavigationBarItem(
                icon: Consumer(
                  builder: (context, cuttent , child) {
                    return currentindex==3?Icon(CupertinoIcons.chat_bubble_2_fill):Icon(CupertinoIcons.chat_bubble_2);
              },
            ), label: "Chats"),
            BottomNavigationBarItem(
                icon: Consumer(
                  builder: (context, cuttent , child) {
                    return  currentindex==4?Icon(CupertinoIcons.settings_solid):Icon(CupertinoIcons.settings);
              },
            ),label: "Settings"),
          ],onTap: (value) {
            cuttent().abc(value);
          }
      ), tabBuilder: (context, i) => CupertinoPageScaffold(
      child: Center(child: screen[i]),),);
  }
}
class Status_Screen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Status_ScreenState();
  }
}
class Status_ScreenState extends State<Status_Screen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xff010102),
      body:Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextButton(onPressed: () {}, child: Text(
              'Privacy',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
              ),)),
            Padding(
              padding: const EdgeInsets.only(top: 2),
              child: Text(
                'Status',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                ),),
            ),
            Padding(
                padding:EdgeInsets.only(top: 20),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xff1D1D20),
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: TextField(
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                        icon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.search,color: Colors.grey,size: 30,),
                    ),
                        hintText: 'search',hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                    )),
                  ),width: MediaQuery.of(context).size.width * 1,
                )),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                    color: Color(0xff1D1D20),
                    borderRadius: BorderRadius.circular(12)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: chat[0]['Img'],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20,top: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'My Status',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                              ),),
                            Text(
                              '19h ago',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                              ),),
                          ],
                        ),
                      ),
                      Spacer(),
                      GestureDetector(onTap:() {},
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: Color(0xff2D2B2E),
                          child: Center(child: Icon(Icons.camera_alt,color: Colors.blue,size: 20,)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child:  GestureDetector(onTap: () {},
                          child: CircleAvatar(
                            radius: 25,
                            backgroundColor: Color(0xff2D2B2E),
                            child: Center(child: Icon(Icons.edit,color: Colors.blue,size: 20,)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30,left: 18),
              child: Text(
                'RECENT UPDATES ',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xff1D1D20),
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 32,
                                backgroundColor: Colors.blue,
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundImage: chat[0]['Img'],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      chat[0]['name'],
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                      ),),
                                    Text(
                                      '4m ago',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                      ),),
                                    Divider(color: Colors.grey,height: 1,thickness: 1,)
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 12),
                          child: GestureDetector(
                            onTap: () {},
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: 32,
                                  backgroundColor: Colors.blue,
                                  child: CircleAvatar(
                                    radius: 30,
                                    backgroundImage: chat[0]['Img'],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        chat[1]['name'],
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                        ),),
                                      Text(
                                        '30m ago',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                        ),),
                                      Divider(color: Colors.grey,height: 1,thickness:1,)
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ) ,
    );
  }
}
class  calls extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return callsState();
  }

}
class callsState extends State<calls> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final dataprovider=Provider.of<editfunction>(context);
    final allprovider=Provider.of<fun>(context);
    return Scaffold(
      backgroundColor: Color(0xff010102),
      body:Padding(
        padding: const EdgeInsets.only(left: 12,right: 12,top: 12),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(onPressed: () {}, child: Text(
                    'Edit',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                    ),)),
                  SizedBox(
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap:dataprovider.edit,
                          child: Container(
                            height: 40,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color:a?Color(0xff5B5A60):Color(0xff1D1D20),
                            ),
                            child: Center(
                              child: Text(
                                  "All",
                                  style: TextStyle(
                                      color: Colors.white,
                                  )),
                            ),),
                        ),
                        GestureDetector(
                          onTap: allprovider.missed,
                          child: Container(
                            height: 40,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: a?Color(0xff1D1D20):Color(0xff5B5A60),
                            ),
                            child: Center(
                              child: Text(
                                "Missed",
                                style: TextStyle(
                                    color: Colors.white,
                                ),),
                            ),),
                        ),],
                    ),
                  ),
                  IconButton(onPressed: () {
                  }, icon: Icon(Icons.add_ic_call_outlined,color: Colors.blue,size: 20,))
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  'Calls',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                  ),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xff1D1D20),
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child:   Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundColor: Color(0xff2C2C28),
                            child: Center(child: Transform.rotate(angle: 4.0,
                                child: Icon(Icons.link,color: Colors.blue,size: 30,
                                ))),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Creat call link',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 20,
                                  ),),
                                Text(
                                  'Share a link for your WhatsApp call',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15,
                                  ),),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text(
                  'Recent',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                  ),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xff1D1D20),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12),
                        )),
                    child: SizedBox(
                      height:480,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 20,
                                      backgroundImage: chat[0]['Img'],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Container(
                                        child: Column(
                                            children: [
                                              Text(
                                                chat[0]['name'],
                                                style: TextStyle(
                                                    color: Colors.red,
                                                    fontSize: 20,
                                                ),),
                                              Row(
                                                children: [
                                                  Icon(Icons.video_call,color: Colors.grey,size: 20,),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 10,),
                                                    child: Text(
                                                      'Missed',
                                                      style: TextStyle(
                                                          color: Colors.grey,
                                                          fontSize: 15,
                                                      ),),
                                                  ),
                                                ],
                                              ),
                                              Divider(color: Colors.black,height:10,thickness: 2),]
                                        ),
                                      ),
                                    ),Spacer(),
                                    Container(
                                      child: Row(
                                        children: [
                                          Text(
                                            'Tuesday',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 15,
                                            ),),
                                          IconButton(onPressed: () {}, icon: Icon(Icons.info_outline,color: Colors.blue,size: 20,))
                                        ],
                                      ),),
                                  ],
                                ),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 20,
                                      backgroundImage: chat[3]['Img'],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Container(
                                        child: Column(
                                            children: [
                                              Text(
                                                chat[3]['name'],
                                                style: TextStyle(
                                                    color: Colors.red,
                                                    fontSize: 20,
                                                ),),
                                              Row(
                                                children: [
                                                  Icon(Icons.call,color: Colors.grey,size: 20,),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 10,),
                                                    child: Text(
                                                      'Missed',
                                                      style: TextStyle(
                                                          color: Colors.grey,
                                                          fontSize: 15,
                                                      ),),
                                                  ),
                                                ],
                                              ),
                                              Divider(color: Colors.black,height:10,thickness: 2),]
                                        ),
                                      ),
                                    ),Spacer(),
                                    Container(
                                      child: Row(
                                        children: [
                                          Text(
                                            '4/09/23',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 15,
                                            ),),
                                          IconButton(onPressed: () {}, icon: Icon(Icons.info_outline,color: Colors.blue,size: 20,))
                                        ],
                                      ),),
                                  ],
                                ),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 20,
                                      backgroundImage: chat[3]['Img'],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Container(
                                        child: Column(
                                            children: [
                                              Text(
                                                chat[3]['name'],
                                                style: TextStyle(
                                                    color: Colors.red,
                                                    fontSize: 20,
                                                ),),
                                              Row(
                                                children: [
                                                  Icon(Icons.call,color: Colors.grey,size: 20,),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 10,),
                                                    child: Text(
                                                      'Missed',
                                                      style: TextStyle(
                                                          color: Colors.grey,
                                                          fontSize: 15,
                                                      ),),
                                                  ),
                                                ],
                                              ),
                                              Divider(color: Colors.black,height:10,thickness: 2),]
                                        ),
                                      ),
                                    ),Spacer(),
                                    Container(
                                      child: Row(
                                        children: [
                                          Text(
                                            '4/09/23',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 15,
                                            ),),
                                          IconButton(onPressed: () {}, icon: Icon(Icons.info_outline,color: Colors.blue,size: 20,))
                                        ],
                                      ),),
                                  ],
                                ),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 20,
                                      backgroundImage: chat[6]['Img'],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Container(
                                        child: Column(
                                            children: [
                                              Text(
                                                chat[6]['name'],
                                                style: TextStyle(
                                                    color: Colors.red,
                                                    fontSize: 20,
                                                ),),
                                              Row(
                                                children: [
                                                  Icon(Icons.call,color: Colors.grey,size: 20,),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 10,),
                                                    child: Text(
                                                      'Missed',
                                                      style: TextStyle(
                                                          color: Colors.grey,
                                                          fontSize: 15,
                                                      ),),
                                                  ),
                                                ],
                                              ),
                                              Divider(color: Colors.black,height:10,thickness: 2),]
                                        ),
                                      ),
                                    ),Spacer(),
                                    Container(
                                      child: Row(
                                        children: [
                                          Text(
                                            '4/09/23',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 15,
                                            ),),
                                          IconButton(onPressed: () {}, icon: Icon(Icons.info_outline,color: Colors.blue,size: 20,))
                                        ],
                                      ),),
                                  ],
                                ),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 20,
                                      backgroundImage: chat[8]['Img'],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Container(
                                        child: Column(
                                            children: [
                                              Text(
                                                chat[8]['name'],
                                                style: TextStyle(
                                                    color: Colors.red,
                                                    fontSize: 20,
                                                ),),
                                              Row(
                                                children: [
                                                  Icon(Icons.call,color: Colors.grey,size: 20,),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 10,),
                                                    child: Text(
                                                      'Missed',
                                                      style: TextStyle(
                                                          color: Colors.grey,
                                                          fontSize: 15,
                                                      ),),
                                                  ),
                                                ],
                                              ),
                                              Divider(color: Colors.black,height:10,thickness: 2),]
                                        ),
                                      ),
                                    ),Spacer(),
                                    Container(
                                      child: Row(
                                        children: [
                                          Text(
                                            '4/09/23',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 15,
                                            ),),
                                          IconButton(onPressed: () {}, icon: Icon(Icons.info_outline,color: Colors.blue,size: 20,))
                                        ],
                                      ),),
                                  ],
                                ),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 20,
                                      backgroundImage: chat[3]['Img'],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Container(
                                        child: Column(
                                            children: [
                                              Text(
                                                chat[3]['name'],
                                                style: TextStyle(
                                                    color: Colors.red,
                                                    fontSize: 20,
                                                ),),
                                              Row(
                                                children: [
                                                  Icon(Icons.call,color: Colors.grey,size: 20,),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 10,),
                                                    child: Text(
                                                      'Missed',
                                                      style: TextStyle(
                                                          color: Colors.grey,
                                                          fontSize: 15,
                                                      ),),
                                                  ),
                                                ],
                                              ),
                                              Divider(color: Colors.black,height:10,thickness: 2),]
                                        ),
                                      ),
                                    ),Spacer(),
                                    Container(
                                      child: Row(
                                        children: [
                                          Text(
                                            '4/09/23',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 15,
                                            ),),
                                          IconButton(onPressed: () {}, icon: Icon(Icons.info_outline,color: Colors.blue,size: 20,))
                                        ],
                                      ),),
                                  ],
                                ),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 20,
                                      backgroundImage: chat[3]['Img'],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Container(
                                        child: Column(
                                            children: [
                                              Text(
                                                chat[3]['name'],
                                                style: TextStyle(
                                                    color: Colors.red,
                                                    fontSize: 20,
                                                ),),
                                              Row(
                                                children: [
                                                  Icon(Icons.call,color: Colors.grey,size: 20,),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 10,),
                                                    child: Text(
                                                      'Missed',
                                                      style: TextStyle(
                                                          color: Colors.grey,
                                                          fontSize: 15,
                                                      ),),
                                                  ),
                                                ],
                                              ),
                                              Divider(color: Colors.black,height:10,thickness: 2),]
                                        ),
                                      ),
                                    ),Spacer(),
                                    Container(
                                      child: Row(
                                        children: [
                                          Text('4/09/23',style: TextStyle(color: Colors.grey,fontSize: 15),),
                                          IconButton(onPressed: () {}, icon: Icon(Icons.info_outline,color: Colors.blue,size: 20,))
                                        ],
                                      ),),
                                  ],
                                ),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 20,
                                      backgroundImage: chat[3]['Img'],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Container(
                                        child: Column(
                                            children: [
                                              Text(
                                                chat[3]['name'],
                                                style: TextStyle(
                                                    color: Colors.red,
                                                    fontSize: 20,
                                                ),),
                                              Row(
                                                children: [
                                                  Icon(Icons.call,color: Colors.grey,size: 20,),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 10,),
                                                    child: Text(
                                                        'Missed',
                                                      style: TextStyle(
                                                          color: Colors.grey,
                                                          fontSize: 15,
                                                      ),),
                                                  ),
                                                ],
                                              ),
                                              Divider(color: Colors.black,height:10,thickness: 2),]
                                        ),
                                      ),
                                    ),Spacer(),
                                    Container(
                                      child: Row(
                                        children: [
                                          Text(
                                            '4/09/23',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 15,
                                            ),),
                                          IconButton(onPressed: () {}, icon: Icon(Icons.info_outline,color: Colors.blue,size: 20,))
                                        ],
                                      ),),
                                  ],
                                ),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 20,
                                      backgroundImage: chat[3]['Img'],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Container(
                                        child: Column(
                                            children: [
                                              Text(
                                                chat[3]['name'],
                                                style: TextStyle(
                                                    color: Colors.red,
                                                    fontSize: 20,
                                                ),),
                                              Row(
                                                children: [
                                                  Icon(Icons.call,color: Colors.grey,size: 20,),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 10,),
                                                    child: Text(
                                                      'Missed',
                                                      style: TextStyle(
                                                          color: Colors.grey,
                                                          fontSize: 15,
                                                      ),),
                                                  ),
                                                ],
                                              ),
                                              Divider(color: Colors.black,height:10,thickness: 2),]
                                        ),
                                      ),
                                    ),Spacer(),
                                    Container(
                                      child: Row(
                                        children: [
                                          Text(
                                            '4/09/23',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 15,
                                            ),),
                                          IconButton(onPressed: () {}, icon: Icon(Icons.info_outline,color: Colors.blue,size: 20,))
                                        ]
                                      ),)
                                  ],
                                ),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 20,
                                      backgroundImage: chat[3]['Img'],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Container(
                                        child: Column(
                                            children: [
                                              Text(
                                                chat[3]['name'],
                                                style: TextStyle(
                                                    color: Colors.red,
                                                    fontSize: 20,
                                                ),),
                                              Row(
                                                children: [
                                                  Icon(Icons.call,color: Colors.grey,size: 20,),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 10,),
                                                    child: Text(
                                                      'Missed',
                                                      style: TextStyle(
                                                          color: Colors.grey,
                                                          fontSize: 15,
                                                      ),),
                                                  ),
                                                ],
                                              ),
                                              Divider(color: Colors.black,height:10,thickness: 2),]
                                        ),
                                      ),
                                    ),Spacer(),
                                    Container(
                                      child: Row(
                                        children: [
                                          Text(
                                            '4/09/23',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 15,
                                            ),),
                                          IconButton(onPressed: () {}, icon: Icon(Icons.info_outline,color: Colors.blue,size: 20,))
                                        ],
                                      ),),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ] ),
      ),
    );
  }

}
class com extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return comState();
  }
}
class comState extends State<com> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Communities",
          style: TextStyle(
              color: Colors.white,
              fontSize: 23,
              fontWeight: FontWeight.w500,
          ),),
        backgroundColor: Color(0xff131314),
      ),
      backgroundColor: Color(0xff010102),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
                child: Image(image: AssetImage('Imf/group.png'),height: 200,width: 400,fit: BoxFit.fill,)),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                "Introducing Communites",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 24,
                ),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                "Easily organize yuoe related groups and send announcements.Now, your Communites,like neighborhoods or schools,cn have their own space.",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w200,
                    fontSize: 17,
                ),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20,),
              child: Divider(color: Colors.grey.shade600,height: 10,thickness: 1,),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                " Start a Community.",
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w200,
                    fontSize: 17,
                ),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Divider(color: Colors.grey.shade600,height: 10,thickness: 1,),
            ),
          ],
        ),
      ),
    );
  }
}
class chats extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return chatsState();
  }
}
class chatsState extends State<chats> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      backgroundColor: Color(0xff010102),
      body:CustomScrollView(
          slivers: [
            CupertinoSliverNavigationBar(
              largeTitle: Text(
                "Chats",
                style: TextStyle(
                    color: Colors.white,
                ),),
              backgroundColor: Color(0xff010102),
              trailing:
              SizedBox(width: 100,
                child: Row(
                  children: [
                    IconButton(onPressed: () {},
                        icon: Icon(Icons.camera_alt_outlined,color: Colors.blue,size: 25,)),
                    IconButton(onPressed: () {}, icon: Icon(Icons.edit_square,color: Colors.blue,size: 25,)),
                  ],
                ),
              ),
              leading:  TextButton(onPressed: () {},
                  child: Text(
                    'Edit',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 18,
                    ),)
              ),
            ),
            SliverFillRemaining(
              child: Column(
                children: [
                  Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 40,
                            width: 320,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              color: Color(0xff2A2A2D),
                            ),
                            child: Center(
                              child: TextField(
                                decoration: InputDecoration(
                                  icon: Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Icon(Icons.search,color: Color(0xff7F7E83)),
                                  ),
                                  hintText: "Search",
                                  hintStyle: TextStyle(
                                      color:Color(0xff7F7E83),
                                      fontSize: 15,
                                  ),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.filter_list,color: Colors.blue,),
                          onPressed: () {},),
                      ]),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Broadcast Lists',
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 18,
                            ),)),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'New Group',
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 18,
                            ),)),
                    ],
                  ),
                  ListTile(
                      leading: IconButton(onPressed: () {},
                          icon: Icon(Icons.delete,color: Colors.grey,size: 25,)),
                      title: Text(
                        'Archived',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                        ),)),
                  Expanded(
                    child: SizedBox(
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: chat.length,
                          itemBuilder: (context, index){
                            return ListTile(
                              leading: CircleAvatar(
                                radius: 20,
                                backgroundImage: chat[index]['Img'],
                              ),
                              subtitle:Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Text(chat[index]['sub'],style: TextStyle(
                                      color: Colors.white,
                                    ),),
                                  ),
                                  chat[index]==chat.length-1?
                                  Container():Padding(
                                    padding: const EdgeInsets.only(top: 20),
                                    child: Divider(color: Colors.grey,thickness: 1,height: 1,),
                                  ),
                                ],
                              ),
                              title: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    chat[index]['name'],
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    ),),
                                  Text(
                                    chat[index]['last'],
                                    style: TextStyle(
                                      color: Colors.grey,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                    ),),
                                ],
                              ),
                            );
                          }),
                    ),
                  ),
                ],
              ),
            ),
          ]
      ),
    );
  }
}
class settings extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return settingsState();
  }

}
class settingsState extends State<settings> {
  List items=[
    Text("🙂",style: TextStyle(color: Colors.white),),
    Icon(Icons.star,color: Colors.white,size: 20,),
    Icon(CupertinoIcons.device_laptop,color: Colors.white,size: 20,),
    Transform.rotate(angle: 7,child: Icon(Icons.key_outlined,color: Colors.white,size: 20,)),
    Icon(CupertinoIcons.lock_fill,color: Colors.white,size: 20,),
    Icon(CupertinoIcons.phone_circle_fill,color: Colors.white,size: 20,),
    Icon(CupertinoIcons.app_badge,color: Colors.white,size: 20,),
    Container(
        height: 30,
        width: 30,
        decoration:BoxDecoration(shape: BoxShape.circle,border: Border.all(color: Colors.white,width: 1)),
        child: Center(child: Icon(Icons.currency_rupee,color: Colors.white,size: 20,))),
    Icon(Icons.swap_vert,color: Colors.white,size: 20,),
    Icon(Icons.info,color: Colors.white,size: 20,),
    Icon(Icons.favorite,color: Colors.white,size: 20,),
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Color(0xff010102),
        body:CustomScrollView(
          slivers: [
            CupertinoSliverNavigationBar(
              backgroundColor: Color(0xff010102),
              automaticallyImplyLeading: false,
              largeTitle: Text("Settings",style: TextStyle(color: Colors.white),),
            ),
            SliverFillRemaining(
              child:  SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Color(0xff1D1D20),
                              borderRadius: BorderRadius.circular(12)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                ListTile(
                                  leading: CircleAvatar(
                                    radius: 25,
                                    backgroundImage:AssetImage('assets/Img 7.jpg'),
                                  ),
                                  title: Text(
                                    "Rutva Bhatt",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 22,
                                        fontWeight: FontWeight.w500,
                                    ),),
                                  subtitle:Text("🥰") ,
                                  trailing: GestureDetector(
                                    onTap: () {},
                                    child: CircleAvatar(
                                      radius: 18,
                                      backgroundColor: Color(0xff2E2D2E),
                                      child: Center(child: Icon(Icons.qr_code,color: Colors.blue,size: 20,)),
                                    ),
                                  ),
                                ),
                                Divider(color: Colors.grey,height: 1,thickness: 1,),
                                line(Colors.blueAccent, 0,"Avtar"),
                              ],
                            ),
                          ),),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xff1D1D20),
                                  borderRadius: BorderRadius.circular(12)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(2),
                                child: Column(
                                  children: [
                                    line(Colors.yellow, 1,"Starred Message"),
                                    Divider(color: Colors.grey,height: 1,thickness: 1,indent: 70,endIndent: 20),
                                    line(Color(0xff00B49D), 2,"Notification"),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xff1D1D20),
                                  borderRadius: BorderRadius.circular(12)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(2),
                                child: Column(
                                  children: [
                                    line(Color(0xff007AFE), 3,"Account"),
                                    Divider(color: Colors.grey,height: 1,thickness: 1,indent: 70,endIndent: 20),
                                    line(Color(0xff35A4D8), 4,"Privacy"),
                                    Divider(color: Colors.grey,height: 1,thickness: 1,indent: 70,endIndent: 20),
                                    line(Color(0xff4FD35B), 5,"Chats"),
                                    Divider(color: Colors.grey,height: 1,thickness: 1,indent: 70,endIndent: 20),
                                    line(Color(0xfffd3322), 6,"Notification"),
                                    Divider(color: Colors.grey,height: 1,thickness: 1,indent: 70,endIndent: 20),
                                    line(Color(0xff2BBCA2), 7,"Payments"),
                                    Divider(color: Colors.grey,height: 1,thickness: 1,indent: 70,endIndent: 20),
                                    line(Color(0xff2CCE55), 8,"Storage and Data"),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xff1D1D20),
                                  borderRadius: BorderRadius.circular(12)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(2),
                                child: Column(
                                  children: [
                                    line(Color(0xff007AFE),9,"Help"),
                                    Divider(color: Colors.grey,height: 1,thickness: 1,indent: 70,endIndent: 20),
                                    line(Color(0xffe7465a),10,"Tell a Friend"),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ]
                  ),
                ),
              ),
            )
          ],
        )
    );
  }
  Widget line(Color c1,int i,String s)
  {
    return ListTile(
      leading: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: c1,
        ),
        child: Center(
          child: items[i],
        ),
      ),
      title: Text(
        "$s",
        style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w500,
        ),),
      trailing: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 20,)),
    );
  }
}
class cuttent extends ChangeNotifier {
  void abc(int i) {
    currentindex = i;
    notifyListeners();
  }
  void abc1(int i) {
    currentInd = i;
    notifyListeners();
  }
}
  class editfunction extends  ChangeNotifier{
  void edit() {
    a=true;
    notifyListeners();
  }
}
  class fun extends ChangeNotifier{
  void missed() {
    a=false;
    notifyListeners();
  }
}