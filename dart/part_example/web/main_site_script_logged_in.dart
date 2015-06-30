import 'dart:html';
import 'dart:async';
import 'package:part/core.dart' ;
import 'package:part/elements.dart' ;
import 'package:part/user_settings.dart';
import 'package:part/site_classes.dart';
import 'package:part/initializers.dart';

main() {

  runZoned(() {
    var initLib = new InitializerLibrary();

    debugger.enabled = body.classes.contains("debug");

    querySelectorAll("select").forEach((e) => new BetterSelect(e));
    querySelectorAll("ul.draggable").forEach((e) => new ChangeableList(e));
    querySelectorAll("form.has_function_string").forEach((e)=>new FormHandler(e));
    querySelectorAll("form.validatable").forEach((e)=>new ValidatingForm(e));

    initLib.registerInitializer(new UserSettingsInitializer(initLib));
    initLib.registerInitializer(new OnlineOfflineBodyClassInitializer());
    initLib.registerInitializer(new EditorInitializer(site, pageOrder, userLibrary));
    initLib.registerInitializer(new ExpandableElementInitializer());

    initLib.setUp();

  }, onError : (ex, st) {
    logger.error('Dart error: '+ex.toString(),{"stact trace": st.toString()});
  });


}
