import 'package:basic_widgets/src/pages/contentAnimation.dart';
import 'package:flutter/material.dart';

import 'package:basic_widgets/src/pages/alert_page.dart';
import 'package:basic_widgets/src/pages/avatar_page.dart';
import 'package:basic_widgets/src/pages/home_page.dart';
import 'package:basic_widgets/src/pages/cards.dart';
import 'package:basic_widgets/src/pages/contentAnimation.dart';

Map<String, WidgetBuilder> getRoutes() {
  return <String, WidgetBuilder>{
    "/": (BuildContext context) => HomePage(),
    "avatar": (BuildContext context) => AvatarPage(),
    "alert": (BuildContext context) => AlertPage(),
    "card": (BuildContext context) => CardsPage(),
    "animation": (BuildContext context) => ContentAnimation(),
  };
}
