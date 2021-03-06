import 'package:cheers_app/data_models/host_party.dart';
import 'package:cheers_app/generated/l10n.dart';
import 'package:cheers_app/utils/constants.dart';
import 'package:cheers_app/view/common/components/button_with_icon.dart';
import 'package:cheers_app/view/host_party/screens/host_party_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HostPartyPage extends StatelessWidget {

  final HostParty hostParty;
  HostPartyPage({this.hostParty});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonWithIcon(
              iconData: FontAwesomeIcons.glassCheers,
              label: S.of(context).hostParty,
              //TODO
              onPressed: () => _openHostPartyScreen(context),
            ),
          ],
        ),
      ),
    );
  }

  _openHostPartyScreen(BuildContext context) {

    Navigator.push(context, MaterialPageRoute(
            builder: (context) => HostPartyScreen(hostParty: hostParty,from: PostCaptionOpenMode.FROM_POST,),));

  }
}
