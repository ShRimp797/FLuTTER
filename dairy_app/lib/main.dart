import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

void main() {
  runApp(MyApp());
}

// ===== MyApp =====
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Diary App',
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

// ===== Login Page =====
class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFEFDFA),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 60),
            Text(
              'My Diary App',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF28231A),
                fontSize: 30,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w700,
                letterSpacing: -0.60,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Welcome!',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF28231A),
                fontSize: 28,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w700,
                letterSpacing: -0.56,
              ),
            ),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  // Email TextField
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 0),
                    decoration: ShapeDecoration(
                      color: Color(0x167E5F24),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                        hintText: 'Email Address',
                        hintStyle: TextStyle(
                          color: Color(0x9E2E2513),
                          fontSize: 17,
                          fontFamily: 'Public Sans',
                          fontWeight: FontWeight.w400,
                          height: 1.35,
                          letterSpacing: -0.09,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  // Password TextField
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 0),
                    decoration: ShapeDecoration(
                      color: Color(0x167E5F24),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: TextField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: TextStyle(
                          color: Color(0x9E2E2513),
                          fontSize: 17,
                          fontFamily: 'Public Sans',
                          fontWeight: FontWeight.w400,
                          height: 1.35,
                          letterSpacing: -0.09,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  // Login Button
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MainPage()),
                      );
                    },
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      alignment: Alignment.center,
                      decoration: ShapeDecoration(
                        color: Color(0xFFF3D7A4),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(48),
                        ),
                      ),
                      child: Text(
                        'Login',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontFamily: 'Public Sans',
                          fontWeight: FontWeight.w500,
                          height: 1.35,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  // Forgot Password Button
                  Container(
                    height: 50,
                    width: double.infinity,
                    alignment: Alignment.center,
                    decoration: ShapeDecoration(
                      color: Color(0x167E5F24),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(48),
                      ),
                    ),
                    child: Text(
                      'Forgot Password',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF28231A),
                        fontSize: 17,
                        fontFamily: 'Public Sans',
                        fontWeight: FontWeight.w500,
                        height: 1.35,
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  // Sign Up Button
                  Container(
                    height: 50,
                    width: double.infinity,
                    alignment: Alignment.center,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 0.5,
                          color: Color(0x336D6149),
                        ),
                        borderRadius: BorderRadius.circular(48),
                      ),
                    ),
                    child: Text(
                      'Sign Up',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF28231A),
                        fontSize: 17,
                        fontFamily: 'Public Sans',
                        fontWeight: FontWeight.w500,
                        height: 1.35,
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  // Social Buttons
                  Column(
                    children: [
                      Container(
                        height: 50,
                        width: double.infinity,
                        alignment: Alignment.center,
                        decoration: ShapeDecoration(
                          color: Color(0xFF3A63ED),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(48),
                          ),
                        ),
                        child: Text(
                          'Continue with Facebook',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontFamily: 'Public Sans',
                            fontWeight: FontWeight.w500,
                            height: 1.35,
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      Container(
                        height: 50,
                        width: double.infinity,
                        alignment: Alignment.center,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 0.5,
                              color: Color(0x336D6149),
                            ),
                            borderRadius: BorderRadius.circular(48),
                          ),
                        ),
                        child: Text(
                          'Continue with Google',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF28231A),
                            fontSize: 17,
                            fontFamily: 'Public Sans',
                            fontWeight: FontWeight.w500,
                            height: 1.35,
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      Container(
                        height: 50,
                        width: double.infinity,
                        alignment: Alignment.center,
                        decoration: ShapeDecoration(
                          color: Color(0xFFF3D7A4),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(48),
                          ),
                        ),
                        child: Text(
                          'Continue with Apple',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF040300),
                            fontSize: 17,
                            fontFamily: 'Public Sans',
                            fontWeight: FontWeight.w500,
                            height: 1.35,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 60),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ===== Main Page =====
class MainPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(minHeight: 852),
          child: Container(
            width: 500,
            color: const Color(0xFFFFFBFA),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              
                // 제목, 날짜
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 80, 20, 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'A Day in Paris',
                        style: TextStyle(
                          color: const Color(0xFF1A2228),
                          fontSize: 28,
                          fontFamily: 'Domine',
                          fontWeight: FontWeight.w700,
                          letterSpacing: -0.56,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'October 5, 2023',
                        style: TextStyle(
                          color: const Color(0x9E13232E),
                          fontSize: 15,
                          fontFamily: 'Outfit',
                          fontWeight: FontWeight.w400,
                          height: 1.35,
                        ),
                      ),
                    ],
                  ),
                ),
  
                // 상단 입력 텍스트 바
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Diary Entry',
                      hintStyle: TextStyle(
                        color: const Color(0xFF1A2228),
                        fontSize: 17,
                        fontFamily: 'Domine',
                        fontWeight: FontWeight.w700,
                        letterSpacing: -0.34,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),

               
            
                // 본문
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Text(
                    '오늘 나는 에펠탑을 방문했다. 날씨는 화창했고, 꼭대기에서 바라본 풍경은 정말 숨이 멎을 만큼 아름다웠다. 나는 행복과 만족감을 느꼈다.',
                    style: TextStyle(
                      color: const Color(0x9E13232E),
                      fontSize: 17,
                      fontFamily: 'Outfit',
                      fontWeight: FontWeight.w400,
                      height: 1.35,
                    ),
                  ),
                ),
                // 상단 이미지 추가
                ConstrainedBox(
                  constraints: BoxConstraints(minWidth: 370),
                  child: Container(
                    width: double.infinity,
                    height: 176,
                    clipBehavior: Clip.antiAlias,
                    
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/test4.jpg'),
                        fit: BoxFit.cover,

                      ),
                    ),
                  ),
                ),

                // 이미지 두 개 가로 정렬
                Row(
                  children: [
                    ConstrainedBox(
                      constraints: BoxConstraints(minWidth: 128),
                      child: Container(
                        width: 137,
                        height: 176,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/test2.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 12), // 이미지 사이 간격
                    ConstrainedBox(
                      constraints: BoxConstraints(minWidth: 128),
                      child: Container(
                        width: 350,
                        height: 176,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/test3.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                // 날씨 정보
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Paris',
                        style: TextStyle(
                          color: const Color(0xFF1A2228),
                          fontSize: 18,
                          fontFamily: 'Domine',
                          fontWeight: FontWeight.w700,
                          letterSpacing: -0.36,
                        ),
                      ),
                      Text(
                        '22°C',
                        style: TextStyle(
                          color: const Color(0xFF1A2228),
                          fontSize: 48,
                          fontFamily: 'Domine',
                          fontWeight: FontWeight.w700,
                          letterSpacing: -0.96,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                '25°C',
                                style: TextStyle(
                                  color: const Color(0xFF1A2228),
                                  fontSize: 18,
                                  fontFamily: 'Domine',
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: -0.36,
                                ),
                              ),
                              SizedBox(width: 10),
                              Text(
                                '15°C',
                                style: TextStyle(
                                  color: const Color(0xFF1A2228),
                                  fontSize: 18,
                                  fontFamily: 'Domine',
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: -0.36,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'Sunny',
                            style: TextStyle(
                              color: const Color(0xFF1A2228),
                              fontSize: 18,
                              fontFamily: 'Domine',
                              fontWeight: FontWeight.w700,
                              letterSpacing: -0.36,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 80),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.push(context, MaterialPageRoute(builder: (_) => Page1()));
              break;
            case 1:
              Navigator.push(context, MaterialPageRoute(builder: (_) => Page2()));
              break;
            case 2:
              Navigator.push(context, MaterialPageRoute(builder: (_) => Page4()));
              break;
            
            
          }
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Likes'),
          
        ],
      ),
    );
  }
}

// ===== Sample Pages =====
class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(minHeight: 852),
          child: Container(
            width: 500,
            color: const Color(0xFFFFFBFA),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              
                // 제목, 날짜
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 80, 20, 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'A Day in Paris',
                        style: TextStyle(
                          color: const Color(0xFF1A2228),
                          fontSize: 28,
                          fontFamily: 'Domine',
                          fontWeight: FontWeight.w700,
                          letterSpacing: -0.56,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'October 5, 2023',
                        style: TextStyle(
                          color: const Color(0x9E13232E),
                          fontSize: 15,
                          fontFamily: 'Outfit',
                          fontWeight: FontWeight.w400,
                          height: 1.35,
                        ),
                      ),
                    ],
                  ),
                ),
  
                // 상단 입력 텍스트 바
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Diary Entry',
                      hintStyle: TextStyle(
                        color: const Color(0xFF1A2228),
                        fontSize: 17,
                        fontFamily: 'Domine',
                        fontWeight: FontWeight.w700,
                        letterSpacing: -0.34,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),

               
            
                // 본문
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Text(
                    'Today I visited the Eiffel Tower. It was a beautiful sunny day, and the view from the top was breathtaking. I felt a sense of happiness and fulfillment.',
                    style: TextStyle(
                      color: const Color(0x9E13232E),
                      fontSize: 17,
                      fontFamily: 'Outfit',
                      fontWeight: FontWeight.w400,
                      height: 1.35,
                    ),
                  ),
                ),
                // 상단 이미지 추가
                ConstrainedBox(
                  constraints: BoxConstraints(minWidth: 370),
                  child: Container(
                    width: double.infinity,
                    height: 176,
                    clipBehavior: Clip.antiAlias,
                    
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/test4.jpg'),
                        fit: BoxFit.cover,

                      ),
                    ),
                  ),
                ),

                // 이미지 두 개 가로 정렬
                Row(
                  children: [
                    ConstrainedBox(
                      constraints: BoxConstraints(minWidth: 128),
                      child: Container(
                        width: 137,
                        height: 176,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/test2.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 12), // 이미지 사이 간격
                    ConstrainedBox(
                      constraints: BoxConstraints(minWidth: 128),
                      child: Container(
                        width: 350,
                        height: 176,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/test3.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                // 날씨 정보
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Paris',
                        style: TextStyle(
                          color: const Color(0xFF1A2228),
                          fontSize: 18,
                          fontFamily: 'Domine',
                          fontWeight: FontWeight.w700,
                          letterSpacing: -0.36,
                        ),
                      ),
                      Text(
                        '22°C',
                        style: TextStyle(
                          color: const Color(0xFF1A2228),
                          fontSize: 48,
                          fontFamily: 'Domine',
                          fontWeight: FontWeight.w700,
                          letterSpacing: -0.96,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                '25°C',
                                style: TextStyle(
                                  color: const Color(0xFF1A2228),
                                  fontSize: 18,
                                  fontFamily: 'Domine',
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: -0.36,
                                ),
                              ),
                              SizedBox(width: 10),
                              Text(
                                '15°C',
                                style: TextStyle(
                                  color: const Color(0xFF1A2228),
                                  fontSize: 18,
                                  fontFamily: 'Domine',
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: -0.36,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'Sunny',
                            style: TextStyle(
                              color: const Color(0xFF1A2228),
                              fontSize: 18,
                              fontFamily: 'Domine',
                              fontWeight: FontWeight.w700,
                              letterSpacing: -0.36,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 80),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.push(context, MaterialPageRoute(builder: (_) => Page1()));
              break;
            case 1:
              Navigator.push(context, MaterialPageRoute(builder: (_) => Page2()));
              break;
            case 2:
              Navigator.push(context, MaterialPageRoute(builder: (_) => Page4()));
              break;
           
          }
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today), label: 'Calendar'),
          BottomNavigationBarItem(icon: Icon(Icons.note_add), label: 'Dairy'),
          
        ],
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 상태를 관리할 ValueNotifier
    final selectedDay = ValueNotifier<DateTime>(DateTime.now());
    final events = <DateTime, List<String>>{};
    final memoController = TextEditingController();

    List<String> getEventsForDay(DateTime day) {
      return events[DateTime(day.year, day.month, day.day)] ?? [];
    }

    void addEvent() {
      final event = memoController.text;
      if (event.isEmpty) return;
      final key = DateTime(selectedDay.value.year, selectedDay.value.month, selectedDay.value.day);
      if (events[key] != null) {
        events[key]!.add(event);
      } else {
        events[key] = [event];
      }
      memoController.clear();
      selectedDay.notifyListeners(); // UI 업데이트
    }

    return Scaffold(
      appBar: AppBar(title: Text('캘린더')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // ===== Calendar =====
            ValueListenableBuilder<DateTime>(
              valueListenable: selectedDay,
              builder: (context, value, _) {
                return TableCalendar(
                  firstDay: DateTime.utc(2020, 1, 1),
                  lastDay: DateTime.utc(2030, 12, 31),
                  focusedDay: value,
                  selectedDayPredicate: (day) => isSameDay(value, day),
                  onDaySelected: (day, focusedDay) {
                    selectedDay.value = day;
                  },
                );
              },
            ),

            SizedBox(height: 20),

            // ===== Memo Input =====
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: memoController,
                    decoration: InputDecoration(
                      hintText: '메모를 입력해주세요',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: addEvent,
                  child: Text('Add'),
                ),
              ],
            ),

            SizedBox(height: 20),

            // ===== Display Events =====
            Expanded(
              child: ValueListenableBuilder<DateTime>(
                valueListenable: selectedDay,
                builder: (context, value, _) {
                  final dayEvents = getEventsForDay(value);
                  return ListView.builder(
                    itemCount: dayEvents.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(dayEvents[index]),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
       bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.push(context, MaterialPageRoute(builder: (_) => Page1()));
              break;
            case 1:
              Navigator.push(context, MaterialPageRoute(builder: (_) => Page2()));
              break;
            case 2:
              Navigator.push(context, MaterialPageRoute(builder: (_) => Page4()));
              break;
           
          }
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
         BottomNavigationBarItem(icon: Icon(Icons.calendar_today), label: 'Calendar'),
          BottomNavigationBarItem(icon: Icon(Icons.note_add), label: 'Dairy'),
          
        ],
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page 3')),
      body: Center(child: Text('Page 3')),
    );
  }
}

class Page4 extends StatefulWidget {
  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  DateTime selectedDate = DateTime.now();
  Map<DateTime, List<String>> notes = {};
  TextEditingController noteController = TextEditingController();

  /// 이번 달 날짜 리스트
  List<DateTime> getDaysInMonth(DateTime month) {
    final firstDay = DateTime(month.year, month.month, 1);
    final lastDay = DateTime(month.year, month.month + 1, 0);
    return List.generate(
      lastDay.day,
      (index) => DateTime(month.year, month.month, index + 1),
    );
  }

  /// 날짜만 남기는 키 (시간 제거)
  DateTime getDateKey(DateTime date) {
    return DateTime(date.year, date.month, date.day);
  }

  /// 날짜 선택
  void onDateSelected(DateTime date) {
    setState(() {
      selectedDate = date;
    });
  }

  /// 노트 추가
  void onNoteAdded() {
    final text = noteController.text.trim();
    if (text.isEmpty) return;

    final key = getDateKey(selectedDate);
    setState(() {
      notes.putIfAbsent(key, () => []);
      notes[key]!.add(text);
      noteController.clear();
    });
    FocusScope.of(context).unfocus();
  }

  @override
  Widget build(BuildContext context) {
    final days = getDaysInMonth(DateTime.now());
    final todayKey = getDateKey(selectedDate);
    final todayNotes = notes[todayKey] ?? [];

    return Scaffold(
      appBar: AppBar(
        title: Text('일기장'),
        backgroundColor: const Color(0xFFFFFCF9),
        elevation: 0,
        foregroundColor: const Color(0xFF28211A),
      ),
      body: Column(
        children: [
          // 📅 캘린더
          Container(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
            color: const Color(0xFFFFFCF9),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: ['일', '월', '화', '수', '목', '금', '토']
                      .map((e) => Expanded(
                            child: Center(
                              child: Text(
                                e,
                                style: TextStyle(
                                  color: const Color(0xFF28211A),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ))
                      .toList(),
                ),
                SizedBox(height: 8),
                Wrap(
                  spacing: 4,
                  runSpacing: 4,
                  children: days.map((date) {
                    final isSelected = getDateKey(date) == todayKey;
                    final hasNote = notes[getDateKey(date)]?.isNotEmpty ?? false;

                    return GestureDetector(
                      onTap: () => onDateSelected(date),
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: isSelected
                              ? const Color(0xFFFFC999)
                              : hasNote
                                  ? const Color(0x0C7E4E25)
                                  : Colors.transparent,
                          borderRadius: BorderRadius.circular(12),
                          border: isSelected
                              ? Border.all(
                                  color: const Color(0xFFFFC999), width: 2)
                              : null,
                        ),
                        child: Center(
                          child: Text(
                            '${date.day}',
                            style: TextStyle(
                              color: isSelected
                                  ? Colors.black
                                  : hasNote
                                      ? const Color(0xFF28211A)
                                      : const Color(0x662E2013),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),

          // ✏️ 노트 입력
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: noteController,
                    decoration: InputDecoration(
                      hintText: '일기 추가',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: const Color(0xFFFFFCF9),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    ),
                    style: TextStyle(
                      fontSize: 16,
                      color: const Color(0xFF28211A),
                      fontFamily: 'Roboto Serif',
                    ),
                  ),
                ),
                SizedBox(width: 8),
                ElevatedButton(
                  onPressed: onNoteAdded,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFFC999),
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding:
                        EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  ),
                  child: Text('추가'),
                ),
              ],
            ),
          ),

          // 📋 노트 리스트
          Expanded(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: todayNotes.isEmpty
                  ? Center(
                      child: Text(
                        '일기가 없습니다.',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                      ),
                    )
                  : ListView.builder(
                      itemCount: todayNotes.length,
                      itemBuilder: (context, index) {
                        return Card(
                          color: const Color(0xFFFFFCF9),
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          margin: EdgeInsets.symmetric(vertical: 6),
                          child: ListTile(
                            title: Text(
                              todayNotes[index],
                              style: TextStyle(
                                fontSize: 16,
                                color: const Color(0xFF28211A),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
            ),
          ),
        ],
      ),

      // 🌐 네비게이션 바
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 2, // Page4니까 2로 고정
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (_) => Page1()));
              break;
            case 1:
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (_) => Page2()));
              break;
            case 2:
              // 이미 Page4니까 아무 동작 X
              break;
          }
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
         BottomNavigationBarItem(icon: Icon(Icons.calendar_today), label: 'Calendar'),
          BottomNavigationBarItem(icon: Icon(Icons.note_add), label: 'Dairy'),
        ],
      ),
    );
  }
}