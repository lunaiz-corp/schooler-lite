import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:schooler_lite/utils/mediaquery/mediaquery_updater.dart';
import 'package:schooler_lite/utils/mediaquery/mediaquery_provider.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mediaQueryData = ref.watch(mediaQueryProvider);
    return Scaffold(
      backgroundColor: const Color(0xfff9f9f9),
      body: Container(
        margin: EdgeInsets.only(
          left: 24.w,
          right: 24.w,
          top: mediaQueryData.padding.top + 20,
          bottom: mediaQueryData.padding.bottom + 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const MediaQueryUpdater(),
            SizedBox(
              width: mediaQueryData.size.width,
            ),
            SizedBox(
              height: 20.h,
            ),
            SvgPicture.asset('assets/svg/schooler_logo.svg', height: 40.h),
            SizedBox(
              height: 60.h,
            ),
            Row(
              children: [
                Text(
                  '${DateTime.now().year}년 ${DateTime.now().month}월 ${DateTime.now().day}일 금요일',
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 40,
                        child: Text('조회'),
                      ),
                      SizedBox(
                        width: 200,
                      ),
                      SizedBox(
                        width: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('김소영'),
                            SizedBox(
                              width: 20,
                            ),
                            Text('3-6'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: Color(0xffFFE185),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 40,
                        child: Text('1교시'),
                      ),
                      SizedBox(
                        width: 200,
                        child: Text('미적분(D3)'),
                      ),
                      SizedBox(
                        width: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('민진원'),
                            SizedBox(
                              width: 20,
                            ),
                            Text('3-5'),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 40,
                        child: Text(''),
                      ),
                      SizedBox(
                        width: 200,
                        child: Text('08:30 - 09:20 (17min left)'),
                      ),
                      SizedBox(
                        width: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(''),
                            SizedBox(
                              width: 20,
                            ),
                            Text(''),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 40,
                      ),
                      SizedBox(
                        width: 200,
                        child: Text('사용자 메모 없음'),
                      ),
                      SizedBox(
                        width: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(''),
                            SizedBox(
                              width: 20,
                            ),
                            Text(''),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 40,
                        child: Text('2교시'),
                      ),
                      SizedBox(
                        width: 200,
                        child: Text('인공지능수학(E3)'),
                      ),
                      SizedBox(
                        width: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('이성재'),
                            SizedBox(
                              width: 20,
                            ),
                            Text('3-7'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
