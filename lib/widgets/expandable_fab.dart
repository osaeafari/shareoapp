import 'package:flutter/material.dart';

class ExpandableFab extends StatefulWidget {
  const ExpandableFab({super.key});

  @override
  State<ExpandableFab> createState() => _ExpandableFabState();
}

class _ExpandableFabState extends State<ExpandableFab> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        // Expandable option which is initially hidden
        if (_isExpanded)
          GestureDetector(
            onTap: () {
              setState(() {
                _isExpanded = false;
              });
            },
            child: Container(
              //color: Colors.black54,
              //width: MediaQuery.of(context).size.width,
              //height: MediaQuery.of(context).size.height,
            ),
          ),

        // Main FAB
        if (_isExpanded) ..._buildExpandedOptions(),
        _buildMainFab(),
      ],
    );
  }

  Widget _buildMainFab() {
    return FloatingActionButton.large(
      onPressed: () {
        setState(() {
          _isExpanded = !_isExpanded;
        });
      },
      // FloatingActionButton
      child: Icon(_isExpanded ? Icons.close : Icons.add_card),
    );
  }

  List<Widget> _buildExpandedOptions() {
    return [
      Positioned(
        bottom: 110,
        right: 0,
        child: AnimatedOpacity(
          opacity: _isExpanded ? 1.0 : 0.0,
          duration: const Duration(milliseconds: 300),
          child: FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.border_color_outlined),
          ),
        ),
      ),

      Positioned(
        bottom: 180,
        right: 0,
        child: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.amp_stories),
        ),
      ),
    ];
  }
}
