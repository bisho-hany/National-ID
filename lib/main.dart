import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,title: "الرقم القومى",home: login(),);
  }
}

class login extends StatelessWidget{
  TextEditingController t1=TextEditingController();
  TextEditingController t2=TextEditingController();
  TextEditingController t3=TextEditingController();
  TextEditingController t4=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.brown,title:Row(children: [Icon(Icons.flag_sharp,size: 30,),
    Container(width: 100,),Text("سجل مدنى عالضيق",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
    ],)
    ),


      body:ListView(children: [

        Text("National ID",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
        ,TextField(controller: t1,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.keyboard)
              ,hintText: "what is your national ID"
            ,labelText: "ID"
            ,border: OutlineInputBorder()
            ,fillColor: Colors.white,filled: true
        ),
        )

,Center(child:ButtonTheme(minWidth:75,height: 50 ,child:
          RaisedButton(child: Text("Details"),

            onPressed:(){

            int a=int.parse(t1.text);

            int b= (a/10).toInt();

            int c=(b%10).toInt(); //رقم تحديد النوع

            int d=(b/10000).toInt();  //الرقم القومى بعد ما شيلت ال3 ارقام اللى مش مهمين

            int e=(d%100).toInt(); //كود المحافظة

            int f=(d/100).toInt(); //الرقم بعد ما شيلت كود المحافظة

            int g= (f%100).toInt();// يوم الميلاد

            int h= (f/100).toInt(); //الرقم بعد ما شيلت يوم الميلاد

            int i=(h%100).toInt(); //شهر الميلاد

            if(c%2==0){
              t3.text="female";
              t4.text=("${g}/${i}").toString();

              if(e==01){
                t2.text="محافظة القاهرة";
              }
            else if (e==02){
              t2.text="محافظة الاسكندرية";
              }
              else if (e==03){
                t2.text="محافظة بورسعيد";
              }
              else if (e==04){
                t2.text="محافظة السويس";
              }
              else if (e==11){
                t2.text="محافظة دمياط";
              }
              else if (e==12){
                t2.text="محافظة الدقهلية";
              }
              else if (e==13){
                t2.text="محافظة الشرقية";
              }
              else if (e==14){
                t2.text="محافظة القليوبية";
              }
              else if (e==15){
                t2.text="محافظة كفرالشيخ";
              }
              else if (e==16){
                t2.text="محافظة الغربية";
              }
              else if (e==17){
                t2.text="محافظة المنوفية";
              }
              else if (e==18){
                t2.text="محافظة البحيرة";
              }
              else if (e==19){
                t2.text="محافظة الاسماعيلية";
              }
              else if (e==21){
                t2.text="محافظة الجيزة";
              }
              else if (e==22){
                t2.text="محافظة بنى سويف";
              }
              else if (e==23){
                t2.text="محافظة الفيوم";
              }
              else if (e==24){
                t2.text="محافظة المنيا";
              }
              else if (e==25){
                t2.text="محافظة اسيوط";
              }
              else if (e==26){
                t2.text="محافظة سوهاج";
              }
              else if (e==27){
                t2.text="محافظة قنا";
              }

            }

    if(c%2!=0){
    t3.text="male";
    t4.text=("${g}/${i}").toString();

    if(e==01){
    t2.text="محافظة القاهرة";
    }
    else if (e==02){
    t2.text="محافظة الاسكندرية";
    }
    else if (e==03){
    t2.text="محافظة بورسعيد";
    }
    else if (e==04){
    t2.text="محافظة السويس";
    }
    else if (e==11){
    t2.text="محافظة دمياط";
    }
    else if (e==12){
    t2.text="محافظة الدقهلية";
    }
    else if (e==13){
    t2.text="محافظة الشرقية";
    }
    else if (e==14){
    t2.text="محافظة القليوبية";
    }
    else if (e==15){
    t2.text="محافظة كفرالشيخ";
    }
    else if (e==16){
    t2.text="محافظة الغربية";
    }
    else if (e==17){
    t2.text="محافظة المنوفية";
    }
    else if (e==18){
    t2.text="محافظة البحيرة";
    }
    else if (e==19){
    t2.text="محافظة الاسماعيلية";
    }
    else if (e==21){
    t2.text="محافظة الجيزة";
    }
    else if (e==22){
    t2.text="محافظة بنى سويف";
    }
    else if (e==23){
    t2.text="محافظة الفيوم";
    }
    else if (e==24){
    t2.text="محافظة المنيا";
    }
    else if (e==25){
    t2.text="محافظة اسيوط";
    }
    else if (e==26){
    t2.text="محافظة سوهاج";
    }
    else if (e==27){
    t2.text="محافظة قنا";
    }




            } ;})


        ))



,Divider()

,Text("Governorate",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)

,TextField(controller: t2,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.all_inclusive)
              ,fillColor: Colors.white,filled: true
            ,border: OutlineInputBorder()

        ),
        )

,Divider()

,Text("Gender",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)

,TextField(controller: t3,
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.all_inclusive)
            ,fillColor: Colors.white,filled: true
            ,border: OutlineInputBorder()
        ),
        )

,Divider()

,Text("B.D Date",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)

,TextField(controller: t4,
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.all_inclusive)
            ,fillColor: Colors.white,filled: true
            ,border: OutlineInputBorder()
        ),
        )


























































      ],)

      ,);
  }
}