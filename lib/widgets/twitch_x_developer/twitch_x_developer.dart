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
      return AnimatedContainer(
          duration: duration,
          color: colors[showingTwitch],
          width: constraints.maxWidth,
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
                child: Text(
                    "Está curioso como eu sou quando Streamer e como eu sou como Desenvolvedora?",
                    textAlign: TextAlign.center,
                    style: titleTheme),
              ),
              Text(
                profiles[showingTwitch],
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    .apply(color: profileColor[showingTwitch]),
              ),
              Switch(
                  activeColor: pink,
                  activeTrackColor: darkGrey,
                  inactiveTrackColor: darkGrey,
                  value: showingTwitch,
                  onChanged: (value) {
                    setState(() {
                      showingTwitch = value;
                    });
                  }),
              AnimatedCrossFade(
                firstChild: Twitch(),
                secondChild: Developer(),
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
