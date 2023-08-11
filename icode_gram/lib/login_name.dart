import 'package:flutter/cupertino.dart';

class LoginName extends StatefulWidget {
  const LoginName({super.key, required this.onSubmitted});
final void Function(String)onSubmitted;
  @override
  State<LoginName> createState() => _LoginNameState();
}

class _LoginNameState extends State<LoginName> {
  late TextEditingController _textEditingController;
  @override
  void
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
