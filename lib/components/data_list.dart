import 'package:flutter/material.dart';

class DataList extends StatelessWidget {
  const DataList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildHeader(context),
        Expanded(
          child: _buildDataGrid(context),
        ),
      ],
    );
  }

  GridView _buildDataGrid(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return GridView.builder(
          itemCount: 10,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index) {
            return Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("NAME",style: textTheme.headlineLarge),
                  Container(
                    width: 64,
                    height: 64,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.green[900]!.withAlpha((0.1*255).round()),
                    ),
                    child: Icon(Icons.water_drop,size: 32,color: Colors.green[900],),
                  ),
                  Text("30.00 %",style: textTheme.headlineLarge!.copyWith(color: Colors.green[800])),
                ],
              ),
            );
          },
        );
  }

  Widget _buildHeader(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Row(
      children: [
        Text("Data List", style: textTheme.displaySmall),
        Spacer(),
        DropdownButton(
          value: "Humidity",
          items:
              ["Humidity", "Temperature"]
                  .map(
                    (value) =>
                        DropdownMenuItem(value: value, child: Text(value)),
                  )
                  .toList(),
          onChanged: (vaule) => {},
        ),
        SizedBox(width: 16),
        ElevatedButton.icon(
          onPressed: () {},
          label: Text("Refresh"),
          icon: Icon(Icons.refresh),
        ),
      ],
    );
  }
}