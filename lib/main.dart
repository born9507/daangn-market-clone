import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: false,
          elevation: 0.5,
          title: Row(
            children: [
              Text(
                '중앙동',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Icon(
                Icons.keyboard_arrow_down_rounded,
                color: Colors.black,
              )
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(CupertinoIcons.search, color: Colors.black),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu_rounded, color: Colors.black),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(CupertinoIcons.bell, color: Colors.black),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView.separated(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        'https://cdn.pocket-lint.com/r/s/970x/assets/images/158444-phones-review-apple-iphone-13-review-images-image1-clh15n2ocg.jpg',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'M1 아이패드 프로 11형(3세대) 와이파이 128G 팝니다.',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                            softWrap: false,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(height: 2),
                          Text(
                            '봉천동 · 6분 전',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black45,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            '100만원',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) {
              return Divider();
            },
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Color(0xFFFF7E36),
          elevation: 1,
          child: Icon(
            Icons.add_rounded,
            size: 36,
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.black,
          unselectedItemColor: Colors.black,
          showUnselectedLabels: true,
          selectedFontSize: 12,
          unselectedFontSize: 12,
          iconSize: 28,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: '홈',
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.my_library_books_outlined),
              label: '동네생활',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.fmd_good_outlined),
              label: '내 근처',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.chat_bubble_2),
              label: '채팅',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
              ),
              label: '나의 당근',
            ),
          ],
          currentIndex: 0,
        ),
      ),
    );
  }
}
