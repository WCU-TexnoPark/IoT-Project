<div align="center">
  <img src="https://graph.org/file/c9c79f6df96f6200bd7d1.jpg" width="200" height="200">
  <h1>Texno APP</h1>
</div>
<p align="center">
    Texno APP sadə bir İoT layihəsi örnəyidir. Hazırda aplikasiyada çox az funksiya olsa da yaxın zamanda inkişaf etdirməyi düşünürük.
    <br>
        <a href="https://t.me/qiyascc">Əlaqə</a>
    <br>
</p>

----
[Youtube Videosu](https://youtu.be/6jtOqm5Vy4I)
## APP

<div align="center">
  <img src="https://graph.org/file/af496a49dfac452f7ce25.png" width="" height="">
  <p>Texno APP</p>
</div>

APP'i çalışdırmaq üçün firebase qurmaq/firebase hesabınızı proqrama bağlamaq lazımdır. Necə eləyəcəyiniz haqqında məlumatınız yoxdursa [bu adresdən](https://firebase.google.com/docs/flutter/setup?hl=tr&platform=ios) öyrənə bilərsiniz. Hesabınızı bağlayın və çalışdırın.

Bilgiləndirmə
```
    Firebase hesabınızın API key və Secret Key kimi özəl bilgilərini heç kimlə paylaşmayın. Hesab məlumatlarınıza, databaselərinizə baxa, dəyişdirə, silə bilər.
```

## Dövrə
Lazım olanlar
 - Esp8266
 - Rele modulu
 - İşıqlaR
 - 12V -> 5V çevrici
<div align="center">
  <img src="https://graph.org/file/0f684d7fd3350623bc5fa.jpg" width="" height="">
  <p>Led üçün dövrə</p>
</div>

## Esp8266 qurulum
Qurulum üçün lazım olan kitabxanaları yükləyin və kodu esp8266'a yükləyin.

Lazım olan kitabxanalar;
 - Firebase_ESP_Client
 - ESP8266WiFi
 - Arduino

## Esp8266 üçün yazılan kodda lazım olan yerləri dəyişdirin;
```C++
// Wifi
#define WIFI_SSID "your_wifi_name" // Bura wifi adını yazın. 
#define WIFI_PASSWORD "your_wifi_password" // Bura wifi şifrəsini yazın.

// Firebase
#define API_KEY "your_firebase_api_key" // Firebasedən aldığınız api keyi buraya yazın.
#define DATABASE_URL "your_firebase_database_url" // Firebasedən aldığınız database url'i buraya yazın.

// Pins Led
#define rocketled D1 // İstifadə etdiyiniz pinləri qeyd edin.
#define outled D0 // İstifadə etdiyiniz pinləri qeyd edin.
```






## Developers
[Logic Lords](https://github.com/LogicLords/)
 - [Emil](https://github.com/emildost/)
 - [Qiyas](https://github.com/qiyascc/)
