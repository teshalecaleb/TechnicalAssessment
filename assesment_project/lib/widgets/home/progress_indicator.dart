import 'package:assesment_project/utils/theme/app_theme.dart';
import 'package:flutter/material.dart';

class PlayProgressIndicator extends StatefulWidget {
  const PlayProgressIndicator({super.key});

  @override
  State<PlayProgressIndicator> createState() => _PlayProgressIndicatorState();
}

class _PlayProgressIndicatorState extends State<PlayProgressIndicator>
    with TickerProviderStateMixin {
  late AnimationController controller;
  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    )..addListener(() {
        setState(() {});
      });
    controller.repeat();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      value: controller.value,
      backgroundColor: const Color(0xff504c57),
      valueColor: const AlwaysStoppedAnimation<Color>(AppTheme.cardDetailColor),
    );
  }
}
