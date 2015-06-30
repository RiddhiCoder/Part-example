import 'dart:html';
import 'package:part/core.dart' ;
import 'package:part/elements.dart' ;
import 'package:part/initializers.dart';

main() {

  var initLib = new InitializerLibrary();

  debugger.enabled = body.classes.contains("debug");

  querySelectorAll("form.has_function_string").forEach((e)=>new FormHandler(e));
  querySelectorAll("form.validatable").forEach((e)=>new ValidatingForm(e));
  querySelectorAll("select").forEach((e)=>new BetterSelect(e));
  querySelectorAll("ul.draggable").forEach((e)=>new ChangeableList(e));

  initLib.registerInitializer(new LoginFormulaInitializer());
  initLib.registerInitializer(new ForgotPasswordFormulaInitializer());

  initLib.setUp();


}