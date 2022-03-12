module next_pc(input branch_taken,
               input jalr,
               input jal,
               input [31:0] branch_target,
               input [31:0] jalr_target,
               input [31:0] jal_target,
               input [31:0] pc_p_4,
               output reg [31:0] new_pc);
  
  always @(*) begin
    if (branch_taken) begin
      new_pc <= branch_target;
      end else if (jalr) begin
      new_pc <= jalr_target;
      end else if (jal) begin
      new_pc <= jal_target;
      end else begin
      new_pc <= pc_p_4;
    end
  end
  
endmodule
