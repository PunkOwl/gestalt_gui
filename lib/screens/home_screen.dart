import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gestalt_gui/component/footer.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {

  String _exportType;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _buildTypeSelect(),
          _buildParameters(_exportType),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: Footer(text: '...',),
      ),
    );
  }

  Widget _buildTypeSelect() {
    return Container(
      child: Row(
        children: [
          Text('sda')
        ],
      ),
    );
  }

  Widget _buildParameters(String exportType) {
    return Container();
  }
}