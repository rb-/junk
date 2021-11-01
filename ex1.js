   function setup() {
     // https://p5js.org/reference/#/p5/createCanvas
     // (width, height) of canvas
      createCanvas(1400, 1400);
     mid_x = 1400/2;
     mid_y = 1400/2;
     canvas_width = 1400;
     canvas_height = 1400;
     box_width = 56;
   }

   function draw() {
      // https://p5js.org/reference/#/p5/background
      background(220);
     
     fill("red");
     strokeWeight(4);
     stroke(51);
     rect(mid_x - box_width/2, 0, box_width, box_width);

     fill("blue");
     strokeWeight(4);
     stroke(51);
     rect(0, mid_y - (box_width/2), box_width, box_width);
     
     strokeWeight(2);
     line(mid_x, 0+box_width/2, box_width/2, mid_y);

     stroke(51);
}
