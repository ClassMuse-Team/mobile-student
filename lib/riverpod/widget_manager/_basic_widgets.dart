import 'package:flutter_riverpod/flutter_riverpod.dart';

class VisibilityProvider extends StateNotifier<bool> {
  VisibilityProvider() : super(false);

  void setValue(bool value) => state = value;
}
