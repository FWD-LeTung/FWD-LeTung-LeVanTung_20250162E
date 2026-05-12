# Bộ Vi Xử Lý RISC-V Pipeline

Đây là mã nguồn Verilog triển khai bộ vi xử lý RISC-V với kiến trúc pipeline 5 giai đoạn, được trang bị các cơ chế chuyển tiếp (forwarding), dừng (stalling) và xóa (flushing). Dưới đây là sơ đồ mạch của bộ vi xử lý.

![image](https://user-images.githubusercontent.com/56905673/117547053-f932fe00-b046-11eb-91af-9291291d4f52.png)

Đây là đồ án học kỳ thuộc môn Kiến trúc Máy tính tại Đại học Habib. Module bộ nhớ lệnh đã được nạp sẵn thuật toán Bubble Sort được viết bằng ngôn ngữ Assembly RISC-V.

## Bắt Đầu

Hướng dẫn dưới đây sẽ giúp bạn chạy dự án trên trình duyệt web thông qua EDA Playground.

### Hướng Dẫn

Để thực hiện mô phỏng, bạn cần tạo một playground mới và tải lên hai file testbench.sv cùng design.sv. Trong tab design.sv, hãy thêm tất cả các file sv còn lại từ kho lưu trữ. Sau đó, tại tab 'Tools and Simulator', chọn 'Mentor Questa 2020.1'. Không cần thiết lập thời gian chạy.

## Giấy Phép

Dự án này được phát hành theo Giấy phép MIT - xem file [LICENSE.md](LICENSE.md) để biết chi tiết.

## Lời Cảm Ơn

* Đại học Habib đã cung cấp khóa học Kiến trúc Máy tính.
* Aiman Najeeb - trợ giảng của khóa học này, đã hỗ trợ xử lý sự cố, cung cấp tài liệu hướng dẫn thực hành và dẫn dắt từng bước trong quá trình xây dựng dự án.
* Hai thành viên nhóm Lama Imam và Ayeza Nasir đã hoàn thành việc xây dựng tất cả các thanh ghi pipeline và Bộ chuyển tiếp (Forwarding Unit).
