       function setup() {
         // https://p5js.org/reference/#/p5/createCanvas
         // (width, height) of canvas
         canvas_width = 800;
         canvas_height = 800;
         createCanvas(canvas_width, canvas_height);
         mid_x = canvas_width/2;
         mid_y = canvas_height/2;
         box_width = 56;
         x_adjust = 0;
         direction = 0;
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
         rect(x_adjust, mid_y - (box_width/2), box_width, box_width);
         
         strokeWeight(2);
         line(mid_x, 0+box_width/2, box_width/2 + x_adjust, mid_y);

         stroke(51);

         if (direction === 0) {
             x_adjust = x_adjust + 5;
         } else {
             x_adjust = x_adjust - 5;
         }

         if (direction === 0 && (x_adjust + box_width) >= canvas_width) {
            direction = 1;
         } 

         if (direction === 1 && x_adjust <= 0) {
            direction = 0;
         }
    }
