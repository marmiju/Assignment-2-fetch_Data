import 'package:fetch_data/Controller/Provider/UserProvider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Homescreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userData = ref.watch(UserProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text('JsonPlaceHolder/User'),
        
      ),
       body:userData.when(
        data: (data)=>ListView.builder(
          itemCount: data.length,
          itemBuilder: (_,index){
            //sapareate user One by One
            final user = data[index];
           return Padding(
             padding: const EdgeInsets.symmetric(horizontal: 16),
             child: Card(
               child: ListTile(
                leading: Text('Id:${user.id}'),
                title: Text('Name: ${user.name}',style: TextStyle(
                  fontWeight: FontWeight.bold
                ),),
                subtitle: Text('Company Name:${user.company.name} \nEmail: ${user.email}'),
                
               ),
             ),
           );

        }),
         error: (error,s)=> Center(child: Text(error.toString()),),
          loading:()=> Center(child: CircularProgressIndicator(),)),
    );
  }
}