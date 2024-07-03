import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_info/presentation/manager/genres_bloc/genres_bloc.dart';
import 'package:movie_info/presentation/manager/movie_bloc/movie_bloc.dart';
import 'package:movie_info/presentation/manager/search_bloc/search_bloc.dart';
import 'core/dependency_injection/injection.dart' as di;
import 'presentation/pages/home_page.dart';
import 'presentation/pages/search_page.dart';

const labelAppTitle = 'Movie App';
const labelMainScreenTitle = 'Главный';
const labelSearchScreenTitle = 'Поиск';

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) {
          return di.locator<MovieBloc>()
            ..add(const MovieEvent.loadPopular(page: 1));
        }),
        BlocProvider(create: (_) => di.locator<SearchBloc>()),
        BlocProvider(create: (_) {
          return di.locator<GenresBloc>()..add(const GenresEvent.load());
        }),
      ],
      child: MaterialApp(
        title: labelAppTitle,
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
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: labelMainScreenTitle,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: labelSearchScreenTitle,
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
