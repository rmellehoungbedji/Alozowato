

import 'package:alonouz_mobile/models/user.dart';

class Message{
  final User sender;
  final String
        time;
  final String text;
  final bool  isLiked;
  final bool  unread;

  Message({
    this.sender,
    this.time,
    this.text,
    this.isLiked,
    this.unread
  });
}

final User currentUser = User(
  id: 0,
  name: 'Current User',
 imageUrl: '',
);

final User armelle = User(
  id: 1,
  name: 'Armelle',
 imageUrl: '',
);

final User josiane = User(
  id: 2,
  name: 'josiane',
 imageUrl: '',
);

final User paul = User(
  id: 3,
  name: 'Paul',
 imageUrl: '',
);

final User vignon = User(
  id: 4,
  name: 'Vignon',
 imageUrl: '',
);

final User arnaud = User(
  id: 5,
  name: 'Arnaud',
 imageUrl: '',
);

final User kevin = User(
  id: 6,
  name: 'Kevin',
 imageUrl: '',
);

final User lutter = User(
  id: 7,
  name: 'Lutter',
 imageUrl: '',
);

final User olga = User(
  id: 8,
  name: 'Olga',
 imageUrl: '',
);

List<Message> chats = [
  Message(
     sender: vignon, 
     time: '5:30 Soir',
     text: 'Bonjour monsieur le tailleur!',
     isLiked: false,
     unread:  false,
   ),

  Message(
    sender: olga,
    time: '1:03 Soir',
    text: 'CC, comment allez vous? je vous contacte pour prendre rendez-vous avec vous',
    isLiked: false,
    unread:  true,
  ),

   Message(
     sender: armelle,
     time: '9:12 Matin',
     text: 'Bonjour',
     isLiked: false,
     unread:  false,
   ),

    Message(
     sender: josiane,
     time: '6:32 Matin',
     text: 'Moi je ne suis pas loin de votre ateleir',
     isLiked: false,
     unread:  false,
   ),

    Message(
     sender: arnaud,
     time: '11:20 Soir',
     text: 'Je veux prendre un rendez-vous pour demain',
     isLiked: false,
     unread:  false,
   ),

    Message(
     sender: lutter,
     time: '6:58 Soir',
     text: 'Salut',
     isLiked: false,
     unread:  false,
   ),

    Message(
     sender: currentUser,
     time: '7:30 Matin',
     text: '',
     isLiked: false,
     unread:  false,
   ),
 
    Message(
     sender: paul,
     time: '10:00 Soir',
     text: 'Je serai là dans 1h',
     isLiked: false,
     unread:  false,
   ),

    Message(
     sender: kevin,
     time: '2:01 Matin',
     text: 'cc',
     isLiked: false,
     unread:  false,
   ),

];

List <Message> message = [
       
     Message(
     sender: kevin,
     time: '2:01 Matin',
     text: 'Bonjour coiffeur',
     isLiked: false,
     unread:  false,
   ), 

    Message(
     sender: currentUser,
     time: '7:30 Matin',
     text: 'Bonjour monsieur',
     isLiked: false,
     unread:  true,
   ),
   
   Message(
     sender: kevin,
     time: '9:01 Matin',
     text: 'je vais bien merci..jaimerais prendre rendez-vous avec vous',
     isLiked: false,
     unread:  false,
   ), 

   Message(
     sender: kevin,
     time: '9:05 Matin',
     text: 'seriez vous disponible demain pour me coiffer?',
     isLiked: false,
     unread:  false,
   ), 

   Message(
     sender: currentUser,
     time: '11:30 Matin',
     text: 'oui oui vous pouvez passer à mon atelier.je serai là toute la journée.',
     isLiked: false,
     unread:  true,
   ),


];

       