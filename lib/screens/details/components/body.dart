import 'package:flutter/material.dart';
import 'package:food_app/constants.dart';
import 'package:food_app/screens/details/components/item_image.dart';
import 'package:food_app/screens/details/components/order_button.dart';
import 'package:food_app/screens/details/components/title_price_rating.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        ItemImage(
          imgSrc: "assets/images/burger.png",
        ),
        Expanded(
          child: ItemInfo(),
        )
      ],
    );
  }
}

class ItemInfo extends StatelessWidget {
  const ItemInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            shopeName(name: "Macdonalds"),
            TitlePriceRating(
              price: 15,
              numOfReviews: 24,
              rating: 4,
              name: "Cheese Burger",
              onRatingChanged: (value) {
                print(value);
              },
            ),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam magna odio, ultricies sit amet imperdiet a, mattis id erat. Etiam eget porta neque. Phasellus a nisl id dolor gravida tincidunt. Proin pharetra lectus ac egestas sollicitudin. Sed egestas quam quam, eu efficitur diam pellentesque sit amet. In feugiat metus cursus ligula ullamcorper ornare.',
              style: TextStyle(
                height: 1.5,
              ),
            ),
            SizedBox(height: size.height * 0.1),
            OrderButton(
              size: size,
              press: () {},
            )
          ],
        ),
      ),
    );
  }

  Row shopeName({String name}) {
    return Row(
      children: <Widget>[
        Icon(
          Icons.location_on,
          color: kSecondaryColor,
        ),
        SizedBox(width: 10),
        Text(name)
      ],
    );
  }
}
