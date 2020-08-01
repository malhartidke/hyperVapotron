// Gmsh project created on Mon Mar  9 06:11:41 2020
SetFactory("OpenCASCADE");

Point(1) = {0, 0, 0, 1.0};
Point(2) = {0, 9, 0, 1.0};
Point(3) = {1.5, 9, 0, 1.0};
Point(4) = {1.5, 6.5, 0, 1.0};
Point(5) = {4.5, 6.5, 0, 1.0};
Point(6) = {4.5, 9, 0, 1.0};
Point(7) = {7.5, 9, 0, 1.0};
Point(8) = {7.5, 6.5, 0, 1.0};
Point(9) = {10.5, 6.5, 0, 1.0};
Point(10) = {10.5, 9, 0, 1.0};
Point(11) = {12, 9, 0, 1.0};
Point(12) = {12, 0, 0, 1.0};
Point(29) = {0, 17, 0, 1.0};
Point(37) = {3, 6.5, 0, 1.0};
Point(38) = {9, 6.5, 0, 1.0};
Point(41) = {3, 5, 0, 1.0};
Point(42) = {9, 5, 0, 1.0};
Point(43) = {24, 9, 0, 1.0};
Point(44) = {24, 17, 0, 1.0};


Line(2) = {2, 3};
Line(3) = {3, 4};
Line(5) = {5, 6};
Line(6) = {6, 7};
Line(7) = {7, 8};
Line(9) = {9, 10};
Line(10) = {10, 11};
Line(12) = {12, 1};
Line(31) = {29, 44};
Line(48) = {29, 2};
Line(49) = {44, 43};
Line(50) = {43, 11};
Line(71) = {2, 1};
Line(72) = {11, 12};


Circle(59) = {41, 37, 4};
Circle(60) = {5, 37, 41};
Circle(61) = {8, 38, 42};
Circle(62) = {42, 38, 9};

Curve Loop(1) = {31, 49, 50, -10, -9, -62, -61, -7, -6, -5, 60, 59, -3, -2, -48};
Plane Surface(1) = {1};
Curve Loop(2) = {71, -12, -72, -10, -9, -62, -61, -7, -6, -5, 60, 59, -3, -2};
Plane Surface(2) = {2};

Recombine Surface {1, 2};

Transfinite Curve {31} = 25 Using Progression 1;
Transfinite Curve {48, 49} = 17 Using Progression 1;
Transfinite Curve {12, 50} = 25 Using Progression 1;
Transfinite Curve {2, 10, 59, 60, 61, 62} = 4 Using Progression 1;
Transfinite Curve {6} = 7 Using Progression 1;
Transfinite Curve {71, 72} = 19 Using Progression 1;
Transfinite Curve {3, 5, 7, 9} = 6 Using Progression 1;

Extrude {0, 0, 1} {
 Surface{1}; Surface{2}; Layers{1}; Recombine; 
}

Physical Surface("inlet") = {17};
Physical Surface("outlet") = {4};
Physical Surface("uWall") = {3};
Physical Surface("buWall") = {1};
Physical Surface("fuWall") = {18};
Physical Surface("chamberWall") = {5};
Physical Surface("lWall") = {20};
Physical Surface("iWall") = {19};
Physical Surface("oWall") = {21};
Physical Surface("flWall") = {22};
Physical Surface("blWall") = {2};
Physical Surface("interfaceHT") = {6,7, 8, 9, 10, 11, 12, 13};

Physical Volume("fluid") = {1};
Physical Volume("solid") = {2};
