import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(

  home: UserPanel(),
));

class UserPanel extends StatefulWidget {

  const UserPanel({Key? key}) : super(key: key);

  @override
  State<UserPanel> createState() => _UserPanelState();
}

class _UserPanelState extends State<UserPanel> {
  final Color _textColor = Colors.black;
  final Color _buttonColor = Colors.red;
  final Padding _fifteenthPadding = const Padding(padding: EdgeInsets.only(top:15));
  final Padding _twentiethPadding = const Padding(padding: EdgeInsets.only(top:20));
  final Padding _thirtiethPadding = const Padding(padding: EdgeInsets.only(top:30));
  int _count = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        title: const Text('user'),
        centerTitle: true,
        backgroundColor: Colors.black45,
      ),
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                _thirtiethPadding,
                Text('John Obsessive',
                  style: TextStyle(
                      fontSize: 35,
                      color: _textColor
                  ),
                ),
                _twentiethPadding,
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/1.jpg'),
                  radius: 70,
                ),
                _thirtiethPadding,
                Row(
                  children: [
                    Icon(Icons.mail_outline,
                      size: 25,
                      color: _textColor
                    ),
                    _fifteenthPadding,
                    Text('admin@gmail.com',
                      style: TextStyle(
                          color: _textColor
                      ),
                    )
                  ],
                ),
                Text('Компульсивность: $_count',
                  style: TextStyle(
                    fontSize: 20,
                    color: _textColor
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: _buttonColor,
        onPressed: () {
          setState(() {
            _count++;
          });
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}


