import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  // Данные пользователя (как в задании)
  final String name = 'Tom Hardy';
  final String age = '29 лет';
  final String city = 'Токио';
  final String description = 'Я из Токио';
  final List<String> interests = [
    ' Тренировки',
    ' Семья',
    ' Деньги',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Новый цвет фона экрана (под AppBar)
      backgroundColor: Color(0xFF1E2A3E), // тёмно-синий

      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        // Изменён цвет AppBar
        backgroundColor: Color(0xFFC0392B), // тёмно-красный
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back, color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, color: Colors.white),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu, color: Colors.white),
          ),
        ],
      ),

      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('images/tomhardy.jpg'),
              ),
              SizedBox(height: 16),

              // Имя (локальный шрифт SairaStencil-Regular)
              Text(
                name,
                style: TextStyle(
                  fontFamily: 'SairaStencil-Regular', // ваш локальный шрифт
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // белый цвет
                ),
              ),
              SizedBox(height: 8),

              // Возраст и город в одной строке (разные цвета)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    age,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.amberAccent, // жёлтый
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(width: 20),
                  Text(
                    city,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.lightBlueAccent, // голубой
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12),

              // Описание (биография)
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  description,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white70, // светло-серый
                  ),
                ),
              ),
              SizedBox(height: 24),

              // Заголовок "Интересы"
              Text(
                'Интересы',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.orangeAccent, // оранжевый
                ),
              ),
              SizedBox(height: 12),

              // Список интересов (несколько строк)
              ...interests.map((interest) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Text(
                  interest,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.greenAccent, // зелёный
                  ),
                ),
              )).toList(),

              SizedBox(height: 30),

              // Кнопка Follow
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  backgroundColor: Colors.amber,
                ),
                child: Text(
                  'Follow',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}