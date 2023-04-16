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
Yukarıda belirtilen backend repository'si **docker-compose** dosyasını çalıştırarak programı inceleyebilirsiniz. Eğer veritabanı bağlantısı kullanmak istemiyorsanız. _Aşağıdaki adımları takip edebilirsiniz._

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
<hr>

## Proje Docker Image Linkleri
* [Frontend](https://hub.docker.com/r/melihafsar/management-web-frontend "Frontend")
* [Backend](https://hub.docker.com/r/melihafsar/management-web-backend "Backend")

## Dockerfile ile projeyi build etmek

```sh 
#Projeyi build edin.
docker build -t management-web-backend .
```

```sh
#Projeyi çalıştırın.
docker compose up -d
```
Uygulamayı çalıştırdıktan sonra `http://localhost:3001` adresine giderek web arayüzünü kullanabilirsiniz.

>Backend uygulaması default olarak 3000 portunda çalışmaktadır. Portu değiştirmek için `Dockerfile` ve `docker-compose`dosyasını düzenleyebilirsiniz.


<br>


## Proje Klasör Yapısı

<img width="502" alt="Screenshot 2023-04-15 at 13 57 44" src="https://user-images.githubusercontent.com/77414773/232209871-62c081a4-dfdb-4c94-8909-30e0411116bf.png">


