import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/widgets.dart';

// MediaQueryData를 저장할 Provider
final mediaQueryProvider = StateProvider<MediaQueryData>((ref) {
  // 기본값으로 빈 MediaQueryData를 제공
  return const MediaQueryData();
});
