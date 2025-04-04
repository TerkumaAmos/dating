import 'package:flutter/material.dart';

class BottomSheet extends StatefulWidget {
  const BottomSheet({super.key});

  @override
  State<BottomSheet> createState() => _BottomSheetState();
}

class _BottomSheetState extends State<BottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              _showBottomSheet(context);
            },
            child: Text("lol")),
      ),
    );
  }

  void _showBottomSheet(BuildContext context) {}
}
