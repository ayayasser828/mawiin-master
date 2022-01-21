import 'package:flutter/material.dart';
import 'package:mawiin/constant/constant.dart';
import 'package:mawiin/models/product.dart';
import 'package:mawiin/screens/main_page2.dart';

class ClassificationsItem extends StatelessWidget {
  final String name;
  final String image;
  final List<Product> products;

  ClassificationsItem({this.name, this.image, this.products});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
              builder: (context) => MainPage2Screen(
                    name: name,
                    products: products,
                  )),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Container(
          height: 124.08,
          width: 113,
          color: Colors.transparent,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                bottom: 0,
                child: Card(
                  color: colorM10,
                  child: Container(
                    height: 81,
                    width: 113,
                  ),
                ),
              ),
              Positioned(
                top: 0,
                child: Container(
                    width: 86.97,
                    height: 86.16,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(
                        image,
                        fit: BoxFit.cover,
                      ),
                    )),
              ),
              Positioned(
                bottom: 10,
                child: Text(
                  name,
                  style: textStyleM8,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
