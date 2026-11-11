//check - if we are not playing audio AND we're not finished with the audio then set it to true
//You can wrap this in another if statement to give conditions for when to check - like if instance exists...


if (!audio_is_playing(my_sound) && !audio_finished)
{
    audio_finished = true;

    // Do something when the audio finishes
    show_message("song complete yay!");
}