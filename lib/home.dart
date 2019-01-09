import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  int _bottomNavigationIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          fixedColor: Color(0xFF18D191),
          type: BottomNavigationBarType.fixed,
          currentIndex: _bottomNavigationIndex,
          items: [

            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text('Home')),
            BottomNavigationBarItem(
                icon: Icon(Icons.local_offer), title: Text('Local')),
            BottomNavigationBarItem(
                icon: Icon(Icons.message), title: Text('Message')),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications), title: Text('Notification'))
          ],
          onTap: (int position) {
            setState(() {
            _bottomNavigationIndex = position;
            });
          }

        ),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Color(0xFF18D191)),
        ),
        body: MainContent());
  }
}

class MainContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Container(
            child: Column(
              children: <Widget>[
                //Explore
                new Row(
                  children: <Widget>[
                    Text('Explore', style: TextStyle(fontSize: 30.0))
                  ],
                ),
                SizedBox(height: 10.0),
                new Row(
                  children: <Widget>[
                    //Left
                    new Expanded(
                      child: Container(
                        height: 100.0,
                        decoration: BoxDecoration(
                            color: Color(0xFFFC6A7F),
                            borderRadius: BorderRadius.circular(5.0)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.drive_eta, color: Colors.white),
                            Text(
                              'Motor',
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 5.0),
                    //Center
                    new Expanded(
                      child: Container(
                        height: 100.0,
                        child: Column(
                          children: <Widget>[
                            _buttonExplore(
                              color: Color(0xFF2BD093),
                              name: 'Classified',
                              icon: Icons.local_offer,
                            ),
                            SizedBox(height: 5.0),
                            _buttonExplore(
                              color: Color(0xFFFC7B4D),
                              name: 'Service',
                              icon: Icons.beenhere,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 5.0),
                    //Right
                    new Expanded(
                      child: Container(
                        height: 100.0,
                        child: Column(
                          children: <Widget>[
                            _buttonExplore(
                              color: Color(0xFF53CEBD),
                              name: 'Properties',
                              icon: Icons.account_balance,
                            ),
                            SizedBox(height: 5.0),
                            _buttonExplore(
                              color: Color(0xFFF1B069),
                              name: 'Jobs',
                              icon: Icons.art_track,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 20.0),

                //Trending
                new Row(
                  children: <Widget>[
                    Expanded(
                        child: Text('Popular Trending',
                            style: TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.bold))),
                    Text('View All',
                        style:
                            TextStyle(fontSize: 18.0, color: Color(0xFF18D191)),
                        textAlign: TextAlign.right)
                  ],
                ),
                SizedBox(height: 10.0),
                new Row(
                  children: <Widget>[
                    _buttonTrending(
                        link:
                            'https://www.howtogeek.com/wp-content/uploads/2016/01/steam-and-xbox-controllers.jpg',
                        name: 'Play Station'),
                    SizedBox(width: 5.0),
                    _buttonTrending(
                        link:
                            'https://pawanjewellers.in/wp-content/uploads/2016/09/Jewellery-new.jpg',
                        name: 'Jewellery and Watches'),
                    SizedBox(width: 5.0),
                    _buttonTrending(
                        link:
                            'http://images4.fanpop.com/image/photos/21600000/Electronics-hd-wallpaper-21627626-1920-1200.jpg',
                        name: 'Electronics')
                  ],
                ),

                SizedBox(height: 20.0),

                //Trending 1
                new Row(
                  children: <Widget>[
                    Expanded(
                        child: Text('Popular Trending 1',
                            style: TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.bold))),
                    Text('View All',
                        style:
                            TextStyle(fontSize: 18.0, color: Color(0xFF18D191)),
                        textAlign: TextAlign.right)
                  ],
                ),
                SizedBox(height: 10.0),
                new Row(
                  children: <Widget>[
                    _buttonTrending(
                        link:
                            'https://s1.cdn.autoevolution.com/images/gallery/LEXUS-HS-250h-3892_26.jpg',
                        name: 'Motors'),
                    SizedBox(width: 5.0),
                    _buttonTrending(
                        link:
                            'https://d3tvpxjako9ywy.cloudfront.net/blog/content/uploads/2015/03/company-culture-why-it-matters.jpg',
                        name: 'Jobs'),
                    SizedBox(width: 5.0),
                    _buttonTrending(
                        link:
                            'http://images4.fanpop.com/image/photos/21600000/Electronics-hd-wallpaper-21627626-1920-1200.jpg',
                        name: 'Electronics')
                  ],
                ),

                //Trending 2
                new Row(
                  children: <Widget>[
                    Expanded(
                        child: Text('Popular Trending 2',
                            style: TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.bold))),
                    Text('View All',
                        style:
                            TextStyle(fontSize: 18.0, color: Color(0xFF18D191)),
                        textAlign: TextAlign.right)
                  ],
                ),
                SizedBox(height: 10.0),
                new Row(
                  children: <Widget>[
                    _buttonTrending(
                        link:
                            'https://www.howtogeek.com/wp-content/uploads/2016/01/steam-and-xbox-controllers.jpg',
                        name: 'Play Station'),
                    SizedBox(width: 5.0),
                    _buttonTrending(
                        link:
                            'https://pawanjewellers.in/wp-content/uploads/2016/09/Jewellery-new.jpg',
                        name: 'Jewellery and Watches'),
                    SizedBox(width: 5.0),
                    _buttonTrending(
                        link:
                            'http://images4.fanpop.com/image/photos/21600000/Electronics-hd-wallpaper-21627626-1920-1200.jpg',
                        name: 'Electronics')
                  ],
                ),

                //Trending 3
                new Row(
                  children: <Widget>[
                    Expanded(
                        child: Text('Popular Trending 3',
                            style: TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.bold))),
                    Text('View All',
                        style:
                            TextStyle(fontSize: 18.0, color: Color(0xFF18D191)),
                        textAlign: TextAlign.right)
                  ],
                ),
                SizedBox(height: 10.0),
                new Row(
                  children: <Widget>[
                    _buttonTrending(
                        link:
                            'https://www.howtogeek.com/wp-content/uploads/2016/01/steam-and-xbox-controllers.jpg',
                        name: 'Play Station'),
                    SizedBox(width: 5.0),
                    _buttonTrending(
                        link:
                            'https://pawanjewellers.in/wp-content/uploads/2016/09/Jewellery-new.jpg',
                        name: 'Jewellery and Watches'),
                    SizedBox(width: 5.0),
                    _buttonTrending(
                        link:
                            'http://images4.fanpop.com/image/photos/21600000/Electronics-hd-wallpaper-21627626-1920-1200.jpg',
                        name: 'Electronics')
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buttonExplore({Color color, String name, IconData icon, action}) {
    return Expanded(
      child: GestureDetector(
        onTap: action,
        child: Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Icon(icon, color: Colors.white),
            ),
            Text(name)
          ]),
        ),
      ),
    );
  }

  Widget _buttonTrending({String link, String name}) {
    return new Expanded(
      child: Container(
        height: 150.0,
        child: Column(
          children: <Widget>[
            Container(
              height: 100.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  image: DecorationImage(
                      image: NetworkImage(link),
                      fit: BoxFit.cover
                  )
              ),
            ),
            Text(name,
                style: TextStyle(fontSize: 16.0), textAlign: TextAlign.center)
          ],
        ),
      ),
    );
  }

  void _showSnackbar(BuildContext context, String content) {
    final snackBar = SnackBar(
      content: Text(content),
    );
    Scaffold.of(context).showSnackBar(snackBar);
  }
}
