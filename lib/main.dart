import 'package:flutter/material.dart';
import 'package:flutter_moda_ui/Story_Page.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.black, accentColor: Colors.black),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.shopping_bag,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Style Share", style: TextStyle(color: Colors.black))
                  ],
                ),
              ),
              backgroundColor: Colors.white,
              iconTheme: IconThemeData(color: Colors.black),
              actions: [
                IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.message,
                      color: Colors.black,
                    )),
                IconButton(
                    onPressed: null,
                    icon: Icon(Icons.photo_camera, color: Colors.black))
              ],
            ),
            drawer: Drawer_element(),
            body: ListView(physics: AlwaysScrollableScrollPhysics(), children: [
              SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.grey.shade100,
                width: double.infinity,
                height: 150,
                child: StoryPage(),
              ),
              sharedpost('images/1.jpg', 'Miya', 'Miya', 'images/b.jpg'),
              sharedpost('images/2.jpg', 'Melek', 'MelekTest', 'images/a.jpg'),
              sharedpost('images/3.jpg', 'Selin', 'SelinTerzi', 'images/c.jpg'),
            ]),
            bottomNavigationBar: BottomNavigationBar(
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home,
                      color: Colors.black,
                    ),
                    label: 'Home',
                    backgroundColor: Colors.black),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    label: 'Search',
                    backgroundColor: Colors.black),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.person,
                      color: Colors.black,
                    ),
                    label: 'Profile',
                    backgroundColor: Colors.black),
              ],
              backgroundColor: Colors.grey.shade300,
            )));
  }

  Drawer_element() {
    return Drawer(
        child: Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        child: Column(
          children: [
            Expanded(
              child: Container(
                //color: Colors.red,
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      child: Column(
                        children: [
                          Expanded(
                            //AVATAR
                            child: Container(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(25, 20, 0, 0),
                                child: CircleAvatar(
                                  backgroundImage: AssetImage('images/1.jpg'),
                                  radius: 25,
                                ),
                              ),
                            ),
                            flex: 2,
                          ),
                          Expanded(
                            //kULLANICI ADI /
                            child: Container(
                              width: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 14),
                                    child: Text(
                                      "My Name",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 30),
                                    child: Text('@username',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500)),
                                  )
                                ],
                              ),
                              //color: Colors.purple,
                            ),
                            flex: 1,
                          )
                        ],
                      ),
                      // color: Colors.red
                    )),
                    Expanded(
                        child: Container(
                      height: double.infinity,
                      //color: Colors.blue,
                      child: Padding(
                        //Diğer Hesaplar
                        padding: const EdgeInsets.only(right: 20, top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [],
                        ),
                      ),
                    )),
                  ],
                ),
              ),
              flex: 1,
            ),
            Expanded(
              child: Container(
                child: Card(
                  child: ListView(
                    children: [
                      Container(
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "345",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Text("Takip edilenler",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 10))
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "1256",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Text("Takipçiler",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 10))
                                ],
                              )
                            ],
                          )),
                      ListTile(
                        leading: Icon(Icons.home),
                        title: Text("Home"),
                        onTap: () {
                          debugPrint("Home Butonuna Basıldı.");
                        },
                      ),
                      ListTile(
                          leading: Icon(Icons.person),
                          title: Text("Profil"),
                          onTap: () {
                            debugPrint("Profil Butonuna Basıldı.");
                          }),
                      ListTile(
                          leading: Icon(Icons.shop_2),
                          title: Text("Siparişler"),
                          onTap: () {
                            debugPrint("Konular Butonuna Basıldı.");
                          }),
                    ],
                  ),
                ),
              ),
              flex: 5,
            )
          ],
        ),
      ),
    ));
  }
}

sharedpost(
    String User_Path, String Users_Name, String UserName, String Post_Path) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
    child: Container(
      width: double.infinity,
      height: 660.0,
      decoration: BoxDecoration(
        color: Colors.brown.shade100,
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Column(
              children: <Widget>[
                ListTile(
                  leading: Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black45,
                          offset: Offset(0, 2),
                          blurRadius: 6.0,
                        ),
                      ],
                    ),
                    child: CircleAvatar(
                      child: ClipOval(
                        child: Image(
                          height: 50.0,
                          width: 50.0,
                          image: AssetImage(User_Path),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  title: Text(
                    Users_Name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text("@" + UserName),
                  trailing: IconButton(
                    icon: Icon(Icons.more_horiz),
                    color: Colors.black,
                    onPressed: () => print('More'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      "Lorem Ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak üzere bir yazı galerisini alarak karıştırdığı 1500'lerden beri endüstri standardı sahte metinler olarak kullanılmıştır."),
                ),
                InkWell(
                  onDoubleTap: () => print('Like post'),
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.all(10.0),
                    width: double.infinity,
                    height: 400.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black45,
                          offset: Offset(0, 5),
                          blurRadius: 8.0,
                        ),
                      ],
                      image: DecorationImage(
                        image: AssetImage(Post_Path),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              IconButton(
                                icon: Icon(Icons.favorite_border),
                                iconSize: 30.0,
                                onPressed: () => print('Like post'),
                              ),
                              Text(
                                '2,515',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 20.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              IconButton(
                                icon: Icon(Icons.chat),
                                iconSize: 30.0,
                                onPressed: () {},
                              ),
                              Text(
                                '350',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                icon: Icon(
                                  Icons.shopping_cart,
                                  size: 24,
                                ),
                                iconSize: 30.0,
                                onPressed: () => print('Go Link'),
                              ),
                              Text(
                                'Buy Now',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      IconButton(
                        icon: Icon(Icons.bookmark_border),
                        iconSize: 30.0,
                        onPressed: () => print('Save post'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

/*
  post() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 4,
        borderRadius: BorderRadius.circular(16),
        color: Colors.brown.shade100,
        child: Container(
          padding: EdgeInsets.all(20),
          width: double.infinity,
          height: 600,
          child: Column(
            children: [
              user_information(),
              SizedBox(
                height: 10,
              ),
              sharepage()
            ],
          ),
        ),
      ),
    );
  }

  user_information() {
    return Container(
      height: 60,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  height: 60,
                  width: 60,
                  child: CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.white,
                    child: ClipOval(
                        child: Image.asset(
                      'images/1.jpg',
                      width: 60,
                      height: 60,
                    )),
                  ),
                ),
                flex: 1,
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Text(
                        "UserName",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w600),
                      ),
                      Text("@UserName")
                    ],
                  ),
                ),
                flex: 3,
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.centerRight,
                  child: Icon(Icons.photo_camera),
                ),
                flex: 1,
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}

sharepage() {
  return Container(
    height: 350,
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(22),
          child: Text(
              "Lorem Ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak üzere bir yazı galerisini alarak karıştırdığı 1500'lerden beri endüstri standardı sahte metinler olarak kullanılmıştır."),
        ),
        Divider(),
        SharePage()
      ],
    ),
  );
}

SharePage() {
  return Container(
    height: 300,
    color: Colors.yellow,
  );
}
  */

/*
  post(String Gelen_Path, String Gelen_isim, String Gelen_Kullanici_Adi,
      String Resim1Path, String Resim2Path, String Resim3Path) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Material(
          elevation: 4,
          borderRadius: BorderRadius.circular(16),
          color: Colors.brown.shade100,
          child: Container(
              width: double.infinity,
              height: 450,
              padding: EdgeInsets.all(8),
              child: Column(
                children: [
                  //Burası ilk Row elemanı.
                  Container(
                    width: double.infinity,
                    height: 80,
                    decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(width: 1)),
                    ),
                    //color: Colors.red,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Container(
                            alignment: Alignment.topLeft,
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(Gelen_Path),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(1000)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Container(
                            alignment: Alignment.topLeft,
                            width: 200,
                            height: 80,
                            //color: Colors.orange,
                            child: Column(
                              children: [
                                Text(
                                  Gelen_isim,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(Gelen_Kullanici_Adi),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.topRight,
                          width: 80,
                          height: 80,
                          child: Icon(Icons.more),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Text(
                        "Lorem Ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak üzere bir yazı galerisini alarak karıştırdığı 1500'lerden beri endüstri standardı sahte metinler olarak kullanılmıştır",
                        style: TextStyle(fontWeight: FontWeight.w800),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                              width: 240,
                              height: 240,
                              //color: Colors.orange,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(Resim1Path),
                                    fit: BoxFit.cover),
                              )),
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                  width: 120,
                                  height: 120,
                                  //color: Colors.yellow,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(Resim2Path),
                                        fit: BoxFit.cover),
                                  )),
                            ),
                            Container(
                                width: 120,
                                height: 120,
                                // color: Colors.pink,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(Resim3Path),
                                      fit: BoxFit.cover),
                                ))
                          ],
                        )
                      ],
                    ),
                  )
                ],
              )),
        ));
  }
}
*/
