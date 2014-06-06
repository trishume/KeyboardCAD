// title: Magnetic Levitation Key
// author: Tristan Hume
// license: Creative Commons CC BY
// revision: 0.001
var w = [];

var magnetRadius = 1.5;

var shaftHeight = 3.0;
var shaftThickness = 0.2;
var glidePadding = 0.1;

function shaft() {
  var innerR = magnetRadius + glidePadding;
  var inner = cylinder({r: innerR, h: shaftHeight});
  var outer = cylinder({r: innerR+shaftThickness, h: shaftHeight});
  return difference(outer, inner);
}

function main(params) {
  w.push(shaft());
  return w;
}
