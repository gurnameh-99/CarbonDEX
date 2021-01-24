import 'package:flutter/material.dart';
import 'custom_slider_thumb_circle.dart';
import 'form_data.dart';

var formData = FormData.getData;

class SliderWidget extends StatefulWidget {
  final double sliderHeight;
  final int min;
  final int max;
  final fullWidth;
  var val;

  SliderWidget(
      {this.sliderHeight = 48,
        this.max = 15,
        this.min = 2,
        this.fullWidth = false,
      });


  @override
  _SliderWidgetState createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double _value = 0;

  @override
  Widget build(BuildContext context) {


    double paddingFactor = .2;

    if (this.widget.fullWidth) paddingFactor = .3;



    return Container(

      width: this.widget.fullWidth
          ? double.infinity
          : (this.widget.sliderHeight) * 5.5,
      height: (this.widget.sliderHeight),
      decoration: new BoxDecoration(
        borderRadius: new BorderRadius.all(
          Radius.circular((this.widget.sliderHeight * .3)),
        ),
        gradient: new LinearGradient(
            colors: [
              const Color(0xFFb4f500),
              const Color(0xFFff5050),
            ],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(1.0, 1.00),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp),
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(this.widget.sliderHeight * paddingFactor,
            2, this.widget.sliderHeight * paddingFactor, 2),
        child: Stack(
        children: <Widget>[
          Row(
          children: <Widget>[
            Text(
              '${this.widget.min}',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: this.widget.sliderHeight * .3,
                fontWeight: FontWeight.w700,
                color: Colors.white,

              ),
            ),
            SizedBox(
              width: this.widget.sliderHeight * .1,
            ),
            Expanded(
              child: Center(
                child: SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    activeTrackColor: Colors.white.withOpacity(1),
                    inactiveTrackColor: Colors.white.withOpacity(.5),

                    trackHeight: 4.0,
                    thumbShape: CustomSliderThumbCircle(
                      thumbRadius: this.widget.sliderHeight * .4,
                      min: this.widget.min,
                      max: this.widget.max,
                    ),
                    overlayColor: Colors.white.withOpacity(.4),
                    //valueIndicatorColor: Colors.white,
                    activeTickMarkColor: Colors.white,
                    inactiveTickMarkColor: Colors.red.withOpacity(.7),
                  ),
                  child: Slider(
                      value: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = value;
                          this.widget.val = _value;
                        });
                      }),

                ),
              ),
            ),
            SizedBox(
              width: this.widget.sliderHeight * .1,
            ),
            Text(
              '${this.widget.max}',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: this.widget.sliderHeight * .3,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ],
        ),
          //Row(children: <Widget>[submitRatingButton,]),

    ],
        ),
      ),
    );
    submitRatingButton;


  }
  void updateRating() {
    setState(() => this.widget.val = ((this.widget.min)+(this.widget.max-this.widget.min)*_value).round());
    print(this.widget.val);
  }
  Widget get submitRatingButton {
    return RaisedButton(
      onPressed: updateRating,
      child: Text('Submit'),
      color: Colors.indigoAccent,
    );
  }
}
