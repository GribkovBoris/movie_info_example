import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_info/presentation/manager/genres_bloc/genres_bloc.dart';
import 'package:movie_info/presentation/manager/movie_bloc/movie_bloc.dart';
import 'package:movie_info/presentation/manager/search_bloc/search_bloc.dart';
import 'package:movie_info/presentation/utils/labels.dart';
import 'package:movie_info/presentation/widgets/api_dialog.dart';

import 'core/dependency_injection/injection.dart' as di;
import 'core/utils/tmdb_constants.dart';
import 'presentation/pages/home_page.dart';
import 'presentation/pages/search_page.dart';

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) {
          return di.locator<MovieBloc>()..add(const MovieEvent.loadPopular());
        }),
        BlocProvider(create: (_) => di.locator<SearchBloc>()),
        BlocProvider(create: (_) {
          return di.locator<GenresBloc>()..add(const GenresEvent.load());
        }),
      ],
      child: MaterialApp(
        title: Labels.appTitle,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: MainPage(),
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    SearchPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (TmdbConstants.apiKey.isEmpty) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        showApiKeyDialog(context);
      });
    }
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: Labels.mainScreenTitle,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: Labels.searchScreenTitle,
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
