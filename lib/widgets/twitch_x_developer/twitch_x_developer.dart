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

      return AnimatedContainer(
          duration: duration,
          color: colors[showingTwitch],
          width: constraints.maxWidth,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 70, vertical: 50),
                      child: Text("Streamer x Desenvolvedora",
                          textAlign: TextAlign.center, style: titleTheme),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 30, horizontal: 50),
                    child: Transform.scale(
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
                          }),
                    ),
                  ),
                ],
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
