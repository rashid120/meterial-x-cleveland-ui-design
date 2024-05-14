import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  final _key = GlobalKey<ScaffoldState>();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        key: _key,
        appBar: AppBar(leading: IconButton(onPressed: () { _key.currentState?.openDrawer(); }, icon: const Icon(Icons.menu),), title: const Text("Cleveland"), actions: const [Icon(Icons.search)], backgroundColor: Colors.blue,),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                // height: 550,
                child: Card(
                  color: Colors.white,
                  shadowColor: Colors.grey,
                  borderOnForeground: true,
                  elevation: 50,
                  child: Column(
                    children: [
                      Image.network(
                        'https://media.blogto.com/articles/20181019-cheap-eats-toronto.jpg?w=2048&cmd=resize_then_crop&height=1365&quality=70',
                        width: double.infinity,
                        // height: 322,
                        fit: BoxFit.fitWidth,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "TRAVEL",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 16),
                            ),
                            const Text(
                              "5 eats cheap",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              "Lorem ipsum dolor sit amet, \nconsectetur adipiscing elit. Etiam \nefficitur ipsum in placerat molestie. \nFusce quis mauris a enim sollicitudin",
                              style: TextStyle(
                                  color: Colors.black54, fontSize: 16),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                MaterialButton(
                                  onPressed: () {},
                                  color: Colors.blueAccent,
                                  child: const Text(
                                    "VIEW ENTRY",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                MaterialButton(
                                  onPressed: () {},
                                  color: Colors.transparent,
                                  textColor: Colors.blue,
                                  elevation: 0,
                                  splashColor: Colors.lightBlue,
                                  child: const Text(
                                    "LEARN MORE",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Card(
                  shadowColor: Colors.grey,
                  color: Colors.white,
                  elevation: 50,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          const Image(image: NetworkImage('https://th.bing.com/th/id/OIP.7lv_jxDer2Fc7MywY2uxMgHaD4?rs=1&pid=ImgDetMain')),
                          // Image.network('https://th.bing.com/th/id/OIP.7lv_jxDer2Fc7MywY2uxMgHaD4?rs=1&pid=ImgDetMain', fit: BoxFit.cover, width: double.infinity,),
                          Container(
                            width: 150,
                            height: 40,
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50)),
                                color: Colors.blueAccent),
                            child: TextButton(
                                onPressed: () {},
                                child: const Row(
                                  children: [
                                    Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "ADD ENTRY",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14),
                                    )
                                  ],
                                )),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "TRAVEL",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14),
                            ),
                            Text(
                              "Special Menu",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        drawer: Drawer(
          elevation: 50,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.green,
                  image: DecorationImage(image: NetworkImage('https://wallpapercave.com/wp/5ICcxhE.jpg',),fit: BoxFit.cover),
                  // boxShadow: <BoxShadow>[BoxShadow(color: Colors.red)],
                ),
                child: UserAccountsDrawerHeader(
                  // margin: EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                    // color: Colors.red,
                    // borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  currentAccountPicture: CircleAvatar(backgroundColor: Colors.grey, radius: 50, child: Icon(Icons.person),),
                  accountName: Text("Rashid Ekbal"),
                  accountEmail: Text("rashid@gmail.com"),
                  currentAccountPictureSize: Size.square(50),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text("My Profile"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.account_balance_wallet_outlined),
                title: const Text("My Account Balance"),
                subtitle: const Text("Balance : 1,00,000"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.edit),
                title: const Text("Edit Profile"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.history),
                title: const Text("Transaction History"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text("Log Out"),
                onTap: () {
                  Navigator.pop(context);
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Log Out Success"), duration: Duration.zero, showCloseIcon: false,));
                },
              ),
            ],
          ),
        ),
        drawerEnableOpenDragGesture: true,
      ),
    );
  }
}
