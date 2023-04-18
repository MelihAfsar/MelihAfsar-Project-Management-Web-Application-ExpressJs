# Project Management Web Application

## Proje Hakkında
* Marmara üniversitesinde çalışan kısmi zamanlı öğrencilerin, akademisyenlerin, teknikerlerin arasında zaman zaman fakülte içerisinde yapılacak görevlerle ilgili iletişim problemleri oluşmaktadır. Bu durum zaman kaybına yol açmaktadır. 

* Yeni kurulan fakültemizin gelişmesi ve ayrıca veri tabanı yönetim sistemlerinde kendimizi geliştirmek amacıyla bu proje gerçekleştirilmiştir. 

* Proje içeriği, Teknoloji Fakültesi Bilgisayar Bölümü özelinde kullanılacak bir web portalı özelinde panel üzerinden üniversite akademisyenleri, kısmı zamanlı çalışan öğrencilere görev atayabilir, bu görevi o an boşta olan öğrencilerden biri alabilir, görev takibini yapabilir.

* Görev takibinde, hangi işin hangi öğrenciye verildiği, o işin son durumu hakkında, ne zaman bitirilmesi gerektiği gibi konularda bilgilendirmeye sahiptir. Son olarak öğretim görevlisinin verilen görevin bitirilmesi durumunda kontrol etme ve gerekirse tekrar revize ettirme hakkı vardır. 

* Veri tabanına kayıtlı olan tüm öğretim görevlileri ve öğrenciler bu görevleri görebilmektedirler.

<hr>

## Proje Yapısı
* Frontend: HTML, CSS, Javascript, React
* Backend: Node.js, Express.js
* Database: PostgreSQL

Bu repository'de sadece backend kısmı bulunmaktadır. Frontend repository'si için [buraya](https://github.com/MelihAfsar/Project-Management-Web-Application-React) tıklayabilirsiniz.

## Proje Gereksinimleri
* Node.js
* npm
* PostgreSQL

<hr>

## Kurulum
Bu backend repository'si postgresql veritabanı kullanmaktadır. Projeyi doğrudan run etmek isterseniz öncelikle postgresql veritabanını çalıştırmalı ve restore1.sql backup dosyasını uygun şekilde veritabanında restore işlemini gerçekleştirmelisiniz. 

PostgreSQL veritabanını uygun şekilde oluşturduysanız, _aşağıdaki adımları takip edebilirsiniz._

* Projeyi klonlayın.

```bash
git clone https://github.com/MelihAfsar/MelihAfsar-Project-Management-Web-Application-ExpressJs.git
```
* Proje kök dizininde olduğunuza emin olun.
```
cd MelihAfsar-Project-Management-Web-Application-ExpressJs
```
* Terminalde aşağıdaki komutu çalıştırın.
```bash
npm install
```
* Projeyi çalıştırmak için aşağıdaki komutu çalıştırın.
```bash
npm start
```
<br>

Ya da dilerseniz **docker-compose** dosyasını çalıştırarak programı inceleyebilirsiniz. _Bunun için aşağıdaki adımları takip ediniz._

## Proje Docker Image Linkleri
* [Frontend](https://hub.docker.com/r/melihafsar/management-web-frontend "Frontend")
* [Backend](https://hub.docker.com/r/melihafsar/management-web-backend "Backend")

## Dockercompose ile Projeyi Çalıştırın

```sh 
# Dilerseniz projeyi build edin.
docker build -t management-web-backend .
```

```sh
#Ya da dockerhub üzerindeki en güncel image'lar ile projeyi çalıştırın.
docker compose up -d
```

> Uyarı veya hata mesajı almanız halinde: portlarınızın uygun olup olmadığını kontrol ediniz. Aşağıdaki mesajı dikkatle inceleyiniz.

> PostgreSQL veritabanı 5432 portu ile yayınlanmakta, backend uygulaması 5432 portu ile veritabanı iletişimi kurmaktadır. Aynı zamanda backend 3000 ile dışarıya açılmaktdadır. Frontend uygulamsı, backend ile haberleşmek için 3000 portunu kullanmaktadır. Aynı zamanda frontend'e 3001 portu ile ulaşılabilmektedir. 

<hr>

Uygulama ayaklandırıldığında `http://localhost:3001` adresine giderek web arayüzünü kullanabilir, <br> 
melihafsar@marun.edu.tr kullanıcısı ve 123456 şifresi ile giriş yapabilir ve deneyimleyebilirsiniz. <br>


`http://localhost:3000` adresine giderek backend'in çalıştığını kontrol edebilir, http://localhost:3000/docs adresine giderek swagger arayüzünü kullanabilirsiniz. <br>
<br>

![swagger ui](https://user-images.githubusercontent.com/77414773/232722360-2a1dd7c5-d4c9-43ab-9c08-5783e4c3f3af.png)

<br>

## Proje Klasör Yapısı


<img width="426" alt="project folder" src="https://user-images.githubusercontent.com/77414773/232722934-08d97e25-19a9-4315-bd77-e4f96e79ac9c.png">