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
        const SizedBox(
          width: 20,
        ),
        SizedBox(
          width: 200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                category,
                style: const TextStyle(fontSize: 10),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                header,
                style: const TextStyle(fontSize: 14),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    const Icon(Icons.calendar_month),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      date,
                      style: const TextStyle(fontSize: 11),
                    )
                  ]),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(Icons.timer_rounded),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(time,
                            style: const TextStyle(
                              fontSize: 11,
                            ))
                      ])
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
