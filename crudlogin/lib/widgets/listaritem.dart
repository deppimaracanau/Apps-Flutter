import 'package:flutter/material.dart';

import '../Cor/cores.dart';
import '../telas/editartela.dart';
import '../ultilitarios/banco.dart';

class Listaritem extends StatelessWidget {
  const Listaritem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: Banco.readItems(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const Text('Tem algo errado');
        } else if (snapshot.hasData || snapshot.data != null) {
          return ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(height: 16.0),
            itemCount: snapshot.data!.docs.length,
            itemBuilder: (context, index) {
              var noteInfo = snapshot.data!.docs[index].data()!;
              String docID = snapshot.data!.docs[index].id;
              String title = noteInfo['titulo'];
              String description = noteInfo['descrição'];

              return Ink(
                decoration: BoxDecoration(
                  color: Cores.firebaseGrey.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Editartela(
                        tituloAtual: title,
                        descricaoAtual: description,
                        documento: docID,
                      ),
                    ),
                  ),
                  title: Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  subtitle: Text(
                    description,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              );
            },
          );
        }

        return const Center(
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(
              Cores.firebaseOrange,
            ),
          ),
        );
      },
    );
  }
}
