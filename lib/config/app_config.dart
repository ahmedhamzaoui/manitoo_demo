import 'package:flutter/material.dart';


class App {
  BuildContext _context;
  double _height;
  double _width;
  double _heightPadding;
  double _widthPadding;


  App(_context) {
    this._context = _context;
    MediaQueryData _queryData = MediaQuery.of(this._context);
    _height = _queryData.size.height / 100.0;
    _width = _queryData.size.width / 100.0;
    _heightPadding = _height - ((_queryData.padding.top + _queryData.padding.bottom) / 100.0);
    _widthPadding = _width - (_queryData.padding.left + _queryData.padding.right) / 100.0;
  }


  double appHeight(double v) {
    return _height * v;
  }

  double appWidth(double v) {
    return _width * v;
  }

  double appVerticalPadding(double v) {
    return _heightPadding * v;
  }

  double appHorizontalPadding(double v) {
    return _widthPadding * v;
  }
}

class Colors {
  Color _mainColor = Color(0xFF9C1040);
  Color _secondColor = Color(0xFF5C6369);
  Color _scaffoldColor = Color(0xFFFAFAFA);

  Color mainColor(double opacity) {
    return this._mainColor.withOpacity(opacity);
  }
Color scaffoldColor(double opacity) {
    // TODO test if brightness is dark or not
    return _scaffoldColor.withOpacity(opacity);
  }
}
