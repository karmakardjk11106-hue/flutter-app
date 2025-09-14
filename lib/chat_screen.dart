import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _controller = TextEditingController();
  final List<Map<String, String>> _messages = [];
  bool _loading = false;

  // Replace with your Gemini 2.0 Flash endpoint
  final String _apiKey = "AIzaSyAtRVK_zOvY4GjHSbFHged7-gSLITXR-T0";
  final String _geminiEndpoint =
      "https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent?key=";

  Future<void> sendMessage(String userMessage) async {
    setState(() {
      _loading = true;
      _messages.add({"role": "user", "content": userMessage});
    });

    final prompt = '''
You are an expert AI assistant for the tourism industry. 
Your job is to provide concise, clear, and summarized ideas or suggestions for travelers, especially about places to visit, hotels, and travel tips. 
Always reply in Markdown format for clarity. 
If the user asks about a location, suggest top places to visit nearby in a bullet list, and keep your answer focused and actionable.

User: $userMessage
''';

    final body = {
      "contents": [
        {
          "parts": [
            {"text": prompt}
          ]
        }
      ]
    };

    final response = await http.post(
      Uri.parse("$_geminiEndpoint$_apiKey"),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode(body),
    );

    String botReply = "Sorry, I couldn't get a response.";
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      botReply = data["candidates"]?[0]?["content"]?["parts"]?[0]?["text"] ??
          botReply;
    }

    setState(() {
      _messages.add({"role": "bot", "content": botReply});
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tourism Chatbot")),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                final msg = _messages[index];
                final isUser = msg["role"] == "user";
                return Align(
                  alignment:
                      isUser ? Alignment.centerRight : Alignment.centerLeft,
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: 4, horizontal: 12),
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: isUser ? Colors.teal[100] : Colors.grey[200],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: isUser
                        ? Text(msg["content"] ?? "")
                        : MarkdownBody(
                            data: msg["content"] ?? "",
                            styleSheet: MarkdownStyleSheet(
                              p: const TextStyle(fontSize: 16),
                              listBullet: const TextStyle(fontSize: 16),
                            ),
                          ),
                  ),
                );
              },
            ),
          ),
          if (_loading)
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: CircularProgressIndicator(),
            ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration:
                        const InputDecoration(hintText: "Type your message..."),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: _loading
                      ? null
                      : () {
                          final text = _controller.text.trim();
                          if (text.isNotEmpty) {
                            sendMessage(text);
                            _controller.clear();
                          }
                        },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}