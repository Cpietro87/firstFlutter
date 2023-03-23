import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MultiSwitch extends StatefulWidget {
  const MultiSwitch({super.key});

  @override
  State<MultiSwitch> createState() => _MultiSwitchState();
}

class _MultiSwitchState extends State<MultiSwitch> {
  bool val1 = true;
  bool val2 = false;
  bool val3 = false;


  onChangeFunction1(bool newValue1) {
    setState(() {
      val1 = newValue1;
    });
  }

  onChangeFunction2(bool newValue2) {
    setState(() {
      val2 = newValue2;
    });
  }

  onChangeFunction3(bool newValue3) {
    setState(() {
      val3 = newValue3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            customSwitch('ABC', val1, onChangeFunction1),
            customSwitch('DEF', val2, onChangeFunction2),
            customSwitch('zxc', val3, onChangeFunction3),
          ],
        ),
      ),
    );
  }

  Widget customSwitch(String text, bool val, Function onChangeMethod) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, left: 6.0, right: 6.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          text,
          style: const TextStyle(
              fontSize: 20.0,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w600,
              color: Colors.black),
        ),
        const Spacer(),
        CupertinoSwitch(
            value: val,
            onChanged: (newValue) {
              onChangeMethod(newValue);
            }),
      ]),
    );
  }
}
