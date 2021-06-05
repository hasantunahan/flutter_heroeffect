import 'package:flutter/material.dart';
import 'package:hero_effect/model/travelsmodel.dart';

class TravelDetails extends StatelessWidget {
  final TravelModel? data;

  const TravelDetails({
    Key? key,
    this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Shadow> shadow = [
      BoxShadow(color: Colors.black, offset: Offset(1, 1), blurRadius: 5)
    ];
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 7,
            child: newMethodHeroImage(),
          ),
          newMethodBackhandler(context),
          newMethodDescription(context, shadow),
          Expanded(
            flex: 5,
            child: Container(),
          )
        ],
      ),
    );
  }

  Container newMethodDescription(BuildContext context, List<Shadow> shadow) {
    return Container(
      transform: Matrix4.translationValues(
          20, -MediaQuery.of(context).size.height * .18, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(data!.travel ?? "",
              style: TextStyle(color: Colors.white, shadows: shadow)),
          Text(data!.location ?? "",
              style: TextStyle(color: Colors.white, shadows: shadow)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.star, color: Colors.white),
              Text(
                "4.5",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, shadows: shadow),
              )
            ],
          )
        ],
      ),
    );
  }

  Container newMethodBackhandler(BuildContext context) {
    return Container(
        transform: Matrix4.translationValues(
            10, -MediaQuery.of(context).size.height * .4, 0),
        child: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )));
  }

  Hero newMethodHeroImage() {
    return Hero(
      tag: data!.image ?? "",
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(60),
                bottomRight: Radius.circular(60)),
            image: DecorationImage(
                image: NetworkImage(data!.image ?? ""), fit: BoxFit.cover)),
      ),
    );
  }
}
