import 'dart:html';
import 'dart:math';

void main() {

// get the canvas from the HTML markup
//First Circle
CanvasElement canvas1 = document.querySelector('#canvas1');
CanvasRenderingContext2D context1 = canvas1.getContext('2d');

//Second Circle
CanvasElement canvas2 = document.querySelector('#canvas2');
CanvasRenderingContext2D context2 = canvas2.getContext('2d');

//Third Circle
  CanvasElement canvas3 = document.querySelector('#canvas3');
  CanvasRenderingContext2D context3 = canvas3.getContext('2d');
  //  Browser will not render the circle over-lays.....bug
  CanvasRenderingContext2D context3b = canvas3.getContext('2d');

//Fourth Circle
 CanvassElement canvas4 = document.querySelector('#test');
  CanvasRenderingContext2D context4 = canvas4.getContext('2d');

//Fifth Circle
  CanvassElement canvas5 = document.querySelector('#test1');
  CanvasRenderingContext2D context5 = canvas5.getContext('2d');

  // set the circle parameters
  var x = 100;
  var y = 100;
  var radius = 50;
  // radians
  var start_angle = 0*PI;
  var end_angle = 2*PI;
  var counterClockwise = false;

  //Draw Circle 1
  context1.arc(x, y, radius, start_angle, end_angle, counterClockwise);
  context1.lineWidth = 16;
  context1.strokeStyle = '#74bfec';
  context1.lineCap = 'round';
  context1.stroke();

  //Draw Circle 2
  context2.arc(x, y, radius, 1*PI, end_angle, counterClockwise);
  context2.lineWidth = 16;
  context2.strokeStyle = '#f26938';
  context2.lineCap = 'round';
  context2.stroke();


  // The browser/dart/js/css cannot draw two shapes on a single canvass?
  context3.arc(x, y, radius, 0.5*PI, end_angle, false);
  context3.lineWidth = 16;
  context3.strokeStyle = '#1dc4b1';
  context3.lineCap = 'round';
  context3.stroke();

  context3b.arc(x, y, 20, 0.5*PI, end_angle, true);
  context3b.lineWidth = 16;
  context3b.strokeStyle = '#eeeeee';
  context3b.lineCap = 'round';
  context3b.stroke();

  // But...drawing two seperate shapes in stacked DIV tags will work!!
  // This is the base circle.  It's complete
  context4.arc(x, y, radius, 0*PI, 2*PI, false);
  context4.lineWidth = 16;
  context4.strokeStyle = 'white';
  context4.lineCap = 'butt';
  context4.stroke();
  // This is the overlay that represents progress
  // I have the radians messed up...but you get the point.
  context5.arc(x, y, radius, 1.5*PI, 2.5*PI, false);
  context5.lineWidth = 16;
  context5.strokeStyle = 'orange';
  context5.lineCap = 'butt';
  context5.stroke();
}
