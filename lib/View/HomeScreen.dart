import 'package:fetch_data/Controller/Provider/UserProvider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Homescreen extends ConsumerWidget {
   

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userData = ref.watch(UserProvider);
    return Scaffold(
       body:userData.when(
        data: (data)=>ListView.builder(
          itemCount: data.length,
          itemBuilder: (_,index){
            //sapareate user One by One
            final user = data[index];
           return Card(
             child: ListTile(
              title: Text('${user.company.name} \n ${user.company.bs}'),
              leading: Text('${user.name} \n ${user.email}'),
             
             
             ),
           );

        }),
         error: (error,s)=> Center(child: Text(error.toString()),),
          loading:()=> Center(child: CircularProgressIndicator(),)),
    );
  }
}