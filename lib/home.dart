import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecomerce_app_ui/custom_app_bar.dart';
import 'package:ecomerce_app_ui/product.dart';
import 'package:flutter/material.dart';

import 'detail_page.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;
  List<Widget> productCard = [];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              CustomAppBar(),
              Container(
                padding: EdgeInsets.all(12),
                child: TabBar(
                  unselectedLabelColor: Theme.of(context).primaryColor,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Theme.of(context).primaryColor,
                  ),
                  tabs: [
                    Tab(text: 'News'),
                    Tab(text: 'News'),
                    Tab(text: 'News'),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  child: CarouselSlider(
                    items:
                        products.map((e) => ProductCard(product: e)).toList(),
                    options: CarouselOptions(
                      onPageChanged: (index, _) {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                      height: 510,
                      enlargeCenterPage: true,
                      scrollDirection: Axis.horizontal,
                      enableInfiniteScroll: false,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                      products.length, (index) => buildDot(index)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container buildDot(int index) {
    return Container(
      margin: EdgeInsets.only(right: 5),
      height: 10,
      width: 10,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: index == currentIndex
            ? Theme.of(context).primaryColor
            : Colors.white,
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (_)=> DetailPage(product: product))),
          child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(25),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Text(
              product.title,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              product.subTitle,
              style: TextStyle(
                fontSize: 18,
                color: Colors.black54,
              ),
            ),
            SizedBox(height: 9),
            Container(
              height: 150,
              child: Image.network(
                product.image,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 15),
            Text(
              "\$ ${product.price}",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 15),
            Text(
              product.description,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 20),
            FlatButton(
              color: Color(0xffFEDE00),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              onPressed: () {},
              child: Text("Buy"),
            )
          ],
        ),
      ),
    );
  }
}
