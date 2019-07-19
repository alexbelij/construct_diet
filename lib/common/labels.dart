import 'package:flutter/material.dart';

class InfoLabel extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;
  final Color color;

  InfoLabel(this.title, {this.description, this.icon, this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: description != null
          ? EdgeInsets.fromLTRB(18, 14.5, 18, 14.5)
          : EdgeInsets.fromLTRB(18, 19.5, 18, 19.5),
      child: Row(
        children: <Widget>[
          icon != null
              ? Container(
                  margin: EdgeInsets.only(right: 15),
                  child: Icon(
                    icon,
                    size: 20,
                    color:
                        color == null ? Theme.of(context).primaryColor : color,
                  ))
              : Container(),
          Container(
            width: MediaQuery.of(context).size.width > 750
                ? 750.0 - 140.0
                : MediaQuery.of(context).size.width - 140,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: description != null ? 0 : 4),
                    child: Text(
                      title,
                      strutStyle: StrutStyle(
                        leading: 0,
                      ),
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).textTheme.caption.color,
                      ),
                    ),
                  ),
                  description != null
                      ? Padding(
                          padding: EdgeInsets.only(top: 3.2),
                          child: Text(
                            description,
                            style: TextStyle(
                              fontSize: 12.2,
                              color: Theme.of(context)
                                  .textTheme
                                  .caption
                                  .color
                                  .withAlpha(180),
                            ),
                          ),
                        )
                      : Container()
                ]),
          ),
        ],
      ),
    );
  }
}

class PlugLabel extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;
  final Color color;

  PlugLabel(this.title, {this.description, this.icon, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18),
      child: Column(
        children: <Widget>[
          icon != null
              ? Container(
                  margin: EdgeInsets.only(bottom: 15),
                  child: Icon(
                    icon,
                    size: 40,
                    color:
                        color == null ? Theme.of(context).primaryColor : color,
                  ))
              : Container(),
          Column(children: [
            Text(
              title,
              textAlign: TextAlign.center,
              strutStyle: StrutStyle(
                leading: 0,
              ),
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Theme.of(context).textTheme.caption.color,
              ),
            ),
            description != null
                ? Padding(
                    padding: EdgeInsets.only(top: 3.2),
                    child: Text(
                      description,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12.2,
                        color: Theme.of(context)
                            .textTheme
                            .caption
                            .color
                            .withAlpha(180),
                      ),
                    ),
                  )
                : Container()
          ]),
        ],
      ),
    );
  }
}

class TitleLabel extends StatelessWidget {
  final String title;
  final IconData icon;
  final Widget child;

  TitleLabel(this.title, {this.icon, this.child});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(18, 12, 18, 0),
          child: Row(
            children: <Widget>[
              icon != null
                  ? Container(
                      margin: EdgeInsets.only(right: 15),
                      child: Icon(
                        icon,
                        size: 16.5,
                        color: Theme.of(context)
                            .textTheme
                            .caption
                            .color
                            .withAlpha(180),
                      ))
                  : Container(),
              Text(
                title,
                strutStyle: StrutStyle(
                  leading: 0,
                ),
                style: TextStyle(
                  fontSize: 12.8,
                  color:
                      Theme.of(context).textTheme.caption.color.withAlpha(180),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 4),
          child: child,
        ),
      ],
    );
  }
}

class InfoSwitchLabel extends StatefulWidget {
  final String title;
  final String description;
  final IconData icon;
  final Color color;
  final bool value;
  final ValueChanged<bool> onChanged;

  InfoSwitchLabel(this.title,
      {this.description, this.icon, this.color, this.value, this.onChanged});

  @override
  _InfoSwitchLabelState createState() => _InfoSwitchLabelState(this.title,
      this.description, this.icon, this.color, this.value, this.onChanged);
}

class _InfoSwitchLabelState extends State<InfoSwitchLabel> {
  String title;
  String description;
  IconData icon;
  Color color;
  bool value;
  ValueChanged<bool> onChanged;

  _InfoSwitchLabelState(this.title, this.description, this.icon, this.color,
      this.value, this.onChanged);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(8, 5, 8, 0),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          highlightColor: Colors.grey.withAlpha(30),
          splashColor: Colors.grey.withAlpha(30),
          onTap: () {
            setState(() {
              value = !value;
            });
            onChanged(value);
          },
          borderRadius: BorderRadius.all(Radius.circular(5)),
          child: Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    widget.icon != null
                        ? Container(
                            margin: EdgeInsets.only(right: 15),
                            child: Icon(
                              widget.icon,
                              size: 20,
                              color: color == null
                                  ? Theme.of(context).primaryColor
                                  : color,
                            ))
                        : Container(),
                    Container(
                      width: MediaQuery.of(context).size.width > 750
                          ? 750.0 - 164.0
                          : MediaQuery.of(context).size.width - 164,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              widget.title,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color:
                                    Theme.of(context).textTheme.caption.color,
                              ),
                            ),
                            widget.description != null
                                ? Padding(
                                    padding: EdgeInsets.only(top: 3.2),
                                    child: Text(
                                      widget.description,
                                      style: TextStyle(
                                        fontSize: 12.2,
                                        color: Theme.of(context)
                                            .textTheme
                                            .caption
                                            .color
                                            .withAlpha(180),
                                      ),
                                    ),
                                  )
                                : Container()
                          ]),
                    )
                  ],
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                    width: 55,
                    height: 35,
                    child: IgnorePointer(
                        ignoring: true,
                        child: Switch(value: value, onChanged: onChanged)),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ButtonLabel extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;
  final Color color;
  final VoidCallback onPressed;

  ButtonLabel(this.title,
      {this.description, this.icon, this.color, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(8, 5, 8, 5),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          highlightColor: Colors.grey.withAlpha(30),
          splashColor: Colors.grey.withAlpha(30),
          onTap: onPressed,
          borderRadius: BorderRadius.all(Radius.circular(5)),
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Row(
                  children: <Widget>[
                    icon != null
                        ? Container(
                            margin: EdgeInsets.only(right: 15),
                            child: Icon(
                              icon,
                              size: 20,
                              color: color == null
                                  ? Theme.of(context).primaryColor
                                  : color,
                            ))
                        : Container(),
                    Container(
                      width: MediaQuery.of(context).size.width > 750
                          ? 750.0 - 140.0
                          : MediaQuery.of(context).size.width - 140,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            title,
                            strutStyle: StrutStyle(
                              leading: 0,
                            ),
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context).textTheme.caption.color,
                            ),
                          ),
                          description != null
                              ? Padding(
                                  padding: EdgeInsets.only(top: 3.2),
                                  child: Text(
                                    description,
                                    style: TextStyle(
                                      fontSize: 12.2,
                                      color: Theme.of(context)
                                          .textTheme
                                          .caption
                                          .color
                                          .withAlpha(180),
                                    ),
                                  ),
                                )
                              : Container()
                        ],
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Icon(
                    Icons.chevron_right,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SelectFavoriteLabel extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;
  final Color color;
  final VoidCallback onPressed;

  SelectFavoriteLabel(this.title,
      {this.description, this.icon, this.color, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(13, 5, 13, 5),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          highlightColor: Colors.grey.withAlpha(30),
          splashColor: Colors.grey.withAlpha(30),
          onTap: onPressed,
          borderRadius: BorderRadius.all(Radius.circular(5)),
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Row(
                  children: <Widget>[
                    icon != null
                        ? Container(
                            margin: EdgeInsets.only(right: 15),
                            child: Icon(
                              icon,
                              size: 20,
                              color: color == null
                                  ? Theme.of(context).primaryColor
                                  : color,
                            ))
                        : Container(),
                    Container(
                      width: MediaQuery.of(context).size.width - 140,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            title,
                            strutStyle: StrutStyle(
                              leading: 0,
                            ),
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context).textTheme.caption.color,
                            ),
                          ),
                          description != null
                              ? Padding(
                                  padding: EdgeInsets.only(top: 3.2),
                                  child: Text(
                                    description,
                                    style: TextStyle(
                                      fontSize: 12.2,
                                      color: Theme.of(context)
                                          .textTheme
                                          .caption
                                          .color
                                          .withAlpha(180),
                                    ),
                                  ),
                                )
                              : Container()
                        ],
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Icon(
                    Icons.chevron_right,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
