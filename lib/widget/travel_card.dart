import 'package:flutter/material.dart';
import 'package:hero_effect/model/travelsmodel.dart';
import 'package:hero_effect/screen/travel_detail.dart';

class TravelCard extends StatelessWidget {
  final TravelModel? data;
  const TravelCard({Key? key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) =>
                  TravelDetails(data: data),
            ));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: data!.image ?? "",
              child: Container(
                key: Key(data!.id.toString()),
                width: 240,
                height: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: NetworkImage(data!.image ?? ""),
                        fit: BoxFit.cover)),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.star),
                              Container(
                                color: Colors.white,
                                child: Text(
                                  "4.5",
                                  textAlign: TextAlign.center,
                                ),
                              )
                            ],
                          )),
                      Icon(Icons.bookmark, color: Colors.white)
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
              child: Text(
                data!.travel ?? "",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.location_pin,
                  color: Colors.grey.withOpacity(0.3),
                ),
                Text(data!.location ?? "")
              ],
            )
          ],
        ),
      ),
    );
  }
}
