/**
 * This sketch shows how to use the Waveform class to analyze a stream
 * of sound. Change the number of samples to extract and draw a longer/shorter
 * part of the waveform.
 */

import processing.sound.*;

SoundFile sample;//宣告SoundFile物件變數
Waveform waveform;//宣告Waveform物件變數

int samples = 100;//一次讀入多少個 samples

public void setup() {
  size(640, 360);
  background(255);//可以註解掉

  // Load and play a soundfile and loop it.
  sample = new SoundFile(this, "beat.aiff"); //讀入音樂檔
  sample.loop(); //循環播放

  waveform = new Waveform(this, samples); //想用100格來分析音樂
  waveform.input(sample);//分析音檔
}

public void draw() {
  background(0);
  stroke(255);
  strokeWeight(2);
  noFill();

  // Perform the analysis
  waveform.analyze(); //進行波形的分析

  
  beginShape(); //顯示波形
  for(int i = 0; i < samples; i++){ //把這100格的座標都算進來
    // Draw current data of the waveform
    // Each sample in the data array is between -1 and +1 
    vertex(
      map(i, 0, samples, 0, width), //x座標,對應0....100的值,拉長到視窗的長度640
      map(waveform.data[i], -1, 1, 0, height) //y座標，就是waveform的值
    );
  }
  endShape();
}
