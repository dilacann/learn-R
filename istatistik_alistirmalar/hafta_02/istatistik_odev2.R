# 1. Soru: R’da bir değişken nasıl tanımlanır ve farklı veri türleri nelerdir? Örnekler verin.
# Cevap: numeric, integer, complex, string, boolean veri türleri vardır. işte örnekler..

yas <- 22 # numeric veri tipi
isim <- "Dila" # string veri tipi
aktif_ogrenci <- TRUE # boolean veri tipi

isim == "Dila" # TRUE
aktif_ogrenci | FALSE # TRUE
yas + 5 == 27 # TRUE


# 2. Soru: Yerleşik fonksiyonlar nasıl kullanılır? Bir vektörün toplamını, ortalamasını ve uzunluğunu nasıl bulabilirsiniz?
# Cevap: c() ile bir vektör tanımlayabiliriz. sum() ile toplamını, mean() ile ortalamasını length() ile vektörün büyüklüğünü bulabiliriz.

vektor <- c(10,20,50,30,3)

toplam <- sum(vektor)
paste("Toplam:", toplam)

ortalama <- mean(vektor)
paste("Ortalama:", ortalama)

uzunluk <- length(vektor)
paste("Uzunluk:", uzunluk)

# 3. Soru: Vektörler, listeler, matrisler ve data frameler nedir? Her biri için örnekler verin.
# Cevap: Vektörleri bir önceki soruda inceledik. Matrisler birden fazla boyutlu vektör gibi düşünülebilir. Listeler birden fazla veri tipi içerebilir. Dataframe ise tablo gibi bir veri tipidir.

liste <- list(isim="Dila", yas=22)
matris <- matrix(c(1,2,3,4,5,6), nrow = 3, ncol = 2)

liste$yas <- 23
print(liste) # yaş 23 olarak değişti

matris[1,2] <- 10
print(matris) # 4, 10 olarak değişti.


# 4. Soru: R’da veri nasıl içe aktarılır ve kaydedilir? Hangi fonksiyonlar kullanılır?
# Cevap: read.csv() fonksiyonu ile csv verisi içe aktarılabilir.

veri <- read.csv("data/example_data.csv")
head(veri)

write.csv(veri, "data/output.csv", row.names = FALSE) # output.csv olarak data klasörünün içine veri yazar.

# 5.1 Soru: R’da vektörlerle ilgili daha fazla işlemler nasıl yapılır? Vektörlerin uzunluğu, elemanlarının toplamı ve elemanlarına göre mantıksal karşılaştırmalar nasıl yapılır?
# Cevap: 2. Soruda çoğunu cevaplamıştık. işte elemanların mantıksal karlılaştırılması...

# En küçük ve en büyük elemanları bulun
min(vektor)
max(vektor)
# Vektörü sıralayın
sort(vektor)

# 5.2 Soru: Listeler içinde farklı veri türlerini nasıl kullanırsınız? Liste elemanlarına nasıl erişir, günceller ve yeni eleman ekleyebilirsiniz?
# Cevap: Aşağıda mevcut.

liste <- list(isim = "Dila", yas = 22, ogrenci_mi = TRUE)

# Liste elemanlarına erişin
liste$isim
liste$yas
liste$ogrenci_mi

# Liste elemanlarını güncelleyin
liste$ad <- "Mustafa"
liste$yas <- 25

# Listeye yeni eleman ekleyin ve bir elemanı silin
liste$bolum <- "Uluslararası İlişkiler"
liste$ogrenci_mi <- NULL

liste # Güncellenmiş listeyi görüntüleme

# Liste içinde başka bir vektör ekleyin ve ilk elemana erişin
liste$notlar <- c(85, 90, 78)
final_notu <- liste$notlar[3]

# 5.3 Soru: Matrislerle yapılan işlemler nelerdir? Matris elemanlarına erişim, matris toplama, çarpma ve matris altkümesi oluşturma işlemleri nasıl yapılır?
# Cevap: Aşağıda mevcut.

# Bir matris oluşturun ve elemanlarına erişin
matris <- matrix(1:9, nrow = 3, ncol = 3)
matris[3, ] # 3. Satır
matris[, 1] # 1. Sütun


# İki matrisin toplanması ve çarpılması
matris1 <- matrix(1:4, nrow = 2)
matris2 <- matrix(5:8, nrow = 2)
matris1 + matris2
matris1 %*% matris2

# Matris altkümesi oluşturun ve boyutunu bulun
altkume <- matris[1:2, 2:3]
dim(matris) # Matrisin boyutu (3x3)

# 5.4 Soru: Data frameler üzerinde nasıl işlemler yapılır? Data frame elemanlarına erişim, veri ekleme ve güncelleme nasıl yapılır?
# Cevap: Aşağıda mevcut.

df <- data.frame(isimler = c("Ali", "Ayşe", "Fatma"), yas = c(23, 30, 27), ogrenci_mi = c(TRUE, FALSE, TRUE))

df$isimler # isimleri yazdır
df[1, ] # 1. satırı yazdır
df[,2] # 2. sütunu yazdır (yaşlar)

# Data frame'e yeni bir sütun ekleyin
df$bolum <- c("Matematik", "İstatistik", "Biyoloji")

# Data frame'deki bir hücreyi güncelleyin ve yeni satır ekleyin
df$yas[2] <- 32 # 2. yaşı (30) 32 ile değiştir.

yeni_satir <- data.frame(isimler = "Dila", yas = 22, ogrenci_mi = TRUE, bolum = "Uluslararası İlişkiler")
df <- rbind(df, yeni_satir) # Row bind satır eklemek için kullanılır

head(df) # Son hali görüntüle