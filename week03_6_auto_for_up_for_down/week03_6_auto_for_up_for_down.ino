void setup() {
for(int i=3;i<=13;i++){
    pinMode(i,OUTPUT); 
  }
}

void loop() {
  for(int i=3;i<=13;i++){ // 3-->13
    for(int k=3;k<=13;k++) digitalWrite(k,LOW); //全暗
    digitalWrite(i,HIGH); //指定的亮
    delay(200);
  }
  for(int i=13;i>=3;i--){ // 3<--13
    for(int k=3;k<=13;k++) digitalWrite(k,LOW); //全暗
    digitalWrite(i,HIGH);
    delay(200);
  }
}
