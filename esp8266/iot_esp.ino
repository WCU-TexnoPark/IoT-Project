// Requirements Library
#include <Arduino.h>
#include <ESP8266WiFi.h>
#include <Firebase_ESP_Client.h>

#include "addons/TokenHelper.h"
#include "addons/RTDBHelper.h"

// Wifi
#define WIFI_SSID "your_wifi_name"
#define WIFI_PASSWORD "your_wifi_password"

// Firebase
#define API_KEY "your_firebase_api_key"
#define DATABASE_URL "your_firebase_database_url" 

// Pins Led
#define rocketled D1
#define outled D0

FirebaseData fbdo;

FirebaseAuth auth;
FirebaseConfig config;

unsigned long sendDataPrevMillis = 0;
bool valueRocket;
bool valueOut;
bool signupOK = false;

void setup() {
  pinMode(rocketled, OUTPUT);
  pinMode(outled, OUTPUT);
  Serial.begin(115200);
  WiFi.begin(WIFI_SSID, WIFI_PASSWORD);
  Serial.print("Connecting to Wi-Fi");
  while (WiFi.status() != WL_CONNECTED) {
    Serial.print(".");
    delay(300);
  }
  Serial.println();
  Serial.print("Connected with IP: ");
  Serial.println(WiFi.localIP());
  Serial.println();
  config.api_key = API_KEY;
  config.database_url = DATABASE_URL;
  if (Firebase.signUp(&config, &auth, "", "")) {
    Serial.println("ok");
    signupOK = true;
  }
  else {
    Serial.printf("%s\n", config.signer.signupError.message.c_str());
  }

  config.token_status_callback = tokenStatusCallback;

  Firebase.begin(&config, &auth);
  Firebase.reconnectWiFi(true);
}

void loop() {
  if (Firebase.ready() && signupOK && (millis() - sendDataPrevMillis > 1 || sendDataPrevMillis == 0)) {
    sendDataPrevMillis = millis();
    if (Firebase.RTDB.getInt(&fbdo, "/controller/leds/rocket-led")) {
      if (fbdo.dataType() == "boolean") {
        valueRocket = fbdo.intData();
        Serial.println(valueRocket);
        if(valueRocket == true) {
          digitalWrite(rocketled, LOW);
        } else {
          digitalWrite(rocketled, HIGH);          
        }
      }
    }
    else {
      Serial.println(fbdo.errorReason());
    }

    if (Firebase.ready() && signupOK && (millis() - sendDataPrevMillis > 1 || sendDataPrevMillis == 0)) {
    sendDataPrevMillis = millis();
      if (Firebase.RTDB.getInt(&fbdo, "/controller/leds/out-led")) {
        if (fbdo.dataType() == "boolean") {
          valueOut = fbdo.intData();
          Serial.println(valueRocket);
          if(valueOut == true) {
            digitalWrite(outled, LOW);
          } else {
            digitalWrite(outled, HIGH);          
          }
        }
      }
      else {
        Serial.println(fbdo.errorReason());
      }
    }
  }
}