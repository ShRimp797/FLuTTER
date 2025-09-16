import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Note App',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SizedBox(
          width: 200,
          height: 100,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFFF9500), // 버튼 색상
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50), // 모서리 둥글기
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const NotePage()),
              );
            },
            child: const Text(
              '작성하기',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white, // 텍스트는 흰색
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class NotePage extends StatefulWidget {
  const NotePage({super.key});

  @override
  State<NotePage> createState() => _NotePageState();
}

class _NotePageState extends State<NotePage> {
  final TextEditingController _controller = TextEditingController();
  String _savedNote = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("노트 작성"),
        backgroundColor: const Color(0xFFFF9500),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              maxLines: 5,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "노트를 작성하세요...",
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFFF9500),
              ),
              onPressed: () {
                setState(() {
                  _savedNote = _controller.text;
                });
              },
              child: const Text(
                "저장",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            const SizedBox(height: 20),
            if (_savedNote.isNotEmpty)
              Text(
                "저장된 노트: $_savedNote",
                style: const TextStyle(fontSize: 18),
              ),
          ],
        ),
      ),
    );
  }
}
