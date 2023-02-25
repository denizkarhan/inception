## Docker Nedir?

- Docker, yazılımcıların yazılım uygulamalarını taşıması, dağıtması ve çalıştırması için kullanabilecekleri açık kaynaklı bir yazılım platformudur. Docker, bir "konteynerleştirme" teknolojisi kullanarak bir uygulamayı çalıştırmak için gereken tüm bağımlılıkları ve sistem kaynaklarını bir paket halinde paketler.
- Docker konteynerleri, her biri kendi dosya sistemleri, ağ bağlantıları ve özel ayarları olan izole edilmiş çalışma ortamlarıdır. Bu sayede, farklı uygulama sürümleri ve bağımlılıkları gibi farklı gereksinimleri olan uygulamaları aynı makinede sorunsuz bir şekilde çalıştırabilirsiniz. Docker konteynerleri, uygulamaların hızlı bir şekilde oluşturulmasını, dağıtılmasını ve ölçeklendirilmesini sağlayarak yazılımcılara ve sistem yöneticilerine büyük kolaylık sağlar.
- Docker, birçok farklı platformda (Windows, Linux, macOS vb.) çalışabilir ve önceden oluşturulmuş konteyner imajlarına erişmek için Docker Hub gibi bir merkezi havuz sunar. Bu imajlar, önceden yapılandırılmış bir yazılım yığınına sahip hazır kullanıma sunulabilir ve kullanıcılar bu imajları kullanarak hızlı bir şekilde uygulama oluşturabilirler.

## Neden Docker’a ihtiyacımız var?

- Docker gibi konteyner teknolojilerine ihtiyacımız var çünkü modern yazılım uygulamalarının geliştirilmesi, dağıtımı ve yönetimi giderek daha karmaşık hale geliyor. Geleneksel olarak, uygulamalar tek bir makinede çalıştırılır ve bu makineye özgü donanım ve yazılım kaynaklarına bağlıdır. Ancak günümüzde, uygulamalar farklı ortamlarda çalıştırılmalı, farklı sistem gereksinimlerine ve bağımlılıklara sahip olabilirler. Bu nedenle, uygulamaların taşınabilirliği, hızlı ve kolay dağıtımı ve yönetimi önem kazanmaktadır.
    
    
    
- Docker, yazılımcıların bu sorunları çözmelerine yardımcı olur. Konteyner teknolojisi, uygulamaların donanım, yazılım ve sistem kaynaklarının izole edilmiş bir ortamda çalışmasını sağlar. Bu izolasyon, uygulamaların makineye özgü sistem kaynaklarına bağlı olmamasını ve farklı ortamlarda çalıştırılabilecek şekilde paketlenmesini sağlar. Bu da uygulamaların daha hızlı ve kolay dağıtımını, daha iyi taşınabilirliği ve daha güvenli bir şekilde çalışmasını mümkün kılar.
- Docker ayrıca, bir uygulamanın herhangi bir ortamda hızlı bir şekilde dağıtılması için önemli bir araçtır. Örneğin, bir uygulamayı geliştirirken birçok farklı ortamda test etmeniz gerekebilir. Docker konteynerleri, uygulamanın her ortamda aynı şekilde çalışmasını sağlar. Ayrıca, Docker imajları sayesinde önceden yapılandırılmış uygulama yığınları kullanarak uygulama oluşturmak daha hızlı ve kolay hale gelir.
    
    
    ![docker_uygulamalardaki_şeması](https://user-images.githubusercontent.com/81527587/221250395-7f8c563a-a2ef-4fbb-b69d-aa58843d434b.jpeg)


Docker bunu yaparken **container** yapısından yararlanıyor. Peki Container Nedir?

## Container Nedir?

Yazılım dünyasında, containerlar (konteynerler) izole edilmiş bir çalışma ortamı sağlayan sanal bir platform olarak kullanılır. Containerlar, bir uygulamanın tüm bağımlılıklarını (diğer yazılım bileşenleri, kütüphaneler, sistem dosyaları vb.) ve çalışma zamanı gereksinimlerini içeren bir paketleme teknolojisidir. Böylece, bir uygulama çalıştırılması gereken herhangi bir ortamda, container'ın içindeki tüm gereksinimleriyle birlikte taşınabilir.

![co![container giriş](https://user-images.githubusercontent.com/81527587/221250473-b58dcdfe-49f5-4ab7-a975-2f5ee6288687.png)

Containerlar, bir uygulamanın kaynak kodundan derlenerek oluşturulan uygulama imajlarından türetilir. Bu uygulama imajı, birçok farklı platformda (örneğin, farklı işletim sistemleri, farklı bulut sağlayıcıları, farklı donanımlar vb.) çalışacak şekilde tasarlanmıştır. Container'ın içindeki tüm bileşenler, konteynerizasyon işlemi sırasında belirtilen ortamda izole edilmiş bir çalışma ortamı sağlar. Bu nedenle, bir container, kendi sanal dosya sistemi, ağ arayüzleri, kullanıcı hesapları vb. gibi izole edilmiş özelliklere sahiptir.

Container teknolojisi, uygulamaların taşınabilirliğini artırırken, aynı zamanda uygulamaların daha hızlı ve kolay bir şekilde dağıtımını, ölçeklendirilmesini ve yönetimini sağlar. Örneğin, birden fazla uygulamanın aynı sunucuda çalıştırılması gerekiyorsa, her uygulama için ayrı bir container kullanarak uygulamaların birbirleriyle etkileşime girmeden çalışmasını sağlamak mümkündür. Ayrıca, container'lar sayesinde uygulamalar hızlı bir şekilde dağıtılabilir ve değiştirilebilir. Bu da uygulama geliştirme sürecinde verimliliği artırır ve son kullanıcılar için daha iyi bir deneyim sağlar.

- docker Linux'de bu container türlerinden **LXC container** türünü kullanmaktadır. Windows'da ise bu iş için kullanılan adı **Windows Server Container Support**'dur.
- İşte bu container'ları yönetmek oldukça zor ve low level bir işlem olduğundan dolayı docker bize bu işleri kolaylaştırmak için high level birçok araç sunuyor.
    
    Böylece kullanıcılar container'ları istedikleri gibi kolaylıkla yönetebiliyor.
    
 ## Docker Nasıl Çalışıyor?

Docker'ın nasıl çalıştığını anlamak istiyorsanız ilk olarak İşletim sisteminin nasıl çalıştığını biraz anlamanız gerekmektedir. Örnek vermek gerekirse Linux İşletim sistemini ele alalım.

Tüm Linux tabanlı işletim sistemlerine bakacak olursanız bu işletim sistemleri temelde 2 farklı bileşeni içerisinde barındırır.

- OS Kernel
- Bir çok yazılım seti

OS Kernel donanım ile etikleşimden sorumludur. OS Kernel aynı kalır. Fakat üzerindeki yazılım setleri işletim sistemleri arasındaki farkları belirler. Bundan dolayı sürekli bir Linux dağıtımı gibi cümleler duyarsınız. Bu yazılım setleri bir çok farklılıklar içerebilir. Grafik arayüzleri, sürücüler, geliştiriciler için komut setleri ve çok daha fazlası.

- Sanal Makineler ve Containerler
    
    Sanal makineler, bir işletim sistemi ve gereksinim duyduğu tüm kaynaklar (CPU, bellek, disk vb.) dahil olmak üzere, tüm donanım kaynaklarını sanal olarak simüle eder. Sanal makinelerde, ana makinede çalışan bir hipervizör yazılımı, bir veya daha fazla sanal makine çalıştırır. Her sanal makine, kendi işletim sistemine, uygulama yığınına ve sanal donanım kaynaklarına sahiptir. Bu nedenle, her sanal makine, tamamen bağımsız bir ortamda çalışır.
    
![containers-vs-virtual-machines](https://user-images.githubusercontent.com/81527587/221250566-e850f3a1-66a9-438b-8cc5-0508bdda203a.jpeg)

    
Diğer yandan, konteynerlar, işletim sistemi seviyesinde bir sanallaştırma sağlar. Bir konteyner, ana makinede çalışan bir konteyner motoru tarafından yönetilir ve bir uygulama ve onun bağımlılıklarıyla birlikte bir işletim sistemi çekirdeğini paylaşır. Konteynerlar, uygulamanın yalnızca kendi gereksinim duyduğu kaynaklara erişmesine izin verir ve diğer konteynerlarla kaynakları paylaşabilir. Bu, birkaç avantaj sağlar; daha hafif, daha hızlı başlatılır ve daha az kaynak tüketir.
Bu farklılıkların bir sonucu olarak, sanal makineler daha yüksek düzeyde izolasyon sağlar, ancak daha yüksek bellek ve CPU kullanımına ihtiyaç duyarlar. Ayrıca, sanal makinelerin daha uzun süre başlatılması ve oluşturulması gerektiğinden daha yavaş bir performans sergilemesi de mümkündür. Öte yandan, konteynerlar daha hafif ve daha hızlıdır, ancak daha az izolasyon sağlarlar ve sadece aynı işletim sistemi çekirdeğini paylaşan uygulamalar arasında kullanılabilirler.
 
## Image Nedir?

Docker image, Docker konteynerlarının oluşturulmasını sağlayan bir şablon veya kalıp olarak düşünülebilir. Bir Docker image, bir uygulama veya hizmetin çalışması için gereken tüm bileşenleri içerir: kod, bağımlılıklar, yapılandırma dosyaları, ortam değişkenleri vb. Bu nedenle, Docker image'ı, bir sanal makine imajı veya bir uygulama paketi gibi düşünebilirsiniz.





Docker image'lar, Dockerfile adı verilen bir dosyada tanımlanır. Dockerfile, bir Docker image'ı oluşturmak için adım adım talimatlar içerir. Örneğin, bir Dockerfile'da, bir işletim sistemi, bir programlama dili yürütme ortamı ve bir uygulama sunucusu kurulumu gibi adımlar yer alabilir. Dockerfile'ı kullanarak Docker image'ınızı oluşturabilir ve ardından bu image'ı bir Docker konteynerında çalıştırabilirsiniz.

Docker image'lar, Docker Hub gibi bir Docker imaj deposunda paylaşılabilir. Bu, başkalarının uygulamalarınızı veya hizmetlerinizi daha kolay bir şekilde kullanmalarını sağlar. Ayrıca, Docker image'lar, Docker-compose veya Kubernetes gibi diğer Docker araçlarıyla birleştirilerek daha karmaşık hizmetlerin oluşturulmasına yardımcı olabilir.

## Docker Compose Nedir?

Docker Compose, birden fazla Docker konteynerini tek bir uygulama olarak çalıştırmak için kullanılan bir araçtır. Docker Compose, bir YAML dosyasında (docker-compose.yml) tanımlanmış birden fazla konteyneri aynı anda başlatarak, durdurarak veya yöneterek karmaşık uygulamaların kurulumunu ve yönetimini kolaylaştırır.

Docker Compose dosyası, uygulamanın çalışması için gereken konteynerleri, her konteynerin imajını, konteynerler arasındaki ağ yapılandırmasını ve konteynerlerin nasıl çalıştırılacağına ilişkin diğer konfigürasyon ayarlarını içerir. Örneğin, bir web uygulaması için Docker Compose dosyası, bir web sunucusu, bir veritabanı sunucusu ve bir önbellek sunucusu olabilir. Docker Compose, bu konteynerleri tek bir komutla başlatarak, tüm uygulamanın ayağa kaldırılmasını sağlar.

Docker Compose, birden fazla ortamda (örneğin, geliştirme, test veya üretim ortamı) çalıştırılabilen uygulamaların hızlı ve kolay bir şekilde kurulumunu sağlar. Ayrıca, Docker Compose, uygulamayı yönetmek için daha az komut satırı işlemi gerektirir, böylece uygulama yöneticilerinin zamanını ve çabasını azaltır.

## Dockerfile Nedir?

Dockerfile, Docker image'ı oluşturmak için kullanılan bir dosyadır. Bir Dockerfile, Docker imajının oluşturulması için gerekli tüm adımları ve komutları içerir. Bir Dockerfile, Docker Hub gibi bir imaj deposunda paylaşılabilir veya başka bir Docker kullanıcısı tarafından kullanılabilir.

Dockerfile, adım adım talimatlar içeren bir metin dosyasıdır. Bu talimatlar, Docker imajının oluşturulması için gereken her şeyi tanımlar. Örneğin, bir Dockerfile'da, hangi işletim sistemi kullanılacağı, hangi paketlerin kurulacağı, hangi dosyaların Docker imajına dahil edileceği ve hangi komutların çalıştırılacağı gibi adımlar yer alabilir.

Dockerfile'ı kullanarak, Docker imajı, Docker komut satırı aracılığıyla birkaç basit adımda oluşturulabilir. Dockerfile'ı doğru şekilde yapılandırarak, tekrar kullanılabilir, taşınabilir ve ölçeklenebilir Docker imajları oluşturabilirsiniz.
![dockerfile_yapısı](https://user-images.githubusercontent.com/81527587/221250772-45fc197b-3173-4531-a206-516cd03b83dc.png)
Dockerfile, temel olarak bir adım adım talimatlar dosyasıdır, ancak Dockerfile'da kullanılan komutlar, tüm Docker kullanıcıları tarafından bilinmesi gereken belirli bir yapıya sahip değildir. Bu nedenle, Dockerfile'ın yazımı, Docker kullanımının daha karmaşık ve zorlu bir yönüdür. Ancak, doğru şekilde yapılandırıldığında, Dockerfile, bir uygulamanın bağımlılıklarının ve diğer bileşenlerinin dahil edilmesi ve Docker imajının oluşturulması gibi işlemleri kolaylaştırır.

## **Dockerfile’dan image nasıl oluşturulur?**

Öncelikle Nginx çalışacak örnek bir Dockerfile oluşturalım.

* docker
FROM ubuntu:latest
RUN apt-get update && apt-get install -y nginx
WORKDIR /var/www/html
COPY . . #Hosttaki tüm dosyaları WORKDIR’de belirttiğimiz dizine kopyalıyoruz
EXPOSE 80/tcp
CMD ["nginx", " -g daemon off;"]


Şimdi Dockerfile’ı image haline getirelim.

Bunun için kullanacağımız komut:

bash
> docker image build --tag nginx-dfile .


Buradaki nokta, ‘bulunduğumuz dizindeki’ Dockerfile’ın derlenmesi gerektiğini belirtir.

Eğer başka bir dizinde ise ( --file ):

bash
> docker image build --tag nginx-dfile --file /dizin .

Eğer bu Dockerfile’ı Docker Hub’a göndereceksek, buna göre tag kısmını düzenlememiz gerekir:

bash
> docker image build --tag ferhatsarikaya/nginx-dfile .

Şimdi gelelim build işleminin tetiklenmesine. Bu işlemi yaptığımızda neler oluyor?

1. İlk satırda Ubuntu işletim sisteminin image’ini kullanacağını bildirdiğimiz için, ilgili image indirme işlemi başlayacak.
2. LABEL komutundakine göre etiketleme işlemi gerçekleşecek.
3. Son katman silinecek ve RUN komutu işletilerek gerekli kurulumlar yapılacak.
4. Çalışma dizini oluşturulacak ve bir önceki katman silinecek
5. Host üzerindeki dosyalar çalışma dizinine kopyalanacak ve bir önceki katman silinecek.
6. Container’ın iletişim kurulacak TCP portu atanacak ve bir önceki katman silinecek.
7. Nginx’e gönderilen komut çalıştırılacak.

Build işlemi tamamlanmış oldu.

- **.dockerignore**
    
    Bu dosya, image build ederken eklenmesini istemediğimiz dosyaların bir listesini eklemek için kullanıyoruz.
    

### Bazı örnek komutlar

```bash
docker run --publish 8080:8080 docker-gs-ping
```

Konteynerimiz için bir bağlantı noktası yayınlamak üzere, docker run komutunda`--publish`bayrağı ( kısaca) kullanacağız . Komutun `-p`biçimi.

Dolayısıyla, konteynerin içindeki limanı konteynerin dışındaki limana göstermek istersek, bayrağa geçerdik.`--publish[host_port]:[container_port]808030003000:8080--publish`

```bash
docker run -d -p 8080:8080 docker-gs-ping
```

Şimdiye kadar bu harika, ancak örnek uygulamamız bir web sunucusu ve terminalimizin konteynere bağlı olması gerekmiyor. Docker, kapsayıcınızı arka planda ayrılmış modda çalıştırabilir. `--detach`Bunu yapmak için veya `-d`kısaca kullanabiliriz . Docker, konteynerinizi daha önce olduğu gibi başlatacak ancak bu sefer konteynerden "ayıracak" ve sizi terminal komut istemine geri döndürecektir.

### Dockerfile komutları:

1. **`FROM`**: This is a command that is used in a Dockerfile to specify the base image to use as the starting point for building the Docker image. The base image provides the foundational layers for the image, and you can then add additional layers on top of it to customize the image for your specific needs.
2. **`RUN`**: This is a command that is used in a Dockerfile to execute a command in the terminal of the container. It is typically used to install software or libraries that are needed by the application.
3. **`CMD`**: This is a command that is used in a Dockerfile to specify the default command that should be run when a container is started from the image. It is used to specify the main command that the container should run when it is started.
4. **`services`**: This is a key in a Docker Compose file that is used to define the services that make up your application. A service is a container that runs a specific application or component of your application.
5. **`volumes`**: This is a key in a Docker Compose file that is used to define the persistent storage for your application. A volume is a piece of storage that is attached to a container and is used to store data that should persist even when the container is stopped or removed.
6. **`networks`**: This is a key in a Docker Compose file that is used to define the networks that the containers should be connected to A network is a virtual network that is used to connect containers and allow them to communicate with each other.

## Docker port mapping

Docker konteynerlerinde çalışan uygulamaların, ana bilgisayarda çalışan uygulamalarla etkileşim kurmasına izin veren bir özelliktir. Docker port mapping, konteynerlerin içindeki uygulamaların belirli bir porta bağlanmasını ve bu portun ana bilgisayarda belirli bir porta eşlenmesini sağlar.

Örneğin, bir Docker konteynerinde çalışan bir web sunucusu uygulaması, belirli bir porta bağlanarak web sitesini ana bilgisayar üzerinden erişilebilir hale getirebilir. Port mapping, Docker komutları aracılığıyla yapılandırılır ve ana bilgisayarın belirli bir portundan, Docker konteynerinin belirli bir portuna yönlendirilir.

Port mapping, Docker konteynerlerinin izole edilmesi nedeniyle gereklidir. Docker konteynerleri, farklı bir ağ ortamında çalışabilir ve ana bilgisayarda belirli bir portun açık olması, Docker konteynerine otomatik olarak erişim sağlamaz. Bu nedenle, Docker port mapping, konteynerlerin içindeki uygulamaların, ana bilgisayarda çalışan uygulamalarla iletişim kurabilmesini sağlar ve uygulamaların etkileşimini kolaylaştırır.

`docker run -p DIS_PORT:IC_PORT imageName`

şeklinde düşünülebilir. yani

### Docker konteyner portları

Konteyner çalışmaya başladığında, bir veya daha fazla port açar. Ancak bu portlar, konteynerin içindedir. Konteynere yerel bilgisayardan erişmek istediğimiz için, bir yerel portu konteynerin açtığı portlardan birine eşlememiz gerekiyor.

`docker run -p 8089:80 image-name`

Konteyner 80 numaralı portu açıyorsa, docker run -p 8089:80 image-name komutunu kullanarak dış ve iç portları eşleyebiliriz. -p bayrağı, dış ve iç portları eşlememizi sağlar ve konteynere localhost:8089'a erişmemize izin veriyor.

![Docker-ports](https://user-images.githubusercontent.com/81527587/221251043-1739613b-768a-475c-8367-9bf85c875bb4.png)


## docker-compose ports:

# P***ortlar***

*Şimdi portlar* bölümünü kontrol edelim . *Expose'da* olduğu gibi , bu özellik kaptan açığa çıkarmak istediğimiz bağlantı noktalarını tanımlar. *Ancak açığa çıkarma* yapılandırmasından farklı olarak, **bu bağlantı noktalarına dahili olarak erişilebilir ve ana makinede yayınlanır** .

Yine, daha önce olduğu gibi, ayrılmış bölümde her hizmet için bağlantı noktaları tanımlayabiliriz, ancak yapılandırma daha karmaşık olabilir. Öncelikle, yapılandırmayı tanımlamak için iki sözdizimi (kısa ve uzun) arasından seçim yapmalıyız.

# **Kısa Sözdizimi**

Kısa olanı analiz ederek başlayalım. **Kısa sözdizimi, ana bilgisayar IP adresini, ana bilgisayar bağlantı noktasını ve kapsayıcı bağlantı noktasını ayarlamak için iki nokta üst üste ayrılmış bir dizedir** :

```
[HOST:]CONTAINER[/PROTOCOL]kopyala
```

Burada *HOST,* bir IP adresinden önce gelebilen bir ana bilgisayar bağlantı noktası numarası veya bağlantı noktası numaraları aralığıdır. IP adresini belirtmezsek Docker Compose, bağlantı noktasını tüm ağ arabirimlerine bağlar.

CONTAINER *,* bir konteyner bağlantı noktası numarası veya bağlantı noktası numaraları aralığını tanımlar.

*PROTOKOL,* kapsayıcı bağlantı noktalarını belirtilen protokolle sınırlar veya boşsa *TCP olarak ayarlar.* Sadece *CONTAINER*  kısmı zorunludur.

Artık sözdizimini bildiğimize göre, Docker Compose dosyamızda portları tanımlayalım:

```
services:
  myapp1:
    ...
    ports:
    - "3000"                             # container port (3000), assigned to random host port
    - "3001-3005"                        # container port range (3001-3005), assigned to random host ports
    - "8000:8000"                        # container port (8000), assigned to given host port (8000)
    - "9090-9091:8080-8081"              # container port range (8080-8081), assigned to given host port range (9090-9091)
    - "127.0.0.1:8002:8002"              # container port (8002), assigned to given host port (8002) and bind to 127.0.0.1
    - "6060:6060/udp"                    # container port (6060) restricted to UDP protocol, assigned to given host (6060)kopyala
```

Yukarıda sunulduğu gibi, kısa sözdiziminin farklı varyantlarını kullanarak ve daha kesin bir şekilde yapılandırarak aynı anda birden fazla kapsayıcı bağlantı noktası yayınlayabiliriz. Docker Compose, belirtilen tüm kapsayıcı bağlantı noktalarını ortaya çıkararak yerel makineden dahili ve harici olarak erişilebilir olmalarını sağlar.

*Daha önce olduğu gibi, açıktaki portları docker ps* komutuyla kontrol edelim :

```
> docker ps -a
CONTAINER ID   ... PORTS                                                                        NAMES
e8c65b9eec91   ... 0.0.0.0:51060->3000/tcp, 0.0.0.0:51063->3001/tcp, 0.0.0.0:51064->3002/tcp,   bael_myapp1
                   0.0.0.0:51065->3003/tcp, 0.0.0.0:51061->3004/tcp, 0.0.0.0:51062->3005/tcp,
                   0.0.0.0:8000->8000/tcp, 0.0.0.0:9090->8080/tcp, 0.0.0.0:9091->8081/tcp
                   127.0.0.1:8002->8002/tcp, 0.0.0.0:6060->6060/udpkopyala
```

Bir kez daha, *PORTS* sütununda, açığa çıkan tüm portları bulabiliriz. Okun solundaki değer, container'a dışarıdan ulaşabileceğimiz host adresini gösterir.

# **Uzun Sözdizimi**

**Uzun sözdizimini kullanarak portları aynı şekilde yapılandırabiliriz. Ancak iki nokta üst üste ile ayrılmış bir dize kullanmak yerine, her bir özelliği ayrı ayrı tanımlayacağız** :

```
services:
  myapp1:
  ...
  ports:
  # - "127.0.0.1:6060:6060/udp"
  - target: 6060
    host_ip: 127.0.0.1
    published: 6060
    protocol: udp
    mode: hostkopyala
```

Burada *hedef* zorunludur ve kısa sözdizimindeki *CONTAINER'a* eşdeğer olan, açığa çıkacak konteyner portunu (veya port aralığını) belirtir .

Ana *bilgisayar_ip*  ve  *yayınlanmış , kısa olandaki HOST'un* , ana bilgisayarın IP adresini ve bağlantı noktasını tanımlayabildiğimiz bölümleridir .

*Kısa söz dizimindeki PROTOCOL* ile aynı olan protokol *,* konteyner bağlantı noktasını belirtilen protokolle (veya boşsa *TCP ) kısıtlar.*

Kip  *,* bağlantı noktası yayımlama kurallarını belirten iki değerli numaralandırmadır. Yerel olarak bir bağlantı noktası yayınlamak için *ana bilgisayar* değerini kullanmalıyız . İkinci değer olan *giriş,* daha karmaşık konteyner ortamları için ayrılmıştır ve bağlantı noktasının yük dengeli olacağı anlamına gelir.

Sonuç olarak, herhangi bir kısa sözdizimi dizisi, uzun bir yapıyla kolayca temsil edilebilir. *Ancak, bir mod* özelliğinin olmaması nedeniyle tüm uzun sözdizimi yapılandırmaları kısa olana taşınamaz .

## Docker Networks

Docker varsayılan olarak gelen 3 farklı network türü vardır.

- Bridge
- None
- Host
    
    ![docker networks](https://user-images.githubusercontent.com/81527587/221251112-49a234e2-de43-44eb-b948-493177ef87cd.png)

    

### Bridge Network

Bu ağ, Docker tarafından varsayılan olarak oluşturulur ve tüm konteynerler, Docker host'unda oluşturulan sanal bir köprüye bağlanır.

Docker bridge network, her konteynere özel IP adresleri atar ve bu sayede konteynerler birbirleriyle iletişim kurabilirler. Konteynerlerin birbirlerine ve ana bilgisayar sistemine erişebilmesini sağlayarak, konteynerlerin ve ana bilgisayar arasında veri paylaşımını ve etkileşimini mümkün kılar.

`docker run --network=bridge mongo`

### None Network

Docker none network, konteynerlerin bir ağa bağlanmasını istemediğimiz durumlarda kullanılır. Bu ağ, Docker konteynerlerinin izole edilmesini sağlar ve konteynerlerin birbirleriyle veya ana bilgisayar sistemleriyle iletişim kurmalarını önler.

Docker none network, bazı özel senaryolarda kullanışlı olabilir. Örneğin, bir test senaryosunda, bir Docker konteyneri bir veritabanı sunucusunu taklit ediyorsa, bu konteynerin ağa bağlanmasına gerek yoktur ve Docker none network kullanılabilir.

Ancak, genel olarak, Docker konteynerlerinin diğer sistemlerle etkileşim kurması gerektiğinden, Docker none network, nadiren kullanılan bir ağ türüdür.

`docker run --network=none mongo`

### Host Network

Docker host network, konteynerlerin ayrı bir ağ oluşturmak yerine, doğrudan ana bilgisayarın ağına bağlanmasını sağlar. Bu sayede, konteynerlerin daha hızlı bir şekilde iletişim kurmalarını ve yüksek performans elde etmelerini sağlar.

`docker run --network=host mongo`

## Network: r**estart policies (--restart)**

Docker'ın yeniden başlama kuralı olan "restart" (yeniden başlatma) özelliği, konteynerlerin belirli bir şekilde yeniden başlatılmasını sağlar. Bu özellik, konteynerlerin hatalar veya kesintiler nedeniyle çökmeleri durumunda otomatik olarak yeniden başlatılmalarını sağlayarak, uygulamaların daha yüksek bir düzeyde sürekli çalışabilirliğini sağlar.

Docker restart özelliği, üç farklı seçeneğe ayrılır:

1. no (yeniden başlatma yok): Konteyner çöktüğünde yeniden başlatılmaz.
2. on-failure (başarısızlık durumunda yeniden başlatma): Konteyner çöktüğünde yeniden başlatılır.
3. always (her zaman yeniden başlatma): Konteyner durdurulduğunda bile yeniden başlatılır.


### SSL Sertifikası oluşturma

```docker
RUN mkdir -p /etc/nginx/ssl && openssl req -newkey rsa:4096 -x509 -days 365 -nodes \
-out /etc/ssl/MyCert.crt \
-keyout /etc/ssl/MyKey.key \
-subj "/C=FR/ST=PACA/L=NICE/O=42/OU=42/CN=dkarhan.42.fr/UID=dkarhan"
```

- **`mkdir -p /etc/nginx/ssl`**: /etc/nginx/ssl dizinini oluşturur. Bu dizin, Nginx tarafından kullanılan SSL/TLS sertifikalarını ve anahtarları depolamak için kullanılacaktır.
- **`openssl req -newkey rsa:4096 -x509 -days 365 -nodes -out /etc/ssl/MyCert.crt -keyout /etc/ssl/MyKey.key`**: Bu komut, yeni bir RSA 4096-bit anahtar çifti oluşturur ve bunu kullanarak 365 gün geçerli, kendine imzalı bir X.509 sertifikası oluşturur. "-nodes" bayrağı, anahtar dosyasının şifrelenmemiş olacağı anlamına gelir (yani şifresiz bir anahtar dosyası oluşturulacaktır). "-out" ve "-keyout" bayrakları, sertifika ve anahtar dosyalarının yolu ve dosya adını belirtir. "-subj" bayrağı, sertifikanın altında yer alacak konu (subject) adını belirtir. Bu örnekte konu adı "/C=FR/ST=PACA/L=NICE/O=42/OU=42/CN=dkarhan.42.fr/UID=dkarhan" olarak ayarlanmıştır.

Bu komut dosya sisteminde SSL/TLS sertifikası ve anahtarını oluşturur ve daha sonra bu dosyaları Nginx yapılandırmasında kullanılacak dizine kopyalamak üzere kullanılır.
