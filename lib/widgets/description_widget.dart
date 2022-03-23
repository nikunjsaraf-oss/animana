import 'package:flutter/material.dart';

class DescriptionContainer extends StatelessWidget {
  final String description;

  const DescriptionContainer({Key key, this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Text(
            'Synopsis',
            style: TextStyle(
              fontSize: 25,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  description,
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 16, fontFamily: 'Roboto'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
