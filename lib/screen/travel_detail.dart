import 'package:flutter/material.dart';

class TravelDetails extends StatelessWidget {
  final String? image;
  const TravelDetails({Key? key, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 7,
            child: Stack(
              children: [
                Hero(
                  tag: image ?? "",
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(60),
                            bottomRight: Radius.circular(60)),
                        image: DecorationImage(
                            image: NetworkImage(image ?? ""),
                            fit: BoxFit.cover)),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(),
          )
        ],
      ),
    );
  }
}
