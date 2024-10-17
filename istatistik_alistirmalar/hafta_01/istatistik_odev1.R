# 1. Soru: R konsolunda temel matematiksel işlemler gerçekleştirilirken nelere dikkat etmeliyiz? Aritmetik operatörlerin kullanımında sık karşılaşılan hataları nasıl düzeltebiliriz?
# Cevap: İşlem önceliği ve sıfıra bölmeye dikkat edilmeli.

320 %/% 5 # tam bölme
4^3 + 7 # önce üslü ifade hesaplanır.

(7 - 3) / 2 * 4 - 5 # sonuç: 3 
7 - 3 / 2 * 4 - 5 # sonuç: -4 parantezin işlem önceliği

81 %% 7 # kalan: 4

# 2. Soru: R dilinde karşılaştırma operatörleri hangi koşullar altında kullanılır? ==, !=, >=, <= gibi operatörler nasıl farklı sonuçlar verir?
# Cevap: Karşılaştırma operatörleri iki değeri karşılaştırarak boolean bir yanıt verir. (TRUE veya FALSE)

sene <- 2024
isim <- "Dila"
dogum_yili <- 2002
yas <- 22
meslek <- "Öğrenci"

yas == (sene - dogum_yili) # Yas dogrulama
yas >= 22
yas <= 21
meslek != "Öğrenci"

# 3. Soru: Mantıksal operatörler ile nasıl daha karmaşık şartlar oluşturabilirsiniz? & ve | operatörlerinin kullanım farkları nelerdir?
# Cevap: & operatörü iki değerden biri FALSE ise FALSE değeri verir. | Operatörü iki değerden biri TRUE ise TRUE değeri verir.

(yas <= 21) | (meslek == "Öğrenci") # ilk değer FALSE ama çıktı TRUE
(yas >= 23) & (meslek == "Öğrenci") # ilk değer FALSE, ikinci değer TRUE, çıktı FALSE

# 4. Soru: R dilinde sık karşılaşılan hata mesajları nelerdir ve bu mesajlar nasıl çözülür? Bir örnek verin ve nasıl düzeltileceğini açıklayın.
# Cevap: Bir sayıyla bir string değerine matematiksel işlem uygulamaya çalışınca karşılaşılan hata

# 2 + "2" # non-numeric argument to binary operator 