import 'package:backdrop/backdrop.dart';
import 'package:backdrop/scaffold.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:ecomeraceapp/const/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/HomeScreen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  get onPressed => null;

  @override
  Widget build(BuildContext context) {
    List _crouselImage = [
      "assets/images/unnamed.png",
      "assets/images/8103.png",
      "assets/images/amazon-logo.png",
      "assets/images/google-logo.png",
      "assets/images/microsoft-logo.png",
    ];
    List _brandImage = [
      "assets/images/unnamed.png",
      "assets/images/8103.png",
      "assets/images/amazon-logo.png",
      "assets/images/google-logo.png",
      "assets/images/microsoft-logo.png",
    ];
    return Scaffold(
      body: BackdropScaffold(
        frontLayerBackgroundColor: Theme.of(context).scaffoldBackgroundColor,
        headerHeight: MediaQuery.of(context).size.height * 0.25,
        appBar: BackdropAppBar(
          title: Text("Backdrop Example"),
          leading: BackdropToggleButton(
            icon: AnimatedIcons.home_menu,
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [ColorConsts.starterColor, ColorConsts.endColor])),
          ),
          actions: <Widget>[
            IconButton(
                icon: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 15,
                    backgroundImage: NetworkImage(
                        'https://cobotintel.com/wp-content/uploads/2019/08/hand-1.gif'),
                  ),
                ),
                onPressed: () {})
          ],
        ),
        backLayer: Center(
          child: Text("Back Layer"),
        ),
        frontLayer: Column(
          children: [
            Container(
              height: 150.0,
              width: double.infinity,
              child: Carousel(
                boxFit: BoxFit.fill,
                autoplay: true,
                animationCurve: Curves.fastOutSlowIn,
                animationDuration: Duration(milliseconds: 1000),
                dotSize: 5.0,
                dotIncreasedColor: Colors.purple,
                dotBgColor: Colors.black.withOpacity(0.2),
                dotPosition: DotPosition.bottomCenter,
                showIndicator: true,
                indicatorBgPadding: 7.0,
                images: [
                  ExactAssetImage(_crouselImage[0]),
                  ExactAssetImage(_crouselImage[1]),
                  ExactAssetImage(_crouselImage[2]),
                  ExactAssetImage(_crouselImage[3]),
                  ExactAssetImage(_crouselImage[4]),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    'Popular Brands',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                  ),
                  Spacer(),
                  FlatButton(
                    onPressed: () {},
                    child: Text(
                      'Popular Brands',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w800,
                          color: Colors.red),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 210,
              width: MediaQuery.of(context).size.width * 0.95,
              child: Swiper(
                itemCount: _brandImage.length,
                autoplay: true,
                onTap: (index) {},
                itemBuilder: (BuildContext ctx, int index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      color: Colors.blueGrey,
                      child: Image.asset(
                        _brandImage[index],
                        fit: BoxFit.fill,
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
