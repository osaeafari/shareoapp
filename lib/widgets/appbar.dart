import 'package:flutter/material.dart';
import 'package:shareoapp/widgets/location_searchbar.dart';
import '../core/constants/app_colors.dart';

class ShareoAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final bool showBack;
  final bool showBottom;
  final double preferredHeight;

  const ShareoAppbar({
    super.key,
    this.title,
    this.showBack = false,
    this.showBottom = true,
    this.preferredHeight = 180,
  });

  final String userName = 'Kay_Kross';

  @override
  Size get preferredSize => Size.fromHeight(preferredHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      toolbarHeight: showBottom ? 50 : 50,
      backgroundColor: AppColors.primary,
      shadowColor: Theme.of(context).shadowColor,
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    if (showBack)
                      IconButton(
                        icon: const Icon(
                          Icons.arrow_back,
                          color: AppColors.background,
                        ),
                        onPressed: () => Navigator.of(context).maybePop(),
                      ),
                    if (!showBack)
                      const CircleAvatar(
                        radius: 24,
                        backgroundImage: AssetImage(
                          'assets/images/profilePic.jpg',
                        ),
                      ),
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (title != null)
                          Text(
                            title!,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: AppColors.background,
                            ),
                          ),
                        if (title == null)
                          const Text(
                            'Welcome back',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: AppColors.background,
                            ),
                          ),
                        if (!showBack && title == null)
                          Text(
                            userName,
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                              color: AppColors.background,
                            ),
                          ),
                      ],
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.background,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.currency_exchange,
                        color: AppColors.primary,
                        size: 18,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
      bottom:
          showBottom
              ? PreferredSize(
                preferredSize: const Size.fromHeight(100),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: LocationSearchbar(),
                ),
              )
              : null,
    );
  }
}
