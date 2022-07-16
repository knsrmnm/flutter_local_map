import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    double _cardWidth = (_size.width / 2) - 30.0;
    return SafeArea(
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'シチュエーション',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700, color: Colors.black),
              ),
              const SizedBox(height: 20.0),
              Container(
                width: double.infinity,
                height: 50.0,
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  color: Colors.grey[100],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'ランチにおすすめ',
                      style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400, color: Colors.black),
                    ),
                    Icon(Icons.arrow_forward_ios, size: 14.0)
                  ],
                ),
              ),
              const SizedBox(height: 10.0),
              Container(
                width: double.infinity,
                height: 50.0,
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  color: Colors.grey[100],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'お持ち帰りにおすすめ',
                      style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400, color: Colors.black),
                    ),
                    Icon(Icons.arrow_forward_ios, size: 14.0)
                  ],
                ),
              ),
              const SizedBox(height: 20.0),
              Text(
                'カテゴリ',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700, color: Colors.black),
              ),
              const SizedBox(height: 20.0),
              Row(
                children: [
                  _makeCategoryCard(_cardWidth, 'カフェ', 'coffee.png'),
                  const SizedBox(width: 20.0),
                  _makeCategoryCard(_cardWidth, '和食', 'sushi.png'),
                ],
              ),
              const SizedBox(height: 15.0),
              Row(
                children: [
                  _makeCategoryCard(_cardWidth, 'インド料理', 'dip.png'),
                  const SizedBox(width: 20.0),
                  _makeCategoryCard(_cardWidth, 'イタリアン', 'pasta.png'),
                ],
              ),
              const SizedBox(height: 15.0),
              Row(
                children: [
                  _makeCategoryCard(_cardWidth, 'デザート', 'cheesecake.png'),
                  const SizedBox(width: 20.0),
                  _makeCategoryCard(_cardWidth, '韓国料理', 'south-korea.png'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _makeCategoryCard(double width, String title, String icon) {
    return Container(
      width: width,
      height: 100.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        color: Colors.grey[100],
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/icons/" + icon, width: 30.0),
            const SizedBox(height: 5.0),
            Text(
              title,
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400, color: Colors.black),
            )
          ],
        ),
      )
    );
  }
}
