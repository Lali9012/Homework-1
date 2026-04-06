//this module implement the hw1 p2 
module hw1p2(
    output logic out,
    input  logic clk, reset, in
);

    logic [2:0] ns, ps;
	//ooutput block
    always_comb begin
        case (ps)
            3'b000: begin
                if (in) begin
                    ns  = 3'b100;
                    out = 1;
                end
                else begin
                    ns=3'b011;
                    out =0;
                end
            end
            3'b001: begin
                if (in) begin
                    ns= 3'b100;
                    out =1;
                end
                else begin
                    ns  = 3'b001;
                    out=0;
                end
            end
            3'b010: begin
                if (in) begin
                    ns  = 3'b000;
                    out=1;
                end
                else begin
                    ns = 3'b010;
                    out= 0;
                end
            end
            3'b100: begin
                if (in) begin
                    ns  = 3'b011;
                    out=0;
                end
                else begin
                    ns  = 3'b010;
                    out =0;
                end
            end

            3'b011: begin
                if (in) begin
                    ns  = 3'b010;
                    out= 1;
                end
                else begin
                    ns  = 3'b001;
                    out = 0;
                end
            end

            default: begin
                ns  = 3'b000;
                out =1'bx;
            end
        endcase
    end
	//next status block
    always_ff @(posedge clk) begin
        if (reset)
            ps<=3'b000;
        else
            ps<=ns;
    end
	 
endmodule 