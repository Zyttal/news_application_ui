import 'package:flutter/material.dart';

class VerticalListItem extends StatelessWidget {
  const VerticalListItem({
    super.key,
    required this.imgURL,
    required this.category,
    required this.header,
    required this.date,
    required this.time,
  });

  final String imgURL, category, header, date, time;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: Image.network(imgURL),
        ),
        SizedBox(
          width: 20,
        ),
        Container(
          width: 200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                category,
                style: TextStyle(fontSize: 10),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                header,
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(children: [
                      Icon(Icons.calendar_month),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        date,
                        style: TextStyle(fontSize: 11),
                      )
                    ]),
                  ),
                  Container(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.timer_rounded),
                          SizedBox(
                            width: 5,
                          ),
                          Text(time,
                              style: TextStyle(
                                fontSize: 11,
                              ))
                        ]),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
