import 'package:flutter/material.dart';

class HomeScreeen extends StatelessWidget {

   @override
   Widget build(BuildContext context) {
      return Scaffold(
         body: Column(
            children: <Widget>[

               FadeInImage(
                  placeholder: AssetImage('assets/no_img.jpg'), 
                  image: NetworkImage('https://www.caracteristicas.co/wp-content/uploads/2018/11/montan%CC%83as-e1543190126108.jpg')
               ),
               
               _Title(),
               
               _Buttons(),

               Container(
                  margin: EdgeInsets.symmetric(horizontal: 19),
                  child: Text('Minim incididunt dolor eu excepteur Lorem sit amet esse veniam adipisicing pariatur minim. Anim do qui qui mollit cillum aliquip ad qui reprehenderit Lorem nisi velit. Ipsum commodo eiusmod eiusmod anim. Id dolor nostrud in in dolore laborum fugiat ad. Do amet exercitation velit et dolore non. Do ex ipsum laboris amet deserunt ut culpa esse ut. Enim mollit tempor commodo ut dolore. Nostrud reprehenderit velit adipisicing laborum occaecat sit non deserunt in. Anim id officia mollit fugiat irure ex voluptate velit voluptate.')
               )

            ],
         ),
      );
   }
}

class _Title extends StatelessWidget {

   @override
   Widget build(BuildContext context) {
      return Container(
         margin: EdgeInsets.symmetric(horizontal: 13, vertical: 13),
         child: Row(
            children: <Widget>[

               Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Text(
                        'Ut fugiat culpa labore.', 
                        style: TextStyle(fontWeight: FontWeight.bold)
                     ),
                     Text(
                        'Ut fugiat culpa fugiat culpa labore.'
                     ),
                  ],
               ),

               Expanded(child: Container()),   

               Icon(Icons.star, color: Colors.red),
               Text('41'),
            
            ],
         ),
      );
   }
}

class _Buttons extends StatelessWidget {

   @override
   Widget build(BuildContext context) {
      return Container(
         margin: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
         child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
               
               _CustomButton(icon: Icons.phone, text: 'CALL'),
               _CustomButton(icon: Icons.alt_route_outlined, text: 'ROUTE'),
               _CustomButton(icon: Icons.share, text: 'SHARE'),

            ],
         ),
      );
   }
}

class _CustomButton extends StatelessWidget {

   final IconData icon;
   final String text;

   const _CustomButton({
      Key? key, required this.icon, required this.text,
   }) : super(key: key);

   @override
   Widget build(BuildContext context) {
      return Column(
         children: [
            Icon(this.icon, color: Colors.blue),
            SizedBox(height: 3),
            Text(this.text, style: TextStyle(color: Colors.blue))
         ],
      );
   }
}