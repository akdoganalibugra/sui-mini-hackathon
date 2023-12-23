# Veritas Vault Service (VVS)

Bu repo, Rise in Organizasyonu tarafından düzenlenen "Move On Sui Mini Hackathon" etkinliği bünyesinde geliştirilen projeyi içermektedir.

## Proje Hedefi

Veritas Vault Service (VVS), Sui Network üzerinde kullanıcıların özel verilerini güvenli bir şekilde saklamalarını sağlamak üzere tasarlanmış bir akıllı kontrat projesidir. Kullanıcılar, blok zincir üzerinde özel verilerini depolayabilir ve sadece kendilerinin erişebileceği bir şekilde bu verilere ulaşabilir. Temel amacımız, kullanıcılara kendi veri kasalarını oluşturma ve yönetme imkanı sunarak veri gizliliğini en üst düzeye çıkarmaktır.

## Proje Amaçları

- Kullanıcılara, blok zincir üzerinde güvenli bir şekilde veri depolama kasası imkanı sağlamak.
- Verilerin sadece sahipleri tarafından okunabilir olmasını sağlamak.
- Kullanıcıların kişisel veri güvenliğini en üst düzeye çıkarmak.

## Proje Kapsamı

Bu projenin odak noktası, akıllı kontrat geliştirmektir. Şu aşamada frontend ve backend geliştirmeleri projenin kapsamında yer almamaktadır.

## Fikir Özeti

Veritas Vault Service, kullanıcıların güvenli bir şekilde özel verilerini saklamalarını sağlayarak dijital güvenliği artırmayı hedefler. Akıllı kontrat sayesinde, kullanıcılar verilerini blok zincirine güvenli bir şekilde gönderebilir ve sadece kendi özel anahtarları ile bu verilere erişebilir.

## Vizyon ve Misyon

**Vizyon:** Veritas Vault Service, bireylere dijital varlıklarını güvenle yönetme ve depolama konusunda lider bir çözüm sunmayı amaçlamaktadır.

**Misyon:** Kullanıcıların veri gizliliğini korumak ve onlara kendi veri kasalarını kontrol etme imkanı sunarak dijital dünyada güvenli bir ortam sağlamak.

## İş Akışı

1. Kullanıcılar, Sui Network üzerinde geliştirilen Move akıllı kontratı aracılığıyla blok zincire özel verilerini güvenli bir şekilde gönderir.
2. Akıllı kontrat, bu verileri güvenli bir şekilde depolar ve sadece sahibi tarafından erişilebilecek şekilde saklar.
3. Kullanıcılar, kendi özel anahtarları ile akıllı kontrat aracılığıyla verilerine erişebilirler.

## Teknik

### Güvenlik

VVS, verileri Sui Network üzerinde güvenli bir şekilde akıllı kontrat aracılığıyla depolar. Verilerin sahipliği, kullanıcı adresinin özel anahtarı kullanılarak yapılır. Bu sayede, veriler sadece kullanıcının kendisi tarafından okunabilir.

### Akıllı Kontrat

Bu kod, VVS gereksinimleri gereği ilk aşama olarak aşağıdaki özelliklerini sağlar:

```
create() metodu, yeni bir veri kasası oluşturur.

add_data() metodu, veri kasasına veri ekler.

get_data() metodu, veri kasasından veri alır.
```
## Gelecekteki Geliştirmeler

VVS projesinin gelecekteki geliştirmeleri arasında şunlar yer almaktadır:

- Akıllı kontrat update & optimizasyon
- Frontend ve backend geliştirmeleri
- Veri şifrelemesi için daha güçlü algoritmalar
- Veri erişim kontrolünü daha da güçlendirmek için mekanizmalar


## Sonuç
VVS, kullanıcıların özel verilerini güvenli bir şekilde saklamaları için güçlü bir çözüm sunmaktadır.

---