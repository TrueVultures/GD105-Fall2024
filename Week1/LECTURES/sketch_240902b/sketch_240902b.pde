background(100, 5, 5);
size(700, 700);

//lines
stroke(0);
line(399, height/2, 45, 45);\
stroke(255);
line(0, height/2, width, height/2);

//circles
fill(0);
circle(100-10, 100-10,105-10);
fill(255);
circle(100, 100, 105);
fill(0);
circle(width/2+15, height/2+15, width*0.50+15);
fill(255);
circle(width/2, height/2, width*0.50);

//print
println( ceil(3.14 + 5.994 + 20) );
println("hello" + "world");
println("i drank " + (3 + 4) + " cups of coffee today");
println(1 + 100 + 10);
println(5.0 +3.0);
println(3.101 + 2);
println("i am " + (7 + 7 + 7 + 7 + 7) + " years old!");
println(9.0 / 2.0);
println(9 / 2);
println(9.0 / 2);

println( color(255, 255, 255) + 1);

int coolNumber = 5 * 100;
println("coolNumber: " + coolNumber);
println(5 + 5 + 5 + 5 + "hello!");
