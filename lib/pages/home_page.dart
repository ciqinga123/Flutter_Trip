import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  List imgUrls = [
    'https://tva1.sinaimg.cn/large/006y8mN6ly1g912qmb13sj30ii0gd756.jpg',
    'https://tva1.sinaimg.cn/large/006y8mN6ly1g90zdenxfkj31030id78c.jpg',
    'https://tva1.sinaimg.cn/large/006y8mN6ly1g90xdnneouj30mx07m0tk.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: <Widget>[
          Container(
            height: 160,
            child: Swiper(
              itemCount: imgUrls.length,
              autoplay: true,
              itemBuilder: (BuildContext context, int index) {
                return Image.network(
                  imgUrls[index],
                  fit: BoxFit.fill,
                );
              },
            pagination: SwiperPagination(),
            ),
          ),
        ],
      ),
    ));
  }
}
