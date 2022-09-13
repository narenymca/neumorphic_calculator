import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class RoundedButton extends StatefulWidget {
  final String buttonText;
  final Color colorText;
  final VoidCallback onPressed;
  final NeumorphicBoxShape buttonBoxShape;
  final double buttonWidth;

  RoundedButton({
    Key? key,
    required this.buttonText,
    required this.colorText,
    required this.onPressed,
    required this.buttonBoxShape,
    required this.buttonWidth,
  }) : super(key: key);

  @override
  State<RoundedButton> createState() => _RoundedButtonState();
}

class _RoundedButtonState extends State<RoundedButton> {
  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
      onPressed: widget.onPressed,
      style: NeumorphicStyle(
        shape: NeumorphicShape.concave,
        depth: 6,
        shadowDarkColor: Colors.grey.shade500,
        lightSource: LightSource.topLeft,
        color: Color(0xFFEDEBEC),
        boxShape: widget.buttonBoxShape,
        //intensity: 12,
        //shadowLightColor: Colors.grey,
      ),
      child: Container(
        height: MediaQuery.of(context).size.height / 12,
        width: MediaQuery.of(context).size.width / widget.buttonWidth,
        child: Center(
          child: Text(
            widget.buttonText,
            style: TextStyle(
              color: widget.colorText,
              fontSize: 23,
              fontFamily: 'Montserrat',
            ),
          ),
        ),
      ),
    );
  }
}
