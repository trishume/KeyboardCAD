# My CAD Files

currently mostly CAD files for prototyping custom keyboards.

# Contents

## Magkeys

CAD Files for prototype magnetic levitation keyboard keys that use hall effect sensors.
The files are kind of non-standard, they are generated with a Ruby library called [oozby](http://creativepony.com/oozby/) which generates OpenSCAD files.

The files are designed to fit Lee Valley rare earth magnets and work with ratiometric analogue hall effect sensors.

Some observations from my prototypes:
- With magnetic levitation the feel is very smooth and you can have super long travel as well as very low force activation.
- The shafts that the keys levitate in have to be very smooth or else it feels scratchy.
- The tolerances must be very tight so that the key doesn't wiggle and scrape on the shaft.
- Ratiometric analogue hall effect sensors are really nice, I ordered a bunch of types that I can test under different circumstances if people want.

Project failed because rare earth magnets mess with adjacent keys too much. This causes weird non-smooth force curves and behaviours.
For example: it is twice as hard to press a key when the one next to it is down. Also the 3D printer I used couldn't get tight enough tolerances for smooth sliding.

## ChordBoard

A layout for a chorded keyboard based on the VeloType design. Files done in AutoCAD.
