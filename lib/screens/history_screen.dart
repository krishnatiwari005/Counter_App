import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('History'),
        centerTitle: true,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: 10, // later connect to real data
        separatorBuilder: (_, __) => const SizedBox(height: 12),
        itemBuilder: (context, index) {
          return _historyTile(
            date: 'Day ${index + 1}',
            count: 108 + index * 5,
          );
        },
      ),
    );
  }




  Widget _historyTile({
    required String date,
    required int count,
  }) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.brown.shade100,
          child: const Icon(
            Icons.circle,
            size: 14,
            color: Colors.brown,
          ),
        ),
        title: Text(
          date,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        subtitle: const Text('Completed Jap'),
        trailing: Text(
          '$count',
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
