import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_cv/constants/palette.dart';
import 'package:my_cv/widgets/twitch_x_developer/developer.dart';
import 'package:my_cv/widgets/twitch_x_developer/twitch.dart';

class TwitchxDeveloper extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => TwitchxDeveloperState();
}

class TwitchxDeveloperState extends State<TwitchxDeveloper> {
  bool showingTwitch = true;
  Map<bool, Color> colors = {true: deepPurple, false: purple};
  Map<bool, Color> profileColor = {true: lightBlue, false: darkGrey};
  Map<bool, String> profiles = {true: "Streamer", false: "Desenvolvedora"};
  Duration duration = Duration(seconds: 1);
  @override
  Widget build(BuildContext context) {
    var titleTheme = Theme.of(context)
        .textTheme
        .headline3
        .apply(color: lightBlue, fontWeightDelta: 3);

    return LayoutBuilder(builder: (context, constraints) {
      var height = constraints.maxHeight;
      var width = constraints.maxWidth;

      var title = Padding(
          padding: EdgeInsets.only(top: 30),
          child: Text("Streamer x Desenvolvedora",
              textAlign: TextAlign.center, style: titleTheme));

      var slider = Transform.scale(
          scale: 2,
          child: Switch(
              activeColor: pink,
              activeTrackColor: darkGrey,
              inactiveTrackColor: darkGrey,
              value: showingTwitch,
              onChanged: (value) {
                setState(() {
                  showingTwitch = value;
                });
              }));
      return AnimatedContainer(
          duration: duration,
          color: colors[showingTwitch],
          width: constraints.maxWidth,
          child: Column(
            children: [
              title,
              Padding(
                padding: const EdgeInsets.only(bottom: 15, top: 15),
                child: slider,
              ),
              Text(
                profiles[showingTwitch],
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    .apply(color: profileColor[showingTwitch]),
              ),
              AnimatedCrossFade(
                firstChild: Twitch(
                  parentHeight: height,
                  parentWidth: width,
                ),
                secondChild: Developer(
                  parentHeight: height,
                  parentWidth: width,
                ),
                crossFadeState: showingTwitch
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                duration: duration,
              ),
            ],
          ));
    });
  }
}
