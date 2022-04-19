import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


void main() => runApp(PianoApp());

class PianoApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget> [
            PianoButton(
              onKeyPress:(){
                final player = AudioCache();
                player.play('notes/note1.wav');
              } ,
            ),
            PianoButtonWithSuberKey(
              onMainKeyPress: (){
                final player = AudioCache();
                player.play('notes/note2.wav');
              },
              onSuberKeyPress: (){
                final player = AudioCache();
                player.play('notes/note3.wav');
              },
            ),
            PianoButtonWithSuberKey(
              onMainKeyPress: (){
                final player = AudioCache();
                player.play('notes/note4.wav');
              },
              onSuberKeyPress: (){
                final player = AudioCache();
                player.play('notes/note5.wav');
              },
            ),
            PianoButtonWithSuberKey(
              onMainKeyPress: (){
                final player = AudioCache();
                player.play('notes/note6.wav');
              },
              onSuberKeyPress: (){
                final player = AudioCache();
                player.play('notes/note7.wav');
              },
            ),
            PianoButton(
              onKeyPress:(){
                final player = AudioCache();
                player.play('notes/note3.wav');
              } ,
            ),
            PianoButtonWithSuberKey(
              onMainKeyPress: (){
                final player = AudioCache();
                player.play('notes/note3.wav');
              },
              onSuberKeyPress: (){
                final player = AudioCache();
                player.play('notes/note7.wav');
              },
            ),
            PianoButtonWithSuberKey(
              onMainKeyPress: (){
                final player = AudioCache();
                player.play('notes/note1.wav');
              },
              onSuberKeyPress: (){
                final player = AudioCache();
                player.play('notes/note5.wav');
              },
            ),

          ],
        ),
      ),
    );
  }

}
class PianoButtonWithSuberKey extends StatelessWidget{
  final Function onMainKeyPress;
  final Function onSuberKeyPress;

  const PianoButtonWithSuberKey({Key? key, required this.onMainKeyPress, required this.onSuberKeyPress}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Stack(
            overflow: Overflow.visible,
            children:<Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 8.0,bottom:2.0,top: 2.0,),
                child: Container(
                  width: double.infinity ,
                  height:double.infinity ,
                  child: RaisedButton(
                    onPressed: (){
                      onMainKeyPress();
                    },
                  ),
                ),
              ),
              Positioned(
                  top: - 25.0 ,
                  child: Container(
                    width:250.0 ,
                    height: 50.0,
                    child: RaisedButton(
                      color: Colors.black,
                      onPressed:(){
                        onSuberKeyPress();
                      } ,)
                  )
              ),
            ]
        )
    );
  }

}
class PianoButton extends StatelessWidget {
  final Function onKeyPress;

  const PianoButton({Key? key, required this.onKeyPress}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
        child:
            Padding(
            padding: const EdgeInsets.only(right: 8.0,bottom:2.0,top: 2.0,),
            child: Container(
              width: double.infinity ,
              height:double.infinity ,
              child: RaisedButton(
                onPressed: (){
                  onKeyPress();
                },
              ),
            ),
          ),
        );
  }
}

