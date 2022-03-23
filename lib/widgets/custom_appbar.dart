import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final double scrollOffset;
  final String title;

  const CustomAppBar({
    Key key,
    this.scrollOffset,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 10,
      ),
      color: Colors.black.withOpacity(
        (scrollOffset / 350).clamp(0, 1).toDouble(),
      ),
      child: SafeArea(
        child: Row(
          children: [
            Image.asset('assets/images/Animana_logo.png'),
            SizedBox(
              width: 5,
            ),
            Expanded(
              child: Container(
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 35,
                    fontFamily: 'ZenDots',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
