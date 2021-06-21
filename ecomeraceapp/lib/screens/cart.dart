import 'package:ecomeraceapp/const/colors.dart';
import 'package:ecomeraceapp/const/my_icons.dart';
import 'package:ecomeraceapp/widgets/cart_full.dart';
import 'package:flutter/material.dart';
import '../widgets/cart_empty.dart';

class CartScreen extends StatefulWidget {
  static const routeName = '/CartScreen';
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    List products = [];
    return !products.isEmpty
        ? Scaffold(
            body: CartEmpty(),
          )
        : Scaffold(
            bottomSheet: checkOutSection(context),
            appBar: AppBar(
              actions: [
                IconButton(icon: Icon(MyAppIcons.trash), onPressed: () {})
              ],
              title: Text('Cart Items'),
            ),
            body: Container(
              margin: EdgeInsets.only(bottom: 60),
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (BuildContext ctx, int indes) {
                    return CartFull();
                  }),
            ),
          );
  }

  Widget checkOutSection(BuildContext ctx) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: Colors.grey, width: 0.5),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(
                    colors: [
                      ColorConsts.gradiendLStart,
                      ColorConsts.gradiendLEnd
                    ],
                    stops: [0.0, 0.7],
                  ),
                ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(30),
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'CheckOut',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Theme.of(ctx).textSelectionColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Spacer(),
            Text(
              'Total',
              // textAlign: TextAlign.center,
              style: TextStyle(
                color: Theme.of(ctx).textSelectionColor,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              'US \$179',
              // textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.blue,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
