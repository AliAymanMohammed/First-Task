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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Row(
                    children: [
                      SizedBox(
                        child: Row(
                          children: [
                            Text(
                              authorName.length > 20 ? 'Too long' : authorName,
                              maxLines: 1,
                              overflow: TextOverflow.visible,
                              style: TextStyle(
                                color: primaryColor,
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .fontSize,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  color: primaryColor,
                                  borderRadius: BorderRadius.circular(8)),
                              child: const Icon(
                                Icons.visibility,
                                size: 14,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                      const Spacer(),
                      Text(
                        'اجازة مرضية',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20, right: 30),
                  child: Divider(
                    color: Colors.grey,
                    thickness: 0.5,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      " : تاريخ انتهاء الاجازة",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      '18 Nov 2022',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    Text(
                      ":السبب",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    Text(
                      "test vacation",
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ],
                ),
                const SizedBox(
                  width: 110,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      " : تاريخ بدء الاجازة",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      '16 Nov 2022',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    Text(
                      ": اجمالي عدد الايام ",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    Text(
                      "2",
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
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
