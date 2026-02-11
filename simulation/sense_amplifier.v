

module saff (
    input  wire clk,      
    input  wire rst,      
    input  wire d,        
    output reg  q,        
    output wire qb        
);

assign qb = ~q;


always @(posedge clk or posedge rst) begin
    if (rst)
        q <= 1'b0;
    else
        q <= d;  
end

endmodule
