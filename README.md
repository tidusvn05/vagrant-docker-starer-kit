
## Vagrant 
- Vagrant là 1 công cụ, 1 giải pháp để xây dựng và quản lý các máy ảo.

##### Keywords
- box: những template có sẳn mà bạn hoặc cộng đồng đóng góp
- Provider: vagrant có thể làm việc với nhiều nền tảng ảo hóa: virtualbox, wmware, openstack, HyperV, ...
- vm, virtual machine: là máy ảo của provider, được tạo ra và quản lý bởi vagrant
- Vagrantfile: là file cấu hình mặc định mà vagrant hiểu và có thể chạy nó.
- cloud: là store để lưu trữ các box, bạn có thể tìm kiểm trên đó. URL: https://app.vagrantup.com/boxes/search

* Commands
- vagrant box list: xem danh sách các box template đang có ở máy.
- vagrant up: Chay máy ảo từ file mà bạn config (Vagrantfile), nếu chạy lần đầu sẽ down box và tạo mới máy ảo.
- vagrant status: Xem trạng thái hiện tại có 
- vagrant halt: dừng các máy ảo đang chạy
- vagrant help: hướng dẫn về các lệnh khác.

(*) Các lệnh trên hầu hết có ảnh hưởng trong thư mục đang chạy.

## Docker
Docker là một nền tảng cho developers và sysadmin để develop, deploy và run application với container. Nó cho phép tạo các môi trường độc lập và tách biệt để khởi chạy và phát triển ứng dụng và môi trường này được gọi là container. Khi cần deploy lên bất kỳ server nào chỉ cần run container của Docker thì application của bạn sẽ được khởi chạy ngay lập tức.

* Keywords
- image: là các container template mà bạn hoặc cộng đồng đóng góp
- container: là một máy ảo (của docker), được tạo ra từ image.
- registry: là store để lưu trữ các image.
- docker hub: là registry (store) lớn nhất, mặc định docker sử dụng registry này.
- volumes: lưu trữ dữ liệu, hoặc mapping dữ liệu giữa máy host và container.
- docker compose: là công cụ cho phép run app với nhiều Docker containers 1 cách dễ dàng hơn. Docker Compose cho phép bạn config các command trong file docker-compose.yml để sử dụng lại
- Docker Swarm, k8s: giải pháp chạy docker trên production. Rất phù hợp cho microservices.


* Commands
- docker images: xem danh sách các images.
- docker ps: xem danh sách container đang chạy.
- docker ps -a: xem tất cả container
- docker run: để chạy nhanh 1 container từ image.
- docker exec -ti <container_name> <bash|sh>: ssh vào container sử dụng shell là bash hoặc sh
- docker-compose up: để chạy các containers thông qua file cấu hình trong docker-compose.yml
- docker-compose up --build: build và chạy các containers thông qua file cấu hình trong docker-compose.yml
- docker-compose stop: dừng các container đang chạy trong file cấu hình trong docker-compose.yml.
- docker-compose down: remove các containers đang chạy trong file cấu hình trong docker-compose.yml.
- docker help: hướng dẫn về các lệnh khác của docker. 
- docker-compose help: hướng dẫn về các lệnh khác của docker-compose


