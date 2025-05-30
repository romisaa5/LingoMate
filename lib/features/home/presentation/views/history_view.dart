import 'package:flutter/material.dart';
import 'package:google_transalate/core/theme/text_theme.dart';
import 'package:google_transalate/features/home/presentation/widgets/history_item.dart';

class HistoryView extends StatelessWidget {
  const HistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 10),
          Center(
            child: Text(
              'History View',
              style: Styles.textStyle20.copyWith(color: Colors.black),
            ),
          ),
          SizedBox(height: 10),
          ListTile(
            leading: Icon(Icons.history, color: Colors.black),
            title: Text(
              'Your Translation History',
              style: Styles.textStyle12.copyWith(color: Colors.black54),
            ),
            trailing: TextButton(onPressed: (){}, child: Text('Clear All', style: Styles.textStyle12.copyWith(color: Colors.red,
              fontWeight: FontWeight.bold)) 
          ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10, // Example item count
              itemBuilder: (context, index) {
                return HistoryItem();
              },
            ),
          ),
        ],
      ),
    );
  }
}
