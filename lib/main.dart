import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Text(
                  "Chats",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                Text(
                  "Updates",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                Text(
                  "Calls",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ],
            ),
            title: const Text('Whatsapp'),
            actions: <Widget>[
              IconButton(
              icon: Icon(Icons.camera_alt),
              onPressed: (){}),
              IconButton(
              icon: Icon(Icons.search),
              onPressed: (){}),
               IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: (){})
              ],
           
            backgroundColor: Colors.green,
          ),
          body: TabBarView(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    getListTile1("S", "Summamah", "Where are you..??","12:26 PM", Colors.green),
                    getListTile1("S", "Sinan", "How are you..??", "3:45 AM",Colors.yellow),
                    getListTile1("H", "Hussain", "What are you doing..??","7:32 PM", Colors.purple),
                    getListTile1("U", "Umer", "Can we meet..??", "10:06 PM", Colors.orange),
                    getListTile1("Y", "Youshay", "Have a good day", "8:20 PM",Colors.grey),
                    getListTile1("E", "Ezaan", "I will be there", "9:12 AM", Colors.amber),
                    getListTile1("S", "Sir Sabeel", "Class will be at 12:15","9:30 AM", Colors.pink),
                    getListTile1("A", "Amir", "Hello..!!", "1:46 PM",Colors.red.shade400),
                    getListTile1("S", "Shariq", "Call me", "10:12 AM",Colors.yellow.shade400),
                    getListTile1("H","Hassan","Can you send me the todays lecture..??","7:13 PM",Colors.blueGrey),
                    getListTile1("M", "Mobariz", "I am in Canteen..??","12:12 PM", Colors.purple.shade400),
                    getListTile1("U", "Usman", "I want to sell my car","9:52 PM", Colors.deepOrange),
                    getListTile1("S", "Shayan", "How is your Studies going..??","10:58 PM", Colors.greenAccent),
                    getListTile1("R", "Rafay", "Can we go for a trip...??","5:28 PM", Colors.pinkAccent),
                    getListTile1("A", "Anas", "Are in Islamabad..??", "2:52 PM",Colors.lightBlue),
                  ],
                ),
              ),

              // Body for Status Tab
              SingleChildScrollView(
                child: Column(
                  children: [
                    getListTile4("M", "My Status","Tab to add status or updates", Colors.green),
                    gettext(),
                    getListTile2("S", "Sinan", "1:08 PM", Colors.yellow),
                    getListTile2("H", "Hussain", "12:55 PM", Colors.purple),
                    getListTile2("U", "Umer", "4:49 PM", Colors.orange),
                    getListTile2("Y", "Youshay", "2:26 PM", Colors.grey),
                    getListTile2("E", "Ezaan", "8:00 PM", Colors.amber),
                    getListTile2("K", "Khurram", "1:10 PM", Colors.pink),
                    getListTile2("A", "Amir", "4:03 PM", Colors.red.shade400),
                    getListTile2("S", "Shariq", "2:07 PM", Colors.yellow.shade400),
                    getListTile2("H", "Hassan", "7:32 PM", Colors.blueGrey),
                    getListTile2("M", "Mobariz", "11:21 PM", Colors.purple.shade400),
                    getListTile2("U", "Usman", "10:43 PM", Colors.deepOrange),
                    getListTile2("S", "Shayan", "6:55 PM", Colors.greenAccent),
                    getListTile2("R", "Rafay", "8:33 PM", Colors.pinkAccent),
                    getListTile2("A", "Anas", "6:40 PM", Colors.lightBlue),
                  ],                
                  ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    getListTile3("M", "Maaz", "2:07", Colors.green, Colors.green),
                    getListTile3("S", "Sinan", "1:08 PM", Colors.yellow, Colors.green),
                    getListTile3("H", "Hussain", "12:55 PM", Colors.purple, Colors.red),
                    getListTile3("U", "Umer", "4:49 PM", Colors.orange, Colors.green),
                    getListTile3("Y", "Youshay", "2:26 PM", Colors.grey, Colors.red),
                    getListTile3("E", "Ezaan", "8:00 PM", Colors.amber, Colors.red),
                    getListTile3("K", "Khurram", "1:10 PM", Colors.pink, Colors.green),
                    getListTile3("A", "Amir", "4:03 PM", Colors.red.shade400,Colors.green),
                    getListTile3("S", "Shariq", "2:07 PM",Colors.yellow.shade400, Colors.red),
                    getListTile3("H", "Hassan", "7:32 PM", Colors.blueGrey,Colors.green),
                    getListTile3("M", "Mobariz", "11:21 PM",Colors.purple.shade400, Colors.green),
                    getListTile3("U", "Usman", "10:43 PM", Colors.deepOrange,Colors.red),
                    getListTile3("S", "Shayan", "6:55 PM", Colors.greenAccent,Colors.green),
                    getListTile3("R", "Rafay", "8:33 PM", Colors.pinkAccent, Colors.red),
                    getListTile3("A", "Anas", "6:40 PM", Colors.lightBlue, Colors.red),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

getListTile1(avatar, title, subtitle, trailing, color) {
  return ListTile(
      leading: CircleAvatar(
        backgroundColor: color,
        child: Text(
          "$avatar",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
      title: Text("$title"),
      subtitle: Text("$subtitle"),
      trailing: Text("$trailing"),
      tileColor: Colors.white);
}

getListTile2(avatar, title, subtitle, color) {
  return ListTile(
      leading: CircleAvatar(
        backgroundColor: color,
        child:Text(
          "$avatar",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
      title: Text("$title"),
      subtitle: Text("$subtitle"),
      tileColor: Colors.white);
}

getListTile3(avatar, title, subtitle, color, color1) {
  return ListTile(
      leading: CircleAvatar(
        backgroundColor: color,
        child: Text(
          "$avatar",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
      title: Text("$title"),
      subtitle: Text("$subtitle"),
      trailing: Icon(
        Icons.call,
        color: color1,
      ),
      tileColor: Colors.white);
}

getListTile4(avatar, title, subtitle, color) {
  return ListTile(
      leading: CircleAvatar(
        backgroundColor: color,
        child: Text(
          "$avatar",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
      title: Text("$title"),
      subtitle: Text("$subtitle"),
      trailing: Icon(Icons.more_vert),
      tileColor: Colors.white);
}

gettext() {
  return const Text(
    "Recent Updates",
    style: TextStyle(fontSize: 18, color: Colors.black),
  );
}
