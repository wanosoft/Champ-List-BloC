import 'package:flutter/material.dart';
import 'package:my_bloc/data/moor_database.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() { 
    super.initState();
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LoL Champs'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(child: _buildList(context))
        ],
      ),
    );
  }

  StreamBuilder<List<Champ>> _buildList(BuildContext context) {
    final database = Provider.of<LeagueDatabase>(context);
    return StreamBuilder(
      stream: database.champDao.watchAllChamps(),
      builder: (context, AsyncSnapshot<List<Champ>> snapshot){
        final champs = snapshot.data ?? List();
        return ListView.builder(
          itemCount: champs.length,
          itemBuilder: (_, index){
            final champ = champs[index];
            return _buildItem(champ, database);
          },
        );
      },
    );
  }

  Widget _buildItem(Champ champ, LeagueDatabase database) {
    return ListTile(
      title: Text(champ.name),
      subtitle: Text(champ.title),
      onTap: () => print('TODO: show detail page')
    );
  }
}