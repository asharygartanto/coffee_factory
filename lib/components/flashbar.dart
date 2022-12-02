import 'package:flutter/material.dart';
import 'package:flash/flash.dart';

/**
 * ashary.gartanto@gmail.com
 * showflashbar component for messaging
 */
void ShowFlashBar(context, String message) {
  showFlash(
    context: context,
    duration: const Duration(seconds: 3),
    builder: (_, controller) {
      return Flash(
        controller: controller,
        behavior: FlashBehavior.floating,
        position: FlashPosition.bottom,
        borderRadius: BorderRadius.circular(8.0),
        borderColor: Colors.blue,
        // ignore: prefer_const_constructors
        backgroundGradient: LinearGradient(
          colors: const [Colors.green, Colors.teal],
        ),
        forwardAnimationCurve: Curves.easeInCirc,
        reverseAnimationCurve: Curves.bounceIn,
        child: DefaultTextStyle(
          style: const TextStyle(color: Colors.white),
          child: FlashBar(
            title: const Text('Coffe Added'),
            content: Text(message),
            //indicatorColor: Colors.green,
            // ignore: prefer_const_constructors
            icon: Icon(
              Icons.info_outline_rounded,
              color: Colors.white,
            ),
            primaryAction: TextButton(
              onPressed: () => controller.dismiss(),
              child:
                  const Text('DISMISS', style: TextStyle(color: Colors.white)),
            ),
          ),
        ),
      );
    },
  );
}
