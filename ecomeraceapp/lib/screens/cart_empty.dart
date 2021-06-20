import 'package:ecomeraceapp/const/colors.dart';
import 'package:ecomeraceapp/provider/dark_theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartEmpty extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeCange = Provider.of<DarkThemeProvider>(context);
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.4,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/images/unnamed.png'),
            ),
          ),
        ),
        Text(
          "Cart Is Empty",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Theme.of(context).textSelectionColor,
              fontSize: 36,
              fontWeight: FontWeight.w900),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          "Looks Like You didn't add any thing to cart yer",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: themeCange.darkTheme
                  ? Theme.of(context).disabledColor
                  : ColorConsts.subtitle,
              fontSize: 26,
              fontWeight: FontWeight.w900),
        ),
        SizedBox(height: 20),
        Container(
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.height * 0.06,
          child: RaisedButton(
            onPressed: () {},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
              side: BorderSide(color: Colors.red),
            ),
            color: Colors.redAccent,
            child: Text(
              "shop now".toUpperCase(),
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Theme.of(context).textSelectionColor,
                  fontSize: 26,
                  fontWeight: FontWeight.w900),
            ),
          ),
        ),
      ],
    );
  }
}
