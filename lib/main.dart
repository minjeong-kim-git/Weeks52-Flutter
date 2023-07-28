import 'package:flutter/material.dart';
import 'travel_detail_page.dart';

void main() {
  runApp(GridviewPage());
}

class GridviewPage extends StatefulWidget {
  const GridviewPage({Key? key}) : super(key: key);
  static final ValueNotifier<ThemeMode> themeNotifier =
  ValueNotifier(ThemeMode.light);

  @override
  _GridviewPageState createState() => _GridviewPageState();
}

class _GridviewPageState extends State<GridviewPage> {

  //다크모드 함수
  void toggleThemeMode() {
    GridviewPage.themeNotifier.value =
    GridviewPage.themeNotifier.value == ThemeMode.light
        ? ThemeMode.dark
        : ThemeMode.light;
  }

  List<String> movies = [
    "엘리멘탈",
    "밀수",
    "바비",
    "더 문",
    "미션 임파서블: 데드 레코닝",
    "비공식작전",
    "명탐정 코난:흑철의 어영",
    "콘크리트 유토피아",
    "인시디어스: 빨간 문",
    "여름날 우리",
    "헌티드 맨션",
    "몬스터 패밀리 2",
    // 여기에 더 많은 영화 이름 추가
  ];

  //영화에 대한 설명을 저장
  List<String> travelDescription = [
    '불, 물, 공기, 흙 4개의 원소들이 살고 있는 ‘엘리멘트 시티’, 재치 있고 불처럼 열정 넘치는 앰버는 어느 날 우연히 유쾌하고 감성적이며 물 흐르듯 사는 웨이드를 만나 특별한 우정을 쌓으며, 지금껏 믿어온 모든 것들이 흔들리는 새로운 경험을 하게 되는데...',
    '시드니는 호주 최초의 도시이자 최대 도시입니다. 시드니는 뉴 사우스 웨일스(New South Wales, NSW) 주의 주도이며, 멜버른과 함께 호주를 대표하는 도시이자 경제적 중심지입니다. 오페라 하우스, 하버 브릿지를 비롯해 시드니에서 현대적이면서 이국적인 풍경을 만끽하는 것은 어떨까요?',
    '중화인민공화국의 특별행정구인 홍콩은 동양과 서양이 공존하는 독특한 사회를 형성하고 있습니다. 홍콩은 역사적으로 오랫동안 영국의 지배를 받아 동서양이 만나는 관문으로서 역할을 수행했는데요. 현재에도 홍콩은 많은 다국적 기업의 중국 및 아시아 거점 도시로 전 세계에서 중요한 역할을 합니다. 다양한 국적의 사람들과 문화를 접할 수 있는 국제도시 홍콩은 세계적으로 인기 있는 관광지입니다. 관광과 쇼핑의 천국 홍콩에서 여정을 함께해 볼까요?',
    '일본의 수도인 도쿄에 오신 것을 환영합니다. 도쿄는 일본 교통의 중심지이자 다국적 기업의 허브이기도 합니다. 아키하바라, 롯폰기, 신주쿠 등 곳곳에서 만화와 게임을 비롯한 일본의 문화를 즐겨보는 것은 어떨까요?',
    '태국의 수도인 방콕은 "신들의 수도"라는 이름을 갖고 있습니다. 아시아 여행의 허브라고도 불리는 방콕은 볼 거리로 가득한데요. 사원을 비롯한 유적지에서 태국 불교의 정취를 느낄 수 있으며, 푸켓과 같은 휴양지에서는 스노클링 등의 레저를 즐길 수도 있습니다. 관광과 쇼핑의 천국, 방콕에서 만나요!',
    '뉴욕은 세계에서 가장 유명한 대도시죠! 뉴욕은 세계 경제, 문화, 패션의 중심지로 세계의 수도라고 불리기도 하는데요. 월스트리트와 브로드웨이는 세계 금융, 문화의 중심지입니다. 사계절에 열리는 다양한 축제와 퍼레이드, 그리고 다양한 이민자들이 모여 전 세계의 음식을 맛볼 수도 있는데요! 뉴욕 스테이크와 스타벅스 커피를 함께한다면 뉴요커가 된 기분을 느낄 수 있을 거예요!'
  ];

  List<String> genre = [
    '애니메이션',
    '액션',
    '드라마',
    'SF',
    '액션',
    '액션',
    '애니메이션',
    '드라마',
    '공포, 미스터리',
    '로맨스, 드라마',
    '미스터리, 스릴러',
    '애니메이션'
  ];

  // getIndex 메서드를 GridviewPage 클래스에 구현
  int getIndex(String destination) {
    return movies.indexOf(destination);
  }

  static final ValueNotifier<ThemeMode> themeNotifier =
  ValueNotifier(ThemeMode.light);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode> (
      valueListenable: GridviewPage.themeNotifier,
      builder: (_, ThemeMode currentMode, __) {
        return MaterialApp(
          theme: ThemeData.light(),
          darkTheme: ThemeData.dark(),
          themeMode: currentMode,
          home: Scaffold(
            appBar: AppBar(
                title: Text("MJ's Film"),
                actions: [
                  IconButton (
                      onPressed: toggleThemeMode,
                      icon: Icon(
                          currentMode == ThemeMode.light
                          ? Icons.dark_mode
                          : Icons.light_mode,
                      ),
                  )
                ],
            ),
            body: Column(
              children: [
                SizedBox(height: 20), //그리드 위의 공간
                Text (
                  '요즘 인기 있는 영화, 여기 다 있어요!',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.start,
                ),
                Expanded(
                  child: GridView.builder(
                    shrinkWrap: true,
                    itemCount: movies.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      // childAspectRatio: 1.0,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TravelDetailPage(
                                travelDestination: movies[index],
                                imageAssetPath: 'assets/image/movie$index.jpg',
                                travelDescription: travelDescription[index],
                                genre: genre[index],
                              ),
                            ),
                          );
                        },
                        child: Hero (
                          tag: 'movie$index',
                          child: Container(
                            child: Column (
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded (
                                  child: Image.asset(
                                    'assets/image/movie$index.jpg',
                                    width: 500.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text('${movies[index]}'),
                              ],
                        )
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      }
    );
  }
}
