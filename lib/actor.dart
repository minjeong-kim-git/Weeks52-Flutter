import 'package:flutter/material.dart';

class ActorGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      itemCount: 4, // 출연진 이미지 개수
      itemBuilder: (context, index) {
        final actorImageName = 'actor${index}.jpeg'; // actor0.jpg부터 actor3.jpg까지

        return ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            'assets/image/$actorImageName',
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
        );
      },
    );
  }
}