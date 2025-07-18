import 'package:flutter/material.dart';
import 'dart:async';

class TypingText extends StatefulWidget {
  final String text;
  final TextStyle? textStyle;
  final Duration typingSpeed;
  final Duration pauseDuration;
  final bool writeOnce;

  const TypingText({
    super.key,
    required this.text,
    this.textStyle,
    this.typingSpeed = const Duration(milliseconds: 500),
    this.pauseDuration = const Duration(milliseconds: 1000),
    this.writeOnce = false,
  });

  @override
  State<TypingText> createState() => _TypingTextState();
}

class _TypingTextState extends State<TypingText> {
  String displayedText = '';
  int currentIndex = 0;
  bool isDeleting = false;
  late Timer typingTimer;
  Timer? cursorTimer; // ✅ مؤقت المؤشر
  bool showCursor = true;

  @override
  void initState() {
    super.initState();
    startTyping();
    startCursorBlink();
  }

  void startTyping() {
    typingTimer = Timer.periodic(widget.typingSpeed, (timer) {
      if (!mounted) return;
      setState(() {
        if (!isDeleting) {
          if (currentIndex < widget.text.length) {
            displayedText += widget.text[currentIndex];
            currentIndex++;
          } else {
            if (widget.writeOnce) {
              typingTimer.cancel();
              stopCursor(); // ✅ إيقاف المؤشر بعد الكتابة
              return;
            }

            typingTimer.cancel();
            Future.delayed(widget.pauseDuration, () {
              isDeleting = true;
              startTyping();
            });
          }
        } else {
          if (displayedText.isNotEmpty) {
            displayedText = displayedText.substring(
              0,
              displayedText.length - 1,
            );
          } else {
            isDeleting = false;
            currentIndex = 0;
          }
        }
      });
    });
  }

  void startCursorBlink() {
    cursorTimer = Timer.periodic(const Duration(milliseconds: 500), (timer) {
      if (!mounted) return;
      setState(() => showCursor = !showCursor);
    });
  }

  void stopCursor() {
    cursorTimer?.cancel();
    setState(() => showCursor = false);
  }

  @override
  void dispose() {
    typingTimer.cancel();
    cursorTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      displayedText + (showCursor ? '|' : ''),
      style:
          widget.textStyle ??
          const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    );
  }
}
