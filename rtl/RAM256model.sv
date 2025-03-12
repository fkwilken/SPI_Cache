module RAM256model #(parameter   USE_LATCH=1,
                            WSIZE=2 ) 
(
    input   wire                CLK,    // FO: 2
    input   wire [WSIZE-1:0]     WE0,     // FO: 2
    input                        EN0,     // FO: 2
    input   wire [7:0]           A0,      // FO: 5
    input   wire [(WSIZE*8-1):0] Di0,     // FO: 2
    output  logic [(WSIZE*8-1):0] Do0
);

logic [15:0] mem [255:0];

always_ff @ (posedge CLK) begin
    if (EN0) begin
        Do0 <= mem[A0];

        if (|WE0) begin
            mem[A0] <= Di0;
        end
    end
end

endmodule