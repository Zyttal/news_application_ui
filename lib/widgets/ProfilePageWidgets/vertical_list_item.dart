import 'package:flutter/material.dart';

class VerticalListItem extends StatelessWidget {
  const VerticalListItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: Image.network(
              'https://res.cloudinary.com/dbwwffypj/image/upload/v1698290594/News_Application_UI_Assets/Vector-10_xhxoyt.png'),
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
                "News: Politics",
                style: TextStyle(fontSize: 10),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Iran's raging protests\nFifth Iranian paramilitary me...",
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
                        "16th May",
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
                          Text("09:32 pm",
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
