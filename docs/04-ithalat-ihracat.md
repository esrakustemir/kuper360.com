# Kuper360 İthalat / İhracat Evrak Motoru

## Amaç

İthalat ve ihracat işlemlerinde kullanılan evrakları ürün ve CRM verilerinden otomatik oluşturmak.

Bu modül muhasebe yapmaz. Resmi muhasebe ve stok işlemleri Nebim tarafında yönetilir.

Kuper360 bu modülde operasyon, hazırlık ve evrak üretim merkezi olarak çalışır.

## Veri Kaynakları

### Ürün Yönetimi

* Ürün adı
* İngilizce ürün adı
* Ürün kodu
* Barkod
* HS Code / GTİP
* Menşei
* Net kg
* Brüt kg
* Koli bilgileri
* Koli içi adet
* Ürün ölçüleri
* Koli ölçüleri
* Birim fiyat
* Para birimi

### CRM

* Firma adı
* Yetkili kişi
* Telefon
* E-posta
* Ülke
* Şehir
* Adres
* Vergi bilgileri
* Dil
* Para birimi

## Belge Türleri

### İhracat Belgeleri

* Proforma Invoice
* Commercial Invoice
* Packing List
* Price List
* Quotation
* Order Form

### İthalat Belgeleri

* Proforma takibi
* Tedarikçi teklif kaydı
* Sipariş takibi
* Konteyner bilgisi
* Yükleme bilgisi
* Evrak kontrol listesi

## İhracat Akışı

1. CRM’den müşteri seçilir.
2. Ürün Yönetimi’nden ürünler seçilir.
3. Miktar ve fiyat girilir.
4. Para birimi seçilir.
5. Teslim şekli seçilir.
6. Ödeme şekli seçilir.
7. Sistem proforma oluşturur.
8. Gerekirse packing list ve commercial invoice üretilir.

## İthalat Akışı

1. CRM’den tedarikçi seçilir.
2. Ürün Yönetimi’nden ürünler seçilir.
3. Alış fiyatları girilir.
4. Koli, CBM ve ağırlık bilgileri hesaplanır.
5. Konteyner / sevkiyat bilgisi eklenir.
6. Evrak durumu takip edilir.
7. Tahmini maliyet hesaplanır.

## Teslim Şekilleri

* EXW
* FOB
* CIF
* CFR
* DDP
* DAP

## Ödeme Şekilleri

* Peşin
* Vadeli
* Akreditif
* Mal mukabili
* Evrak mukabili

## Takip Alanları

* Belge numarası
* Belge tarihi
* Teslim şekli
* Ödeme şekli
* Para birimi
* Toplam tutar
* Sevkiyat durumu
* Evrak durumu
* Notlar

## Çıktılar

* PDF belge
* Excel belge
* Yazdırılabilir format
* E-posta ile gönderilebilir belge
* Arşivlenmiş belge kaydı
