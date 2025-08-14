import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FlexibleExample extends StatelessWidget {
  const FlexibleExample({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flexible Widgets Example')),
      body: Column(
        children: [
          // Flexible space distribution
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 100.h,
                  color: Colors.blue,
                  child: const Center(child: Text('Expanded 1')),
                ),
              ),
              Expanded(
                child: Container(
                  height: 100.h,
                  color: Colors.green,
                  child: const Center(child: Text('Expanded 2')),
                ),
              ),
              Flexible(
                flex: 2, // Takes double space compared to others
                child: Container(
                  height: 100.h,
                  color: Colors.orange,
                  child: const Center(child: Text('Flexible')),
                ),
              ),
            ],
          ),
          16.verticalSpace,
          // Scrollable layout with GridView
          Expanded(
            child: GridView.builder(
              itemCount: 12,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, // 3 items per row
                childAspectRatio: 1, // Square tiles
              ),
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.teal[(index % 9 + 1) * 100],
                  child: Center(
                    child: Text(
                      'Item $index',
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
