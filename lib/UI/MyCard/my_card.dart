import 'package:flutter/material.dart';
import 'package:test/Colors/colors.dart';

class MyCard extends StatelessWidget {
  const MyCard({
    required this.authorName,
    required this.sourceName,
    Key? key,
  }) : super(key: key);
  final String authorName;
  final String sourceName;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  'Sick leave',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                const Spacer(),
                SizedBox(
                  child: Row(
                    children: [
                      Text(
                        authorName.length > 20 ? 'Too long' : authorName,
                        maxLines: 1,
                        overflow: TextOverflow.visible,
                        style: TextStyle(
                          color: primaryColor,
                          fontSize:
                              Theme.of(context).textTheme.bodyText1!.fontSize,
                        ),
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Icon(
                        Icons.visibility,
                        size: 14,
                        color: primaryColor,
                      )
                    ],
                  ),
                ),
              ],
            ),
            const Divider(),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Start Date",
                    ),
                    Text('21/11/2022'),
                    Text("Total Days"),
                    Text(sourceName),
                  ],
                ),
                const Spacer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("End Date :"),
                    Text('22/11/2022'),
                    Text("Reason :"),
                    Text("test"),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
