import 'package:flutter/material.dart';


class FormPage extends StatelessWidget {
  const FormPage({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
	backgroundColor:Colors.white,
  appBar: AppBar(
      title: Text("TextField Widget"),
	  backgroundColor:Colors.blue,
	  
  ),
  body: Scaffold(
  appBar: AppBar(
    title: const Text("TextField Widget"),
  ),
  // LayoutBuilder ስክሪኑ ምን ያህል ቁመት እንዳለው ለማወቅ ይረዳል
  body: LayoutBuilder(
    builder: (context, constraints) {
      return SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            // ፎርሙ ቢያንስ ሙሉውን የስክሪን ቁመት እንዲይዝ ያደርጋል
            minHeight: constraints.maxHeight,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              // ዊጄቶቹ በሙሉ ቁመት እንዲዘረጉ ያደርጋል
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
			 const Icon(
  Icons.settings,
  semanticLabel: 'Settings',
),
                const SizedBox(height: 10),
                const Center(child: Text("please Fill The form")),
                const SizedBox(height: 20),
                
                // 1. Full Name
                TextField(
			textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    hintText: "Enter your full name",
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                  ),
                ),
                const SizedBox(height: 15),

                // 2. Phone
                TextField(
			textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.phone, // ለስልክ ቁጥር ኪቦርድ
                  decoration: InputDecoration(
                    hintText: "Enter phone",
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                  ),
                ),
                const SizedBox(height: 15),

                // 3. Username
                TextField(
			textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    hintText: "Enter user name",
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                  ),
                ),
                const SizedBox(height: 15),

                // 4. Email
                TextField(
			textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress, // ለኢሜይል ኪቦርድ
                  decoration: InputDecoration(
                    hintText: "Enter email address",
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                  ),
                ),
                const SizedBox(height: 15),

                // 5. Password
                TextField(
		textInputAction: TextInputAction.done,
            onSubmitted: (text){
              print(text);
            },
                  obscureText: true, // የይለፍ ቃል ለመደበቅ
                  decoration: InputDecoration(
                    hintText: "Enter password",
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  ),
)

);
   
   
  }
 }