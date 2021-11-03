function setup() {
    // https://p5js.org/reference/#/p5/createCanvas
    // (width, height) of canvas
    canvas_width = 800;
    canvas_height = 800;
    createCanvas(canvas_width, canvas_height);
    mid_x = canvas_width/2;
    mid_y = canvas_height/2;
    current_y = mid_y;
    box_width = 56;
    current_x = canvas_width/2;
    direction = 0;
    animating = true;
}

function keyPressed() {
    switch (keyCode) {
        case 32:
            if (direction === 0) {
                direction = 1;
            } else {
                direction = 0;
            }
        break;
        case UP_ARROW:
            current_y = current_y - 8;
            if (current_y - (box_width/2) < 0) {
                current_y = box_width/2;
            }
        break;
        case DOWN_ARROW:
            current_y = current_y + 8;
            if (current_y + (box_width/2) > canvas_height) {
                current_y = canvas_height - (box_width/2);
            }
        break;
    }
    return false;
}

function mousePressed() {
    if (mouseX <= (current_x + (box_width)) && (mouseX >= current_x) && 
    mouseY <= (current_y + (box_width)) && mouseY >= (current_y)) {
        animating = !animating;
        if (!animating) {
            noLoop();
        } else {
            loop();
        }
    } else {
        current_y = mouseY - box_width/2;
        if (current_y < 0) {
            current_y = 0;
        }
    }
    return false;
}

function draw() {
    textSize(32);
    text("foo", 0, 0);
    fill("red");
    background(220);
    
    fill("red");
    strokeWeight(4);
    stroke(51);
    rect(mid_x - box_width/2, 0, box_width, box_width);

    fill("blue");
    strokeWeight(4);
    stroke(51);
    rect(current_x, current_y, box_width, box_width);
     
    strokeWeight(2);
    line(mid_x, 0+box_width/2, box_width/2 + current_x, box_width/2 + current_y);

    stroke(51);

    if (direction === 0) {
        current_x = current_x + 1;
    } else {
        current_x = current_x - 1;
    }

    if (direction === 0 && (current_x + box_width) >= canvas_width) {
        direction = 1;
    } 

    if (direction === 1 && current_x <= 0) {
        direction = 0;
    }
}
