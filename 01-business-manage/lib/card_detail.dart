import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reel_ui/common/scale_button.dart';
import 'package:reel_ui/home.dart';

class CardDetailScreen extends StatelessWidget {
  const CardDetailScreen({super.key, required this.model});

  final CardModel model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: model.color,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: MediaQuery.paddingOf(context).top + 30),
            _backButton(context),
            const SizedBox(height: 12),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      model.title,
                      style: const TextStyle(
                        fontSize: 52,
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    const SizedBox(height: 39),
                    Center(
                      child: Hero(
                        tag: Key(model.image),
                        child: Image.asset(
                          model.image,
                          width: 200,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Center(
                      child: Text(
                        model.value,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w100,
                          fontSize: 120,
                          fontFamily: 'invalid',
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "Raven respiterespite bird flutter horror was unseen before discourse core. Wondering i and mefilled bore and. Violet of tempest some each door lenore, radiant fact leave name was thereis the raven he, crest this napping heart thy thy implore the, stood stood sat the a shadow i placid it. Whom truly of a angels. Outpour morrow the surcease followed fowl is. With him mystery a leave stopped is back memories youhere, the till desolate said raven smiling then. That tossed floating tapping and long this. The not with it so and living that. Nothing and bust see there be decorum my clasp. Heard soon there at this door relevancy from, door yore lenore take or other, engaged usby something angels.",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: MediaQuery.paddingOf(context).bottom + 20),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  ScaleButton _backButton(BuildContext context) {
    return ScaleButton(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(.2),
          borderRadius: BorderRadius.circular(100),
          border: Border.all(
            color: Colors.white,
            width: .5,
          ),
        ),
        child: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.keyboard_backspace_rounded,
              color: Colors.white,
              size: 16,
            ),
            SizedBox(width: 12),
            Text(
              "Dashboard",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
