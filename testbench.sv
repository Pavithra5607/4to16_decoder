
module tb_decoder4to16;

    reg [3:0] in;
    reg en;
    wire [15:0] out;

    decoder4to16 uut (
        .in(in),
        .en(en),
        .out(out)
    );
  integer i;

    initial begin
      $dumpfile("decoder4to16.vcd");
      $dumpvars;
        $display("Time\tEn\tIn\tOut");
        $monitor("%0t\t%b\t%04b\t%b", $time, en, in, out);

        en = 0;
        in = 4'b0000; #10;
        in = 4'b1010; #10;

        en = 1;
        for (in = 0; in < 16; in = in + 1) begin
          in = i;
            #10;
        end

        en = 0;
        in = 4'b0111; #10;

        $finish;
    end

endmodule