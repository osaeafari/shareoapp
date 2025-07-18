import 'package:flutter/material.dart';
import 'package:shareoapp/views/brands/new_brands_screen.dart';

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
          ),

        // Main FAB
        if (_isExpanded) ..._buildExpandedOptions(),
        _buildMainFab(),
      ],
    );
  }

  Widget _buildMainFab() {
    return FloatingActionButton(
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
        bottom: 60,
        right: 0,
        child: AnimatedOpacity(
          opacity: _isExpanded ? 1.0 : 0.0,
          duration: const Duration(milliseconds: 300),
          child: FloatingActionButton.small(
            onPressed: () {
              // first , collapse the FAB
              setState(() {
                _isExpanded = false;
              });
              // then, navigate to the new screen.
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const NewBrandsScreen(),
                ),
              );
            },
            child: Icon(Icons.border_color_outlined),
          ),
        ),
      ),

      Positioned(
        bottom: 110,
        right: 0,
        child: AnimatedOpacity(
          opacity: _isExpanded ? 1.0 : 0.0,
          duration: const Duration(milliseconds: 300),
          child: FloatingActionButton.small(
            onPressed: () {},
            child: Icon(Icons.amp_stories_outlined),
          ),
        ),
      ),
    ];
  }
}
