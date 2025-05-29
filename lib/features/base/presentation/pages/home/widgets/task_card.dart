import 'package:base_structure/core/constants/gaps.dart';
import 'package:base_structure/core/theme/colors/colors_extension.dart';
import 'package:base_structure/core/theme/text/app_text_style.dart';
import 'package:base_structure/core/widgets/CachedImage.dart';
import 'package:base_structure/features/base/data/models/trip_model.dart';
import 'package:base_structure/res.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TaskCard extends StatelessWidget {
  final TripModel model;

  const TaskCard({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: context.colors.disableGray,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: CachedImage(
              url: model.coverImage,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(16),
              ),
              colorFilter: ColorFilter.mode(
                Colors.black.withValues(alpha: 0.2),
                BlendMode.darken,
              ),
              child: Container(
                padding: EdgeInsets.all(12),
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      context.colors.blackOpacity,
                      Colors.transparent,
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          icon: SvgPicture.asset(Res.more),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    Spacer(),
                    _buildPendingApprovalChip(context),
                    Gaps.vGap10,
                    Text(
                      model.title,
                      style: AppTextStyle.s14_w400(color: context.colors.white),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Icon(Icons.calendar_today, color: context.colors.greyWhite, size: 14),
                        const SizedBox(width: 5),
                        Text(
                          '${model.dates.start} - ${model.dates.end}',
                          style: AppTextStyle.s10_w400(color: context.colors.greyWhite),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Column(
              children: [
                Divider(
                  color: context.colors.greyWhite,
                  height: 20,
                  thickness: .2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(child: _buildAssigneeStack(context)),
                    Text(
                      '${model.unfinishedTasks} unfinished tasks',
                      style: AppTextStyle.s12_w400(color: context.colors.greyWhite),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPendingApprovalChip(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
      decoration: BoxDecoration(
        color: Colors.black.withValues(alpha: 0.5),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: context.colors.primary),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            model.status,
            style: AppTextStyle.s10_w300(color: context.colors.white),
          ),
          const SizedBox(width: 4),
          const Icon(
            Icons.keyboard_arrow_down,
            color: Colors.white,
            size: 18,
          ),
        ],
      ),
    );
  }

  Widget _buildAssigneeStack(BuildContext context) {
    return SizedBox(
      height: 32,
      child: Stack(
        children: [
          ...List.generate(
            model.participants.take(3).length,
            (i) {
              return Positioned(
                left: i * 10.0,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: context.colors.black, width: .5),
                  ),
                  child: CircleAvatar(
                    radius: 12,
                    backgroundImage: NetworkImage(model.participants[i].avatarUrl),
                  ),
                ),
              );
            },
          ),
          if (model.participants.length > 3)
            Positioned(
              left: 3 * 10.0,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: context.colors.blackOpacity,
                ),
                child: CircleAvatar(
                  radius: 13,
                  backgroundColor: Colors.transparent,
                  child: Text(
                    '+${model.participants.length - 3}',
                    style: AppTextStyle.s10_w400(color: context.colors.primary),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
