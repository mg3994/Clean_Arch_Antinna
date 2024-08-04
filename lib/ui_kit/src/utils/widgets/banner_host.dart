import 'package:flutter/widgets.dart';

class BannerHost extends StatefulWidget {
  const BannerHost({
    super.key,
    required this.isConnected,
    required this.banner,
    required this.child,
    this.duration = const Duration(milliseconds: 400),
    this.curve = Curves.fastOutSlowIn,
  });

  final bool isConnected;
  final Widget banner;
  final Widget child;
  final Duration? duration;
  final Curve curve;

  @override
  State<BannerHost> createState() => BannerHostState();
}

class BannerHostState extends State<BannerHost>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: widget.duration,
      value: widget.isConnected ? 0.0 : 1.0,
      vsync: this,
    );
    _animation = CurvedAnimation(
      parent: _controller,
      curve: widget.curve,
    );
  }

  @override
  void didUpdateWidget(covariant BannerHost oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.isConnected != widget.isConnected) {
      if (widget.isConnected) {
        Future.delayed(Duration(seconds: 1))
            .whenComplete(() => _controller.reverse());
        // _controller.reverse();
      } else {
        _controller.forward();
      }
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomMultiChildLayout(
      delegate: _BannerHostDelegate(_animation),
      children: [
        LayoutId(
          id: _BannerHostWidgetId.child,
          child: widget.child,
        ),
        LayoutId(
          id: _BannerHostWidgetId.banner,
          child: widget.banner,
        ),
      ],
    );
  }
}

enum _BannerHostWidgetId { child, banner }

class _BannerHostDelegate extends MultiChildLayoutDelegate {
  _BannerHostDelegate(this._animation) : super(relayout: _animation);

  final Animation<double> _animation;

  @override
  void performLayout(Size size) {
    layoutChild(_BannerHostWidgetId.child, BoxConstraints.tight(size));
    positionChild(_BannerHostWidgetId.child, Offset.zero);

    final bannerSize = layoutChild(
      _BannerHostWidgetId.banner,
      BoxConstraints.tightFor(width: size.width),
    );
    positionChild(
      _BannerHostWidgetId.banner,
      Offset(
        0.0,
        size.height - (_animation.value * bannerSize.height),
      ),
    );
  }

  @override
  bool shouldRelayout(covariant _BannerHostDelegate oldDelegate) {
    return _animation != oldDelegate._animation;
  }
}
