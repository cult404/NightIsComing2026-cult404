if fadeTime = true {
image_alpha += 0.05;
clamp(image_alpha, 0, 1);

}
if image_alpha == 1 {fadedIn = true;}
if destroy = true {instance_destroy()}
