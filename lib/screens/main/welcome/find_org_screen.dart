import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile_student/main.dart';

class FindOrgScreen extends ConsumerWidget {
  FindOrgScreen({
    super.key,
  });

  final _future = supabase.from('classes').select<List<Map<String, dynamic>>>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FutureBuilder<List<Map<String, dynamic>>>(
              future: _future,
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return const Center(child: CircularProgressIndicator());
                }
                final classes = snapshot.data!;
                debugPrint("$classes");
                return ListView.builder(
                  itemCount: classes.length,
                  itemBuilder: ((context, index) {
                    final className = classes[index];
                    return Column(
                      children: [
                        Text(className['name']),
                        Text(className['description']),
                        const SizedBox(height: 40),
                      ],
                    );
                  }),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
