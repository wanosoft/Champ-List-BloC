import 'package:flutter/material.dart';
import 'package:my_bloc/data/moor_database.dart';
import 'package:my_bloc/data/providers/lol_api_provider.dart';
import 'package:my_bloc/domain/entities/champ.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LoL Champs'),
      ),
      body: RefreshIndicator(
        onRefresh: _requestChamps(),
        child: Column(
          children: <Widget>[
            Expanded(child: _buildList(context))
          ],
        ),
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

  _requestChamps() async {
    final database = Provider.of<LeagueDatabase>(context);
    var champsResponse = await LoLApiProvider.getChamps();
    List<Champion> parsedChampions = List();
    champsResponse.champs.forEach((unparsedChamp) {
      parsedChampions.add(
        Champion(
          id: unparsedChamp.id,
          name: unparsedChamp.name,
          title: unparsedChamp.title,
        )
      );
    });
    parsedChampions.forEach((champ){
      var databaseChampion = Champ(
        id: champ.id,
        name: champ.name,
        title: champ.title,
      );
      database.champDao.insertChamp(databaseChampion);
    });
  }
}