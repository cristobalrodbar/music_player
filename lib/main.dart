import 'package:flutter/material.dart';
import 'package:music_player/src/models/audioplayer_model.dart';
import 'package:music_player/src/pages/music_player_page.dart';
import 'package:music_player/src/theme/theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => AudioPlayerModel())],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Music player',
          theme: miTema,
          home: MusicPlayerPage()),
    );
  }
}
