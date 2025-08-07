module decoder4to16 (
    input  wire [3:0] in,     
    input  wire en,          
    output reg  [15:0] out    
);

    always @(*) begin
        if (en)
            out = 16'b0000000000000001 << in; 
        else
            out = 16'b0000000000000000;        
    end

endmodule