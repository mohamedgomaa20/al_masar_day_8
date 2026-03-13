import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class CustomPinPut extends StatelessWidget {
  const CustomPinPut({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),

      child: Pinput(
        defaultPinTheme: defaultPinTheme(),
        length: 6,
        validator: (value) {
          return value == "100241" ? null : "كود غير صحيح";
        },
        errorTextStyle: TextStyle(
          fontFamily: "Cairo",
          fontSize: 16,
          color: Colors.redAccent,
          fontWeight: .w600,
        ),
        onCompleted: (pin) {
          debugPrint('onCompleted: $pin');
        },
        onChanged: (value) {
          debugPrint('onChanged: $value');
        },
        // cursor: Column(
        //   mainAxisAlignment: MainAxisAlignment.end,
        //   children: [
        //     Container(
        //       margin: EdgeInsets.only(bottom: 9),
        //       width: 22,
        //       height: 1,
        //       color: focusedBorderColor,
        //     ),
        //   ],
        // ),
        // focusedPinTheme: defaultPinTheme.copyWith(
        //   decoration: defaultPinTheme.decoration!.copyWith(
        //     borderRadius: BorderRadius.circular(8),
        //     border: Border.all(color: focusedBorderColor),
        //   ),
        // ),
        // submittedPinTheme: defaultPinTheme.copyWith(
        //   decoration: defaultPinTheme.decoration!.copyWith(
        //     color: fillColor,
        //     borderRadius: BorderRadius.circular(19),
        //     border: Border.all(color: focusedBorderColor),
        //   ),
        // ),
        // errorPinTheme: defaultPinTheme.copyBorderWith(
        //   border: Border.all(color: Colors.redAccent),
        // ),
      ),
    );
  }

  PinTheme defaultPinTheme() => PinTheme(
    width: 56,
    height: 65,
    textStyle: TextStyle(
      fontFamily: "Tajawal",
      fontSize: 22,
      fontWeight: .w600,
      color: Color(0xff1380A5),
    ),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(7),
      border: Border.all(color: Colors.white),
    ),
  );
}
