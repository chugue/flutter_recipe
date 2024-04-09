import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_recipe/components/recipe_list_item.dart';
import 'package:flutter_recipe/components/recipe_menu.dart';
import 'package:flutter_recipe/components/recipe_title.dart';

class RecipePage extends StatelessWidget {
  const RecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // 1. 배경색 white로 설정
      appBar: _buildRecipeAppBar(), // 2. 비어 있는 AppBar 연결해두기
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20), // 3. 수평으로 여백 주기
        child: ListView( // 위에서 아래로 내려가는 구조이므로, column사용
          children: [
            RecipeTitle(),
            RecipeMenu(),
            RecipeListItem("coffee", "Made Coffee"),
            RecipeListItem("burger", "Made burger"),
            RecipeListItem("pizza", "Made pizza"),
          ],
        ),
      ),
    );
  }
  AppBar _buildRecipeAppBar(){
    return AppBar(
      backgroundColor: Colors.white, // AppBar 배경색
      elevation: 1.0, // AppBar의 그림자 효과 조정
      actions: [
        Icon(
          CupertinoIcons.search, // 쿠퍼티노 아이콘 사용
          color: Colors.black,
        ),
        SizedBox(width: 15),
        Icon(
          CupertinoIcons.heart,
          color: Colors.redAccent,
        ),
        SizedBox(width: 15),
      ],
    );
  }
}
