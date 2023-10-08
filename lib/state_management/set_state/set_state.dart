import 'package:flutter/material.dart';

class SetStateDemo extends StatelessWidget {
  const SetStateDemo({super.key});

  @override
  build(BuildContext context) {
    return const PageOne();
  }
}

class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  int buildCount = 0;
  int counter = 0;

  void _incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    buildCount++;
    debugPrint('Widget Build Count --> $buildCount Times');
    debugPrint('Context --> {$context}');
    return const Scaffold(
      body: Center(
        child: Text('Hello'),
      ),
    );
  }
}

///
/// Summary Note
///
/// [ HotRestart ]
/// Application တခုကို Hot Restart လုပ်လိုက်တဲ့အခါမှာ Build Method တည်းမှာရှိတဲ့ buildCount သည် 2 Times ဆိုပြီးတော့ Console မှာ ထွက်လာတယ်။
/// ဘာလို့လဲဆိုတော့ Hot Restart လုပ်တဲ့အခါမှာ Flutter Framework က နေ အလုပ် 3 ခု ကိုလုပ်တယ်။
/// အဲ့ဒါတွေက ပထမဆုံး သူက Widgets တွေအကုန် ကို Reconstruct( ပြန်ပြီးတည်ဆောက်တာကိုပြောတာပါ ) နဲ့ widgets တွေတည်းမှာရှိတဲ့ Build Method ကို တခါခေါ်ပါတယ်။ ဒါကြောင့် Reconstruct လုပ်တဲ့ အချိန် +1 တိုးလာပါတယ်။
/// Reconstruct လုပ်နေတဲ့အချိန်မှာလည်း Memories တွေ အပေါ်မှာ အရင်ကလုပ်ထားခဲ့တဲ့ State( တနည်းအားဖြင့် Data )တွေကို Clear လုပ်လိုက်ပါတယ်။ Widgets တွေ အကုန်လုံးကိုလည်း Initialized ပြန်လုပ်လိုက်ပါတယ်။
/// [ _PageOneState ] class နဲ့အတူ PageOne Widget တွေနဲ့ အတူ Reconstruct လုပ်ပါတယ်
/// ဒါကြောင့် Initiliaze လုပ်လိုက်တဲ့အချိန် Hot Restart လုပ်လိုက်တဲ့အချိန်မှာ buildCount သည် +1 ဆိုပြီး ထပ်တိုးသွားပါတယ်
/// ဒါကြောင့် Result ကလည်း 2 ဖြစ်သွားပါတယ်
///
/// [ HotReload ]
///
///
///
///
/// There is one times of output in this widget [ When Hot Reload ] Output Widget Build Count is 1
/// When we print context that output is [ PageOne(dirty, state: _PageOneState#68b1c) ]
///
/// [ PageOne ]
/// It is the name of Flutter Widget or components being represented.
///
/// [ Dirty ]
/// The term "dirty" typically refers to a state in which the widget needs to be rebuilt or refreshed.
/// In Flutter, when a widget's state changes, it may become "dirty," and
/// Flutter's framework will schedule a rebuild of the widget to reflect the updated state.
///
/// [ state: _PageOneState#19c21 ]
/// This part refers to the state object associated with the PageOne widget.
/// In Flutter, widgets often have associated state objects that manage their internal state and logic.
/// _PageOneState is likely the state class associated with the PageOne widget, and
/// #19c21 could be an identifier or hash for this particular instance of the state
///

class PageTwo extends StatefulWidget {
  const PageTwo({super.key, required this.counter});
  final int counter;

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
