import 'package:flutter/material.dart';

class BannerWidget extends StatefulWidget {
  final VoidCallback onHide;

  const BannerWidget({Key? key, required this.onHide}) : super(key: key);

  @override
  _BannerWidgetState createState() => _BannerWidgetState();
}

class _BannerWidgetState extends State<BannerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        color: Colors.amber,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(
                Icons.person_2,
                size: 70,
              ),
              Expanded(
                child: Column(
                  children: [
                    const SizedBox(
                      width: 200,
                      child: Text(
                          "Flutter is an open-source UI software development kit created by Google. "),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        minimumSize: const Size(230, 22),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Submit',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  ],
                ),
              ),
              IconButton(
                onPressed: widget.onHide,
                icon: const Icon(Icons.cancel),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
