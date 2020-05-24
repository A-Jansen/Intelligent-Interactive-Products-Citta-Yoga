
import processing.sound.*;
SoundFile file;
SoundFile file2;
//SoundFile file3;

char[] prediction = {'A', 'B'} ;
char guess;

int r=0;
void setup() {
  size(640, 360);
  background(255);

  // Load a soundfile from the /data folder of the sketch and play it back
  file = new SoundFile(this, "1.1.wav");
  file2 = new SoundFile (this, "3.wav");
  // file.play();
}   

void draw() {

  guess= prediction[r];
  play(guess);
}

void play(char pred) {
  if (pred =='A') {
    if (file.isPlaying() == false && file2.isPlaying() == false) {
      file.play();
      r= int(random(0, 2));
      println(r);
    }
  }
  if (pred =='B') {
    if (file.isPlaying() == false && file2.isPlaying() == false) {
      file2.play();
      r= int(random(0, 2));
      println(r);
    }
  }
}
