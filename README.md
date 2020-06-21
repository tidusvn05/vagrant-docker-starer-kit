
## Vagrant 
1. Định nghĩa
- Vagrant là 1 công cụ, 1 giải pháp để xây dựng và quản lý các máy ảo.

2. Keywords
- box: những template có sẳn mà bạn hoặc cộng đồng đóng góp
- Provider: vagrant có thể làm việc với nhiều nền tảng ảo hóa: virtualbox, wmware, openstack, HyperV, ...
- vm, virtual machine: là máy ảo của provider, được tạo ra và quản lý bởi vagrant
- Vagrantfile: là file cấu hình mặc định mà vagrant hiểu và có thể chạy nó.
- cloud: là store để lưu trữ các box, bạn có thể tìm kiểm trên đó. URL: https://app.vagrantup.com/boxes/search

3. Commands
- vagrant box list: xem danh sách các box template đang có ở máy.
- vagrant up: Chay máy ảo từ file mà bạn config (Vagrantfile), nếu chạy lần đầu sẽ down box và tạo mới máy ảo.
- vagrant status: Xem trạng thái hiện tại có 
- vagrant halt: dừng các máy ảo đang chạy

(*) Các lệnh trên hầu hết có ảnh hưởng trong thư mục đang chạy.

## Docker

