# Kuper360 Pazaryeri Karlılık Motoru

## Amaç

Bir ürünün farklı pazaryerlerinde satılması durumunda gerçek karlılığını hesaplamak.

Amaç sadece başabaş fiyatı görmek değil, karar verebilmek.

Desteklenecek platformlar:

* Trendyol
* Hepsiburada
* Amazon
* N11
* Çiçeksepeti
* Pazarama
* Diğer platformlar

## Veri Kaynağı

Ürün bilgileri Ürün Yönetimi modülünden alınır.

* Ürün adı
* Ürün kodu
* Barkod
* Alış fiyatı
* KDV
* Ürün ölçüleri
* Desi
* Koli bilgileri

## Hesaplama Parametreleri

### Ürün Maliyeti

* Alış fiyatı
* KDV
* Kur farkı

### Pazaryeri Giderleri

* Komisyon oranı
* Hizmet bedeli
* Platform giderleri

### Lojistik

* Kargo maliyeti
* Paketleme maliyeti
* Desi etkisi

### Reklam

* Reklam bütçesi
* Reklam maliyet oranı

### Riskler

* İade maliyeti
* Hasar maliyeti
* Operasyon maliyeti

## Çıktılar

### Başabaş Noktası

Ürünün zarar etmeden satılabileceği minimum fiyat.

### Minimum Karlı Fiyat

Belirlenen kar oranına göre minimum satış fiyatı.

### Net Kar

Satış sonrası elde edilen gerçek kar.

### Kar Marjı

Yüzdesel kar oranı.

### Platform Karşılaştırması

Aynı ürün için:

* Trendyol
* Amazon
* Hepsiburada
* N11

karşılaştırmalı kar analizi.

## Uyarı Sistemi

Sistem aşağıdaki durumlarda uyarı vermeli:

* Zarar eden ürün
* Çok düşük marjlı ürün
* Kargo maliyeti yüksek ürün
* Komisyon nedeniyle zarar eden ürün

## Toplu Analiz

Birden fazla ürün seçilerek:

* Toplu karlılık analizi
* Toplu fiyat güncelleme
* Toplu raporlama

yapılabilmelidir.

## Raporlar

* En karlı ürünler
* En düşük marjlı ürünler
* Platform bazlı kar analizi
* Aylık karlılık raporu
