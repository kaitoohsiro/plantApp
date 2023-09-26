import 'package:flutter/material.dart';

import '../../../contstants.dart';
import 'body.dart';

class TitleWithMoreBtn extends StatelessWidget {
  const TitleWithMoreBtn({super.key, required this.title});

  final String title;
  // final Function press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          TitleWithCustomUnderline(text: title),
          Spacer(),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: kPrimaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            onPressed: () => {print("tst")},
            child: const Text(
              "More",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
