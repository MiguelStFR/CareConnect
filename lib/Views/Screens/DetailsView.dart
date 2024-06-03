import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:multi_dropdown/widgets/hint_text.dart';

import '../../Controllers/DetailsController.dart';
import 'package:multiselect/multiselect.dart';
import '../../Tools/Values/Lists.dart';

class DetailsScreen extends StatefulWidget{

  final DetailsController detailsController;

  DetailsScreen({super.key, required this.detailsController});

  @override
  void dispose(){
    detailsController.disposeControllers();
  }

  @override
  State<DetailsScreen> createState() => _detailsScreen();
}

class _detailsScreen extends State<DetailsScreen>{

  final _formKey = GlobalKey<FormState>();
  void _updateValue(TextEditingController controller, String value){
    setState(() {
      controller.text = value!;
    });
  }

  @override
  Widget build(BuildContext context){

    return Scaffold(
        body: Form(
          key: _formKey,
          child: Column(children: [
            Container(
              alignment: Alignment.center,
              child: Text(
                'DETALHES DO MARCADOR',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width/1,
              height: 100,
              alignment: Alignment.bottomCenter,
              padding:const EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width/2.5,
                    height: 50,
                    alignment: Alignment.center,
                    padding:const EdgeInsets.all(5),
                    child:TextFormField(
                      decoration: InputDecoration(
                          label: Text('Quantidade:')
                      ),
                      controller: widget.detailsController.numIndividuosController,
                      keyboardType:  TextInputType.number,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width/2.5,
                    height: 50,
                    alignment: Alignment.center,
                    padding:const EdgeInsets.all(5),
                    child: DropdownButton<String>(
                      elevation: 5,
                      style: const TextStyle(color: Colors.deepPurple),
                      underline: Container(
                        height: 1,
                        color: Colors.deepPurpleAccent,
                      ),
                      onChanged: (String? value) {
                        setState(() {
                          widget.detailsController.marker.markerType = widget.detailsController.selectedMarkerType = value!;
                        });
                      },
                      items: MarkerTypeList.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      value: widget.detailsController.selectedMarkerType,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width/1,
              height: 80,
              padding:const EdgeInsets.all(20),
              child: DropDownMultiSelect(
                decoration: InputDecoration(
                  fillColor: Theme.of(context).colorScheme.onPrimary,
                  focusColor: Theme.of(context).colorScheme.onPrimary,
                  enabledBorder:  const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      borderSide: BorderSide(
                          color: Colors.grey,
                          width: 1.5
                      )),
                  focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      borderSide: BorderSide(
                        color:Colors.blue,
                        width: 1.5,
                      )),
                ),
                options: GeneroList,
                selectedValues: widget.detailsController.marker.generosList,
                onChanged: (List<String> value) {
                },
                whenEmpty: 'Gênero(s)',
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width/1,
              height: 80,
              padding:const EdgeInsets.all(20),
              child: DropDownMultiSelect(
                decoration: InputDecoration(
                  fillColor: Theme.of(context).colorScheme.onPrimary,
                  focusColor: Theme.of(context).colorScheme.onPrimary,
                  enabledBorder:  const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      borderSide: BorderSide(
                          color: Colors.grey,
                          width: 1.5
                      )),
                  focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      borderSide: BorderSide(
                        color:Colors.blue,
                        width: 1.5,
                      )),
                ),
                options: FaixaEtariaList,
                selectedValues: widget.detailsController.marker.faixaEtariaList,
                onChanged: (List<String> value) {
                },
                whenEmpty: 'Faixa(s) etária(s)',
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width/1,
              height: 80,
              padding:const EdgeInsets.all(20),
              child: DropDownMultiSelect(
                decoration: InputDecoration(
                  fillColor: Theme.of(context).colorScheme.onPrimary,
                  focusColor: Theme.of(context).colorScheme.onPrimary,
                  enabledBorder:  const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      borderSide: BorderSide(
                          color: Colors.grey,
                          width: 1.5
                      )),
                  focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      borderSide: BorderSide(
                        color:Colors.blue,
                        width: 1.5,
                      )),
                ),
                options: TipoNecessidadeList,
                selectedValues: widget.detailsController.marker.tiposNecessidadeList,
                onChanged: (List<String> value) {},
                whenEmpty: 'Tipo(s) de necessidade(s)',
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width/1,
              height: 150,
              alignment: Alignment.bottomCenter,
              padding:const EdgeInsets.all(20),
              child: TextFormField(
                  decoration: InputDecoration(
                      label: Text('Contatos(Tel, E-mail, ...):')
                  ),
                  controller: widget.detailsController.contatosController,
                  textAlign: TextAlign.left,
                  textAlignVertical: TextAlignVertical.top,
                  keyboardType: TextInputType.multiline,
                  maxLines: null
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width/1,
              height: 150,
              alignment: Alignment.bottomCenter,
              padding:const EdgeInsets.all(20),
              child: TextFormField(
                  decoration: InputDecoration(
                      label: Text('Descrição:')
                  ),
                controller: widget.detailsController.descricaoController,
                textAlign: TextAlign.left,
                textAlignVertical: TextAlignVertical.top,
                keyboardType: TextInputType.multiline,
                maxLines: null
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width/1,
              height: 100,
              alignment: Alignment.center,

              padding:const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(MediaQuery.of(context).size.width/2.8, 100),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        widget.detailsController.Save();
                      }
                    },
                    child: const Text('SALVAR'),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width/10,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(MediaQuery.of(context).size.width/2.8, 100),
                    ),
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    child: const Text('SAIR'),
                  ),
                ],
              ),
            )
          ]),
        )
    );
  }
}