import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

Widget cardLoading(BuildContext context, String message) {
  return (AlertDialog(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    title: Text(message, style: Theme.of(context).textTheme.headline6),
    content: SizedBox(
      height: 90,
      width: 90,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 30,
            width: 30,
            child: CircularProgressIndicator(
              strokeWidth: 2,
              valueColor:
                  AlwaysStoppedAnimation<Color>(Theme.of(context).primaryColor),
            ),
          ),
        ],
      ),
    ),
  ));
}
