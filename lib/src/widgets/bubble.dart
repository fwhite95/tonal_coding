import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tonal_coding/src/styles.dart';

class BubbleWidget extends StatefulWidget {
  BubbleWidget({
    required this.label,
    required this.weight,
    required this.unit,
  });

  final String label;
  final int weight;
  final String unit;

  @override
  _BubbleWidgetState createState() => _BubbleWidgetState();
}

class _BubbleWidgetState extends State<BubbleWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: bubbleDiameter.toDouble(),
          width: bubbleDiameter.toDouble(),
          decoration: bubbleBoxDecoration,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.label,
                style: labelTextStyle,
              ),
              Text(
                widget.weight.toString(),
                style: weightTextStyle,
              ),
              Text(
                widget.unit,
                style: unitTextStyle,
              ),
            ],
          ),
        ),
        Container(
          child: SvgPicture.asset(
            "lib/assets/graph.svg",
            alignment: Alignment.center,
          ),
        ),
      ],
    );
  }
}
