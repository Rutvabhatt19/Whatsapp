import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsappui/Screen2.dart';
import 'package:whatsappui/main.dart';
late TabController controller;

class Android extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Androidstate();
  }
}
class Androidstate extends State<Android> with SingleTickerProviderStateMixin{
  List tab=[Groups(),Chats(),Update(),Calls()];
  bool a=true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller=TabController(length: 4, vsync: this,initialIndex: 1);
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final provider = Provider.of<search>(context);
    return Scaffold(
      body: CustomScrollView(
         slivers : [
            Consumer(builder: (context, value, child) {
              return SliverAppBar(
                pinned: provider.s==1?false:true,
                floating: true,
                automaticallyImplyLeading: false,
                backgroundColor: Color(0xff1F2C35),
                snap: false,
                elevation: 0,
                flexibleSpace: FlexibleSpaceBar(),
                title: Text(
                  'WhatsApp',
                  style: TextStyle(
                    color: Color(0xff6A7884),
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),),
                actions: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt_outlined,color: Colors.grey,size: 25,)),
                  provider.s==1||
                      provider.s==3?IconButton(onPressed: () {}, icon: Icon(Icons.search,color: Colors.grey,size: 25,)):Container(),
                  IconButton(onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Screen2(),));
                  }, icon: Icon(Icons.more_vert,color: Colors.grey,size: 25,)),
                ],
              );
            },),
           SliverAppBar(
             backgroundColor: Color(0xff1F2C35),
             pinned: true,
             elevation: 0,
             floating: false,
             bottom: PreferredSize(
               preferredSize: Size.fromHeight(0),
               child: Consumer(
                 builder: (context, search,  child) {
                   return TabBar(
                     onTap: (value) {
                       provider.funb(value);
                     },
                     tabs: [
                       Container(
                           width: MediaQuery.of(context).size.width/10,
                           child: Tab(icon: Icon(Icons.groups,size: 30,),)),
                       Container(
                           width: MediaQuery.of(context).size.width/3.3,
                           child: Tab(text: 'Chats',)),
                       Container(
                           width: MediaQuery.of(context).size.width/3.3,
                           child: Tab(text: 'Updats',)),
                       Container(
                           width: MediaQuery.of(context).size.width/3.3,
                           child: Tab(text: 'Calls',)),
                     ],
                     controller: controller,
                     indicatorColor: Color(0xff00A784),
                     labelColor: Color(0xff00A784),
                     unselectedLabelColor: Colors.grey,
                     labelPadding: EdgeInsets.zero,
                     indicatorPadding: EdgeInsets.zero,
                     isScrollable: true,
                     labelStyle: TextStyle(
                       fontSize: 17,
                     ),
                   );
                 },
               ),),
           ),
           SliverFillRemaining(
             child: Column(
               children: [
                 Expanded(
                     child: SizedBox(
                   child: TabBarView(
                     controller: controller,
                     children: [
                       tab[0],
                       tab[1],
                       tab[2],
                       tab[3],
                     ],
                   ),
                 ))
               ],
             ),
           ),
         ]
      ),
      backgroundColor: Color(0xff111B22),
    );
  }
}
class Groups extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Groupsstate();
  }
}
class Groupsstate extends State<Groups>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xff111B22),
      body: Padding(
        padding: const EdgeInsets.only(top: 80,bottom: 150),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 150,width: 300,
              child: Image.asset('Imf/group.png',repeat: ImageRepeat.noRepeat,fit: BoxFit.fill,),
            ),
            Text('Stay connected with a community',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Color(0xffE7EBEE),
              ),),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Text("Communities brisng members together in topic-based groups, and make it easy to get admin annoucements. Any community you're added to will appear here.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Color(0xffE7EBEE),
                ),),
            ),
            TextButton(onPressed: () {}, child:Center(child: Text('See example communites >',style: TextStyle(color: Color(0xff00A784),fontSize:18,fontWeight: FontWeight.w400),textAlign: TextAlign.center,)),),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff00A784),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                ),child:Padding(
              padding: const EdgeInsets.only(left: 30,right: 30,top: 10,bottom: 10),
              child: Text('Start  Your communite',style: TextStyle(color: Colors.black,fontSize:18,fontWeight: FontWeight.w400),textAlign: TextAlign.center,),
            ) ),
          ],
        ),
      ),
    );
  }
}
class Chats extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Chatsstate();
  }
}
class Chatsstate extends State<Chats>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xff111B22),
      body: Column(
        children: [
          SizedBox(
            height: 600,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: chat.length,
                    itemBuilder: (context, index){
                      return ListTile(
                        leading: CircleAvatar(
                          radius: 20,
                          backgroundImage: chat[index]['Img'],
                        ),
                        subtitle: Text(
                          chat[index]['sub'],
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey),),
                        title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              chat[index]['name'],
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),),
                            Text(
                              chat[index]['last'],
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),),
                          ],
                        ),
                      );
                    },),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Text('Tap and hold on chat for more aptions',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Divider(
                      color: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.lock,size: 5,),
                        RichText(text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Your personal messages are',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 10,
                                ),
                              ),
                              TextSpan(
                                text: 'end-to-end encrypted',
                                style: TextStyle(
                                  color: Color(0xff00A784),
                                  fontWeight: FontWeight.normal,
                                  fontSize: 11,
                                ),
                              )
                            ]
                        )),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(child: Icon(
            Icons.message_rounded, color: Colors.black, size: 20,)),
        ),
        backgroundColor: Color(0xff00A784),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      ),
    );
  }
}
class Update extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Updatestate();
  }
}
class Updatestate extends State<Update>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 20,right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Status',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),),
                    IconButton(onPressed: () {}, icon:Icon(Icons.more_vert, size: 25, color: Colors.grey,),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Container(
                              height: 70,
                              width: 80,
                              child: Stack(
                                children: [
                                  CircleAvatar(
                                    radius: 33,
                                    backgroundColor: Colors.grey.shade600,
                                    child: Center(
                                        child: Icon(
                                          Icons.person,
                                          color: Colors.grey,
                                          size: 30,)),
                                  ),
                                  Positioned(
                                      top:45,
                                      left:30,
                                      child: SizedBox(
                                        height: 24,
                                        child: FloatingActionButton.small(
                                          backgroundColor: Color(0xff00A784),
                                          onPressed:() {},
                                          child: Icon(Icons.add,size: 10,color: Colors.white,),
                                        ),
                                      )),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Text(
                              'My Status',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),),
                          ),
                        ],
                      ),
                      fun(0),
                      fun(4),
                      fun(6),
                      fun(8),
                      fun(9),
                    ],
                  ),
                ),
              ),
              Divider(color: Colors.grey,),
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 8,right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Channels',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),),
                    IconButton(onPressed: () {}, icon:Icon(Icons.add, size: 25, color: Colors.grey,),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10,left: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage('Imf/follow1.jpg',),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        'Katrina Kaif',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 10,top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.photo,size: 15,color: Colors.grey,),
                            Text(
                              'All❤️for all 15M of You!!',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13,
                            ),)
                          ],
                        ),
                        Text(
                          'Yesterday',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),)
                      ],
                    ),
                    Container(
                      height: 40,width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(image: AssetImage('Imf/follow1.jpg'),fit: BoxFit.fill,repeat: ImageRepeat.noRepeat),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Divider(color: Colors.grey,),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 8,right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Find channels',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),),
                    Text(
                      'See all >',
                      style: TextStyle(
                        color: Color(0xff00A784),
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                      ),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      fun2('Akshay Kumar', 'Imf/ak2.jpg'),
                      fun2('Indian Cricket Team', 'Imf/flag.jpg'),
                      fun2('Diljit Dosanjh', 'Imf/dd.jpeg'),
                    ],
                  ),
                ),
              ),
            ],
          ),
      ),
      floatingActionButton:Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 510),
            child: FloatingActionButton.small(
              onPressed: () {},
              backgroundColor: Colors.grey,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                    child: Icon(
                      Icons.edit,
                      color: Colors.white,
                      size: 20,
                    )),
              ),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: Color(0xff00A784),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                    child: Icon(
                      Icons.camera_alt_rounded,
                      color: Colors.black,
                      size: 20,
                    )),
              ),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            ),
          ),
        ],
      ),
      backgroundColor: Color(0xff111B22),
    );
  }
  Widget fun(int i){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: 72,width: 72,
            decoration: BoxDecoration(
                border: Border.all(color: Color(0xff00A784), ),
                color: Color(0xff111B22),
                shape: BoxShape.circle
            ),
            child: Center(
              child: Container(
                height: 65,width: 65,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(image:  chat[i]['Img'],fit: BoxFit.fill,repeat: ImageRepeat.noRepeat),
                ),
              ),
            ),
          ),
          Text(
            chat[i]['name'],
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),),
        ],
      ),
    );
  }
  Widget fun2(String a,String b){
    return Padding(
      padding: const EdgeInsets.only(right: 20,top: 20,left: 1,bottom: 1),
      child: Container(
        height: 170,width: 140,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0,bottom: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Container(
                    height: 70,
                    width: 80,
                    child: Stack(
                      children: [
                        CircleAvatar(
                          radius: 33,
                          backgroundColor: Colors.grey.shade600,
                          backgroundImage: AssetImage(b),
                          ),
                        Positioned(
                            top:40,
                            left:40,
                            child: Container(
                              height: 30,
                              width: 35,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset('Imf/logo.png',fit: BoxFit.fill,repeat: ImageRepeat.noRepeat,),
                            )),
                      ],
                    ),
                  ),
                ),
                Text(
                  a,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),),
                Container(
                  width: 80,
                  height: 30,
                  child: Center(
                    child: Text(
                      'Follow',
                      style: TextStyle(
                        color: Colors.greenAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                      ),),
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xff0E3032),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ],
            ),
          ),
        ),
        decoration: BoxDecoration(
          color: Color(0xff111B22),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.grey,
            width: 2,
            style: BorderStyle.solid,
            strokeAlign: 1,
          ),
        ),
      ),
    );
  }
}
class Calls extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Callsstate();
  }
}
class Callsstate extends State<Calls>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body:  Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Color(0xff00A784),
                  child: Center(
                      child: Transform.rotate(
                          angle: 4.0,
                          child: Icon(Icons.link,color: Colors.black,size: 30,
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
                            color: Colors.white,
                            fontSize: 20,
                        ),),
                      Text(
                        'Share a link for your WhatsApp call',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                        ),),
                    ],
                  ),
                ),
              ],
            ),
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
              padding: const EdgeInsets.only(top: 30),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: chat[6]['Img'],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 200,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      chat[6]['name'],
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                      ),),
                                    Row(
                                      children: [
                                        Icon(Icons.north_east,color: Colors.green,size: 20,),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 10,top: 5),
                                          child: Text(
                                            'Yesterday , 08:08',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15,
                                            ),),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 26),
                                child: IconButton(onPressed: () {}, icon: Icon(Icons.call,color: Colors.green,size: 30,),),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: GestureDetector(
                      onTap: () {},
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: chat[2]['Img'],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 200,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        chat[2]['name'],
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontSize: 20,
                                        ),),
                                      Row(
                                        children: [
                                          Icon(Icons.south_west,color: Colors.red,size: 20,),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 10,top: 5),
                                            child: Text(
                                              'Yesterday , 10:30',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                              ),),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 26),
                                  child: IconButton(onPressed: () {}, icon: Icon(Icons.video_call,color: Colors.green,size: 30,),),
                                ),
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
          ],
        ),
      ),
      floatingActionButton:FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xff00A784),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
              child:
              Icon(Icons.add_call, color: Colors.black, size: 20,)),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      ),
      backgroundColor: Color(0xff111B22),
    );
  }
}
class search extends ChangeNotifier{
  int s=1;
  void funb(int b){
    s=b;
    notifyListeners();
  }
}
