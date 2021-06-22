import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class FeedsProducts extends StatefulWidget {

  @override
  _FeedsProductsState createState() => _FeedsProductsState();
}

class _FeedsProductsState extends State<FeedsProducts> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Theme.of(context).backgroundColor,
      ),
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(2),
                child: Container(
                  width: double.infinity,
                  constraints: BoxConstraints(
                      minHeight: 100,
                      maxHeight: MediaQuery.of(context).size.height * 0.3),
                  child: Image.network(
                    "https://cdn.shopify.com/s/files/1/0076/8812/6522/files/womens_a8c1f53a-a5b0-4aac-9846-05ea0cac686a_700x.jpg?v=1620243027",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              // Position of badge can be changeed by wraping badge with positioned
              Badge(
                toAnimate: true,
                shape: BadgeShape.square,
                badgeColor: Colors.pink,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(8),
                ),
                badgeContent:
                    Text('New', style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(left: 5),
            margin: EdgeInsets.only(left: 5, bottom: 2, right: 3),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 4,
                ),
                Text(
                  'Description',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    '\$ 150.99',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Quantity',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey,
                      ),
                    ),
                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {},
                        borderRadius: BorderRadius.circular(18),
                        child: Icon(
                          Icons.more_horiz,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
