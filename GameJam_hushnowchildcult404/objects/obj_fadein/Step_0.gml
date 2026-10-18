image_alpha -= 0.03;
clamp(image_alpha, 1, 0)
if image_alpha == 0 {instance_destroy()}