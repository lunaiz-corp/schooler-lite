import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'mediaquery_provider.dart';

class MediaQueryUpdater extends ConsumerWidget {
  const MediaQueryUpdater({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // MediaQueryData를 가져와서 Provider에 업데이트
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final mediaQueryData = MediaQuery.of(context);
      ref.read(mediaQueryProvider.notifier).state = mediaQueryData;
    });

    return const SizedBox
        .shrink(); // 빈 컨테이너 대신 SizedBox.shrink()를 사용하여 렌더링하지 않도록 함
  }
}
