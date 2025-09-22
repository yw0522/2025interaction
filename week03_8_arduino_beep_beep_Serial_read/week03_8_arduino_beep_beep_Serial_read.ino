void setup() {
  Serial.begin(9600);
  pinMode(8,OUTPUT);
}
int beep=1;
void serialEvent(){
  while(Serial.available()){
    char now=Serial.read(); //now=讀到的資料
    if(now==' ') beep=0; //讀到' '
    if(now=='b') beep=1; //讀到b
  }
}
void loop() {
  if(beep==1){ //讀到b(按左鍵)時beep是1就會叫 按右鍵就不叫
    tone(8,800,200);
    delay(1000);
  }
}
