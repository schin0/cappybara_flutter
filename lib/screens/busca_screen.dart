import 'package:flutter/material.dart';

import '../widgets/menu_navegacao_widget.dart';

class BuscaScreen extends StatelessWidget {
  const BuscaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Container(
            height: 40,
            margin: const EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Buscar...',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {},
                  ),
                ],
              ),
              margin: const EdgeInsets.only(left: 20, bottom: 5),
            )),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildCategoryButton(Icons.ac_unit, 'Exposições'),
                buildCategoryButton(Icons.local_drink, 'Drinks'),
                buildCategoryButton(Icons.food_bank, 'Comidas'),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 40),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('16/04/2024 - 20/04/2024'),
                Icon(Icons.calendar_today),
              ],
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 40),
                child: Text('Faixa de preço'),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 40),
                child: Text('R\$ 90'),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Slider(
              value: 90,
              min: 0,
              max: 200,
              onChanged: (value) {},
              activeColor: Colors.black,
              inactiveColor: Colors.grey,
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 40),
                child: Text('Acessibilidade'),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildCategoryButton(Icons.wheelchair_pickup, 'Cadeirante'),
                buildCategoryButton(Icons.waving_hand, 'Libras'),
                buildCategoryButton(Icons.elderly, 'Idoso'),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Tá bombando!',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                buildEventCard(
                    'Top 10 eventos', Icons.refresh, Icons.favorite_sharp),
                SizedBox(height: 10),
                buildEventCard('Favoritos dos Cappys', Icons.favorite_sharp,
                    Icons.favorite_border),
              ],
            ),
          ),
          Spacer(),
          MenuNavegacao()
        ],
      ),
    );
  }

  Widget buildCategoryButton(IconData icon, String label) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            border: Border.all(color: Colors.black),
          ),
          child: Icon(icon, size: 30),
        ),
        SizedBox(height: 5),
        Text(label),
      ],
    );
  }

  Widget buildEventCard(String title, IconData leftIcon, IconData rightIcon) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(leftIcon),
              SizedBox(width: 10),
              Text(title),
            ],
          ),
          Icon(rightIcon),
        ],
      ),
    );
  }

  Widget buildCategoryButtonWithCheckbox(
      IconData icon, String label, bool isChecked) {
    return Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Checkbox(
              value: isChecked,
              onChanged: (bool? value) {},
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.black),
              ),
              child: Icon(icon, size: 30),
            ),
          ],
        ),
        SizedBox(height: 5),
      ],
    );
  }
}
