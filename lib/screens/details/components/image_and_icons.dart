import 'package:flutter/material.dart';
import 'package:flutter_skill_development/constants.dart';
import 'package:flutter_skill_development/screens/details/components/icon_card.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ImageAndIcons extends StatelessWidget {
  const ImageAndIcons({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding * 3),
      child: SizedBox(
        height: size.height * 0.8,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: kDefaultPadding * 3,
                ),
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        padding: const EdgeInsets.symmetric(
                            horizontal: kDefaultPadding),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: SvgPicture.asset("assets/icons/back_arrow.svg"),
                      ),
                    ),
                    const Spacer(),
                    const IconCard(icon: "assets/icons/sun.svg"),
                    const IconCard(icon: "assets/icons/temperature.svg"),
                    const IconCard(icon: "assets/icons/humidity.svg"),
                    const IconCard(icon: "assets/icons/wind.svg"),
                  ],
                ),
              ),
            ),
            Container(
              height: size.height * 0.8,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(63),
                  bottomLeft: Radius.circular(63),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 60,
                    color: kPrimaryColor.withOpacity(0.29),
                  )
                ],
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  alignment: Alignment.centerLeft,
                  image: AssetImage("assets/images/img.jpg"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
