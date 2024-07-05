import 'package:flutter/material.dart';
import 'package:webtoon_app/screens/detail_screen.dart';

class Webtoon extends StatelessWidget {
  final String title, thumb, id;
  const Webtoon({
    super.key,
    required this.title,
    required this.thumb,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    // GestureDetector 사용자의 동작 감지
    return GestureDetector(
      onTap: () {
        //
        Navigator.push(
          context,
          // 애니메이션 효과를 넣을 수 있는 builder
          PageRouteBuilder(
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              var begin = const Offset(1.0, 0.0);
              var end = Offset.zero;
              var curve = Curves.ease;
              var tween =
                  Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
              return SlideTransition(
                position: animation.drive(tween),
                child: child,
              );
            },
            pageBuilder: (context, anmation, secondaryAnimation) =>
                DetailScreen(id: id, title: title, thumb: thumb),
          ),
        );
      },
      child: Column(
        children: [
          Container(
            width: 250,
            // 아래 설정해야 List에 border가 입혀짐
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  blurRadius: 15,
                  offset: const Offset(10, 10),
                  color: Colors.black.withOpacity(0.5),
                ),
              ],
            ),
            child: Image.network(
              thumb,
              // 헤더 이슈때문에 넣어야 정상적으로 호출됨.
              headers: const {
                'User-Agent':
                    'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36',
                'Referer': 'https://comic.naver.com',
              },
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
