import processing.sound.*; //使用聲音的外掛模組
SoundFile sound;//宣告SoundFile物件變數
void setup(){
  size(500,400); //視窗大小
  sound=new SoundFile(this,"music.mp3");//老師傳送的音檔
  sound.play();//播放
}
void draw(){

}
