import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:practical_test/common/progress_bar.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../common/common_widgets.dart';
import '../../../data/apis/api_model/ProductListModel.dart';
import '../../../data/constants/image_constants.dart';
import '../../../data/constants/string_constants.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Obx(() {
      controller.count.value;
        return ProgressBar(
          inAsyncCall: controller.inAsyncCall.value,
          child: Scaffold(
            body: Column(
              children: [
                // FutureBuilder<List<Products>>(
                //   future: futureTodos,
                //   builder: (context,snapshot){
                //     if(snapshot.connectionState == ConnectionState.waiting){
                //       return const Center(child: CircularProgressIndicator(),);
                //     }
                //     else{
                //       final todos= snapshot.data;
                //       // print("todos------todos------${todos!.length}") ;
                //       return todos==null?const Center(
                //         child: Text("No todos"),
                //       ):ListView.separated(itemBuilder: (context,index){
                //         final todo=todos![index];
                //         // final subtitle = DateFormat('dd MMM yyyy').format(DateTime.parse(todo.updatedAt??todo.createdAt));
                //         return ListTile(
                //           onTap: (){
                //             // showDialog(context: context, builder: (_){
                //             //   return CreateTodoWidget(
                //             //       todo: todo,
                //             //       onSubmit:(title)async{
                //             //         await todoDB.update(id:todo.id??0,title: title
                //             //             .toString());
                //             //         if (!mounted) return;
                //             //         fetchTodos();
                //             //         Navigator.of(context).pop();
                //             //       }
                //             //   );
                //             // });
                //           },
                //           title: Text(todo.title ?? 'k'),
                //           subtitle: Text("subtitle"),
                //           trailing: IconButton(onPressed: () async {
                //             await todoDB.delete(todo.id??0);
                //             fetchTodos();
                //           },icon: Icon(Icons.delete,color: Colors.red,)),
                //         );
                //       }, separatorBuilder: (context,index)=>const SizedBox(height: 12,), itemCount: todos!=null?todos.length:0);
                //     }
                //   },
                // )
              ],
            ),
          ),
        );
      }
    );
  }
}
