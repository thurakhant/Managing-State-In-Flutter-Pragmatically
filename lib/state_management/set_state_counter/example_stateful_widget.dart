import 'package:flutter/material.dart';

class ExampleStatefulPage extends StatefulWidget {
  const ExampleStatefulPage({super.key});

  @override
  State<ExampleStatefulPage> createState() => _ExampleStatefulPageState();
}

class _ExampleStatefulPageState extends State<ExampleStatefulPage> {
  int buildCounter = 0;
  @override
  Widget build(BuildContext context) {
    buildCounter++;
    debugPrint('Child Widget builds $buildCounter');
    return Container();
  }
}

/// Summary Note
///
/// [HotRestart]
/// Application တခုကို Hot Restart လုပ်လိုက်တဲ့အခါမှာ Build Method တည်းမှာရှိတဲ့ buildCount သည် 2 Times ဆိုပြီးတော့ Console မှာ ထွက်လာတယ်။ ဒီလိုပေါ့ [ Child Widget builds 2 ]
/// ဘာလို့လဲဆိုတော့ Hot Restart လုပ်တဲ့အခါမှာ Flutter Framework က နေ အလုပ် 3 ခု ကိုလုပ်တယ်။
/// အဲ့ဒါတွေက ပထမဆုံး သူက Widgets တွေအကုန် ကို Reconstruct( ပြန်ပြီးတည်ဆောက်တာကိုပြောတာပါ ) နဲ့ widgets တွေတည်းမှာရှိတဲ့ Build Method ကို တခါခေါ်ပါတယ်။ ဒါကြောင့် Reconstruct လုပ်တဲ့ အချိန် +1 တိုးလာပါတယ်။
/// Reconstruct လုပ်နေတဲ့အချိန်မှာလည်း Memories တွေ အပေါ်မှာ အရင်ကလုပ်ထားခဲ့တဲ့ State( တနည်းအားဖြင့် Data )တွေကို Clear လုပ်လိုက်ပါတယ်။ Widgets တွေ အကုန်လုံးကိုလည်း Initialized ပြန်လုပ်လိုက်ပါတယ်။
/// [ _PageOneState ] class နဲ့အတူ PageOne Widget တွေနဲ့ အတူ Reconstruct လုပ်ပါတယ်
/// ဒါကြောင့် Initialize လုပ်လိုက်တဲ့အချိန် Hot Restart လုပ်လိုက်တဲ့အချိန်မှာ buildCount သည် +1 ဆိုပြီး ထပ်တိုးသွားပါတယ်
/// ဒါကြောင့် Result ကလည်း 2 ဖြစ်သွားပါတယ်
///
/// Error Tracing
/// ပြန်ဆန်းစစ်ကြည့်ရင်  Initialize ပြန်လုပ်နေတဲ့အခါမှာ Variable or Widgets တွေကို  Reconstruct ‌ပြန်လုပ်နေတဲ့ အချိန် [Error] တခုဖြစ်ရင် Trace လိုက်ရတာလွယ်သွားပါတယ်။
///
