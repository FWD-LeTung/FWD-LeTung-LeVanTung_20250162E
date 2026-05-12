`timescale 1ns / 1ps

module tb_hazard;

    // 1. Khai báo tín hiệu đầu vào cho Hazard Unit
    reg Memread;
    reg [31:0] inst;
    reg [4:0] Rd;

    // 2. Khai báo tín hiệu đầu ra
    wire stall;

    // 3. Khởi tạo module (DUT)
    hazard_detection_unit DUT (
        .Memread(Memread),
        .inst(inst),
        .Rd(Rd),
        .stall(stall)
    );

    // Các biến phụ để testbench dễ đọc hơn
    reg [4:0] Rs1_test;
    reg [4:0] Rs2_test;
    integer errors = 0;

    // 4. Task tự động kiểm tra kết quả
    task check;
        input exp_stall;
        begin
            // MẸO: Tự động ghép Rs1 và Rs2 vào đúng vị trí trong lệnh 32-bit (inst)
            // Rs1 nằm ở bit [19:15], Rs2 nằm ở bit [24:20]
            inst = (Rs2_test << 20) | (Rs1_test << 15);
            
            #10; // Đợi 10ns để mạch xử lý
            
            if (stall !== exp_stall) begin
                $display("FAIL: Memread=%b, Rd=%d, Rs1=%d, Rs2=%d -> Thuc te Stall=%b (Mong doi: %b)", 
                          Memread, Rd, Rs1_test, Rs2_test, stall, exp_stall);
                errors = errors + 1;
            end else begin
                $display("PASS: Memread=%b, Rd=%d, Rs1=%d, Rs2=%d -> Stall=%b", 
                          Memread, Rd, Rs1_test, Rs2_test, stall);
            end
        end
    endtask

    // 5. Kịch bản chạy mô phỏng
    initial begin
        $display("===== BAT DAU TEST HAZARD DETECTION UNIT =====");

        // Khởi tạo
        Memread = 0; Rd = 0; Rs1_test = 0; Rs2_test = 0; inst = 0;
        #10;

        // TEST CASE 1: Lệnh bình thường, không trùng gì cả
        Memread = 0; Rd = 7; Rs1_test = 5; Rs2_test = 6; 
        check(0); // Mong đợi: Không stall (0)

        // TEST CASE 2: Trùng thanh ghi (Rd = Rs1 = 5) nhưng KHÔNG phải lệnh Load (Memread = 0)
        Memread = 0; Rd = 5; Rs1_test = 5; Rs2_test = 6; 
        check(0); // Mong đợi: Không stall (0) - Vì đây là Hazard thường, Forwarding lo

        // TEST CASE 3: LOAD-USE HAZARD trên Rs1 (Rd trùng Rs1)
        Memread = 1; Rd = 5; Rs1_test = 5; Rs2_test = 6; 
        check(1); // Mong đợi: STALL (1)

        // TEST CASE 4: LOAD-USE HAZARD trên Rs2 (Rd trùng Rs2)
        Memread = 1; Rd = 8; Rs1_test = 2; Rs2_test = 8; 
        check(1); // Mong đợi: STALL (1)

        // TEST CASE 5: Lệnh Load (Memread=1), nhưng Rd không trùng Rs1 hay Rs2
        Memread = 1; Rd = 9; Rs1_test = 1; Rs2_test = 2; 
        check(0); // Mong đợi: Không stall (0)

        // Tổng kết
        $display("==============================================");
        if (errors == 0)
            $display("===== CHUC MUNG! TAT CA CAC TEST DEU PASS =====");
        else
            $display("===== CANH BAO: CO %0d TEST BI SAI !!! =====", errors);
        $display("==============================================");

        $stop;
    end

endmodule