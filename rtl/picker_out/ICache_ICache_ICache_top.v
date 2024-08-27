module ICache_top;

  wire  clock;
  wire  reset;
  wire  auto_client_out_a_ready;
  wire  auto_client_out_a_valid;
  wire [3:0] auto_client_out_a_bits_source;
  wire [47:0] auto_client_out_a_bits_address;
  wire  auto_client_out_d_valid;
  wire [2:0] auto_client_out_d_bits_opcode;
  wire [3:0] auto_client_out_d_bits_source;
  wire [255:0] auto_client_out_d_bits_data;
  wire  auto_client_out_d_bits_corrupt;
  wire  io_ftqPrefetch_req_ready;
  wire  io_ftqPrefetch_req_valid;
  wire [49:0] io_ftqPrefetch_req_bits_startAddr;
  wire [49:0] io_ftqPrefetch_req_bits_nextlineStart;
  wire  io_ftqPrefetch_req_bits_ftqIdx_flag;
  wire [5:0] io_ftqPrefetch_req_bits_ftqIdx_value;
  wire  io_ftqPrefetch_flushFromBpu_s2_valid;
  wire  io_ftqPrefetch_flushFromBpu_s2_bits_flag;
  wire [5:0] io_ftqPrefetch_flushFromBpu_s2_bits_value;
  wire  io_ftqPrefetch_flushFromBpu_s3_valid;
  wire  io_ftqPrefetch_flushFromBpu_s3_bits_flag;
  wire [5:0] io_ftqPrefetch_flushFromBpu_s3_bits_value;
  wire  io_softPrefetch_0_valid;
  wire [49:0] io_softPrefetch_0_bits_vaddr;
  wire  io_softPrefetch_1_valid;
  wire [49:0] io_softPrefetch_1_bits_vaddr;
  wire  io_softPrefetch_2_valid;
  wire [49:0] io_softPrefetch_2_bits_vaddr;
  wire  io_stop;
  wire  io_fetch_req_ready;
  wire  io_fetch_req_valid;
  wire [49:0] io_fetch_req_bits_pcMemRead_0_startAddr;
  wire [49:0] io_fetch_req_bits_pcMemRead_0_nextlineStart;
  wire [49:0] io_fetch_req_bits_pcMemRead_1_startAddr;
  wire [49:0] io_fetch_req_bits_pcMemRead_1_nextlineStart;
  wire [49:0] io_fetch_req_bits_pcMemRead_2_startAddr;
  wire [49:0] io_fetch_req_bits_pcMemRead_2_nextlineStart;
  wire [49:0] io_fetch_req_bits_pcMemRead_3_startAddr;
  wire [49:0] io_fetch_req_bits_pcMemRead_3_nextlineStart;
  wire [49:0] io_fetch_req_bits_pcMemRead_4_startAddr;
  wire [49:0] io_fetch_req_bits_pcMemRead_4_nextlineStart;
  wire  io_fetch_req_bits_readValid_0;
  wire  io_fetch_req_bits_readValid_1;
  wire  io_fetch_req_bits_readValid_2;
  wire  io_fetch_req_bits_readValid_3;
  wire  io_fetch_req_bits_readValid_4;
  wire  io_fetch_resp_0_valid;
  wire [49:0] io_fetch_resp_0_bits_vaddr;
  wire [511:0] io_fetch_resp_0_bits_data;
  wire [47:0] io_fetch_resp_0_bits_paddr;
  wire [49:0] io_fetch_resp_0_bits_gpaddr;
  wire [1:0] io_fetch_resp_0_bits_exception;
  wire  io_fetch_resp_0_bits_mmio;
  wire  io_fetch_resp_1_valid;
  wire [49:0] io_fetch_resp_1_bits_vaddr;
  wire [1:0] io_fetch_resp_1_bits_exception;
  wire  io_toIFU;
  wire [47:0] io_pmp_0_req_bits_addr;
  wire  io_pmp_0_resp_instr;
  wire  io_pmp_0_resp_mmio;
  wire [47:0] io_pmp_1_req_bits_addr;
  wire  io_pmp_1_resp_instr;
  wire  io_pmp_1_resp_mmio;
  wire [47:0] io_pmp_2_req_bits_addr;
  wire  io_pmp_2_resp_instr;
  wire  io_pmp_2_resp_mmio;
  wire [47:0] io_pmp_3_req_bits_addr;
  wire  io_pmp_3_resp_instr;
  wire  io_pmp_3_resp_mmio;
  wire  io_itlb_0_req_valid;
  wire [49:0] io_itlb_0_req_bits_vaddr;
  wire [47:0] io_itlb_0_resp_bits_paddr_0;
  wire [49:0] io_itlb_0_resp_bits_gpaddr_0;
  wire  io_itlb_0_resp_bits_miss;
  wire  io_itlb_0_resp_bits_excp_0_gpf_instr;
  wire  io_itlb_0_resp_bits_excp_0_pf_instr;
  wire  io_itlb_0_resp_bits_excp_0_af_instr;
  wire  io_itlb_1_req_valid;
  wire [49:0] io_itlb_1_req_bits_vaddr;
  wire [47:0] io_itlb_1_resp_bits_paddr_0;
  wire [49:0] io_itlb_1_resp_bits_gpaddr_0;
  wire  io_itlb_1_resp_bits_miss;
  wire  io_itlb_1_resp_bits_excp_0_gpf_instr;
  wire  io_itlb_1_resp_bits_excp_0_pf_instr;
  wire  io_itlb_1_resp_bits_excp_0_af_instr;
  wire  io_perfInfo_only_0_hit;
  wire  io_perfInfo_only_0_miss;
  wire  io_perfInfo_hit_0_hit_1;
  wire  io_perfInfo_hit_0_miss_1;
  wire  io_perfInfo_miss_0_hit_1;
  wire  io_perfInfo_miss_0_miss_1;
  wire  io_perfInfo_bank_hit_1;
  wire  io_perfInfo_hit;
  wire  io_error_valid;
  wire [47:0] io_error_bits_paddr;
  wire  io_error_bits_report_to_beu;
  wire  io_csr_pf_enable;
  wire  io_csr_parity_enable;
  wire  io_fencei;
  wire  io_flush;


ICache ICache (
    .clock(clock),
    .reset(reset),
    .auto_client_out_a_ready(auto_client_out_a_ready),
    .auto_client_out_a_valid(auto_client_out_a_valid),
    .auto_client_out_a_bits_source(auto_client_out_a_bits_source),
    .auto_client_out_a_bits_address(auto_client_out_a_bits_address),
    .auto_client_out_d_valid(auto_client_out_d_valid),
    .auto_client_out_d_bits_opcode(auto_client_out_d_bits_opcode),
    .auto_client_out_d_bits_source(auto_client_out_d_bits_source),
    .auto_client_out_d_bits_data(auto_client_out_d_bits_data),
    .auto_client_out_d_bits_corrupt(auto_client_out_d_bits_corrupt),
    .io_ftqPrefetch_req_ready(io_ftqPrefetch_req_ready),
    .io_ftqPrefetch_req_valid(io_ftqPrefetch_req_valid),
    .io_ftqPrefetch_req_bits_startAddr(io_ftqPrefetch_req_bits_startAddr),
    .io_ftqPrefetch_req_bits_nextlineStart(io_ftqPrefetch_req_bits_nextlineStart),
    .io_ftqPrefetch_req_bits_ftqIdx_flag(io_ftqPrefetch_req_bits_ftqIdx_flag),
    .io_ftqPrefetch_req_bits_ftqIdx_value(io_ftqPrefetch_req_bits_ftqIdx_value),
    .io_ftqPrefetch_flushFromBpu_s2_valid(io_ftqPrefetch_flushFromBpu_s2_valid),
    .io_ftqPrefetch_flushFromBpu_s2_bits_flag(io_ftqPrefetch_flushFromBpu_s2_bits_flag),
    .io_ftqPrefetch_flushFromBpu_s2_bits_value(io_ftqPrefetch_flushFromBpu_s2_bits_value),
    .io_ftqPrefetch_flushFromBpu_s3_valid(io_ftqPrefetch_flushFromBpu_s3_valid),
    .io_ftqPrefetch_flushFromBpu_s3_bits_flag(io_ftqPrefetch_flushFromBpu_s3_bits_flag),
    .io_ftqPrefetch_flushFromBpu_s3_bits_value(io_ftqPrefetch_flushFromBpu_s3_bits_value),
    .io_softPrefetch_0_valid(io_softPrefetch_0_valid),
    .io_softPrefetch_0_bits_vaddr(io_softPrefetch_0_bits_vaddr),
    .io_softPrefetch_1_valid(io_softPrefetch_1_valid),
    .io_softPrefetch_1_bits_vaddr(io_softPrefetch_1_bits_vaddr),
    .io_softPrefetch_2_valid(io_softPrefetch_2_valid),
    .io_softPrefetch_2_bits_vaddr(io_softPrefetch_2_bits_vaddr),
    .io_stop(io_stop),
    .io_fetch_req_ready(io_fetch_req_ready),
    .io_fetch_req_valid(io_fetch_req_valid),
    .io_fetch_req_bits_pcMemRead_0_startAddr(io_fetch_req_bits_pcMemRead_0_startAddr),
    .io_fetch_req_bits_pcMemRead_0_nextlineStart(io_fetch_req_bits_pcMemRead_0_nextlineStart),
    .io_fetch_req_bits_pcMemRead_1_startAddr(io_fetch_req_bits_pcMemRead_1_startAddr),
    .io_fetch_req_bits_pcMemRead_1_nextlineStart(io_fetch_req_bits_pcMemRead_1_nextlineStart),
    .io_fetch_req_bits_pcMemRead_2_startAddr(io_fetch_req_bits_pcMemRead_2_startAddr),
    .io_fetch_req_bits_pcMemRead_2_nextlineStart(io_fetch_req_bits_pcMemRead_2_nextlineStart),
    .io_fetch_req_bits_pcMemRead_3_startAddr(io_fetch_req_bits_pcMemRead_3_startAddr),
    .io_fetch_req_bits_pcMemRead_3_nextlineStart(io_fetch_req_bits_pcMemRead_3_nextlineStart),
    .io_fetch_req_bits_pcMemRead_4_startAddr(io_fetch_req_bits_pcMemRead_4_startAddr),
    .io_fetch_req_bits_pcMemRead_4_nextlineStart(io_fetch_req_bits_pcMemRead_4_nextlineStart),
    .io_fetch_req_bits_readValid_0(io_fetch_req_bits_readValid_0),
    .io_fetch_req_bits_readValid_1(io_fetch_req_bits_readValid_1),
    .io_fetch_req_bits_readValid_2(io_fetch_req_bits_readValid_2),
    .io_fetch_req_bits_readValid_3(io_fetch_req_bits_readValid_3),
    .io_fetch_req_bits_readValid_4(io_fetch_req_bits_readValid_4),
    .io_fetch_resp_0_valid(io_fetch_resp_0_valid),
    .io_fetch_resp_0_bits_vaddr(io_fetch_resp_0_bits_vaddr),
    .io_fetch_resp_0_bits_data(io_fetch_resp_0_bits_data),
    .io_fetch_resp_0_bits_paddr(io_fetch_resp_0_bits_paddr),
    .io_fetch_resp_0_bits_gpaddr(io_fetch_resp_0_bits_gpaddr),
    .io_fetch_resp_0_bits_exception(io_fetch_resp_0_bits_exception),
    .io_fetch_resp_0_bits_mmio(io_fetch_resp_0_bits_mmio),
    .io_fetch_resp_1_valid(io_fetch_resp_1_valid),
    .io_fetch_resp_1_bits_vaddr(io_fetch_resp_1_bits_vaddr),
    .io_fetch_resp_1_bits_exception(io_fetch_resp_1_bits_exception),
    .io_toIFU(io_toIFU),
    .io_pmp_0_req_bits_addr(io_pmp_0_req_bits_addr),
    .io_pmp_0_resp_instr(io_pmp_0_resp_instr),
    .io_pmp_0_resp_mmio(io_pmp_0_resp_mmio),
    .io_pmp_1_req_bits_addr(io_pmp_1_req_bits_addr),
    .io_pmp_1_resp_instr(io_pmp_1_resp_instr),
    .io_pmp_1_resp_mmio(io_pmp_1_resp_mmio),
    .io_pmp_2_req_bits_addr(io_pmp_2_req_bits_addr),
    .io_pmp_2_resp_instr(io_pmp_2_resp_instr),
    .io_pmp_2_resp_mmio(io_pmp_2_resp_mmio),
    .io_pmp_3_req_bits_addr(io_pmp_3_req_bits_addr),
    .io_pmp_3_resp_instr(io_pmp_3_resp_instr),
    .io_pmp_3_resp_mmio(io_pmp_3_resp_mmio),
    .io_itlb_0_req_valid(io_itlb_0_req_valid),
    .io_itlb_0_req_bits_vaddr(io_itlb_0_req_bits_vaddr),
    .io_itlb_0_resp_bits_paddr_0(io_itlb_0_resp_bits_paddr_0),
    .io_itlb_0_resp_bits_gpaddr_0(io_itlb_0_resp_bits_gpaddr_0),
    .io_itlb_0_resp_bits_miss(io_itlb_0_resp_bits_miss),
    .io_itlb_0_resp_bits_excp_0_gpf_instr(io_itlb_0_resp_bits_excp_0_gpf_instr),
    .io_itlb_0_resp_bits_excp_0_pf_instr(io_itlb_0_resp_bits_excp_0_pf_instr),
    .io_itlb_0_resp_bits_excp_0_af_instr(io_itlb_0_resp_bits_excp_0_af_instr),
    .io_itlb_1_req_valid(io_itlb_1_req_valid),
    .io_itlb_1_req_bits_vaddr(io_itlb_1_req_bits_vaddr),
    .io_itlb_1_resp_bits_paddr_0(io_itlb_1_resp_bits_paddr_0),
    .io_itlb_1_resp_bits_gpaddr_0(io_itlb_1_resp_bits_gpaddr_0),
    .io_itlb_1_resp_bits_miss(io_itlb_1_resp_bits_miss),
    .io_itlb_1_resp_bits_excp_0_gpf_instr(io_itlb_1_resp_bits_excp_0_gpf_instr),
    .io_itlb_1_resp_bits_excp_0_pf_instr(io_itlb_1_resp_bits_excp_0_pf_instr),
    .io_itlb_1_resp_bits_excp_0_af_instr(io_itlb_1_resp_bits_excp_0_af_instr),
    .io_perfInfo_only_0_hit(io_perfInfo_only_0_hit),
    .io_perfInfo_only_0_miss(io_perfInfo_only_0_miss),
    .io_perfInfo_hit_0_hit_1(io_perfInfo_hit_0_hit_1),
    .io_perfInfo_hit_0_miss_1(io_perfInfo_hit_0_miss_1),
    .io_perfInfo_miss_0_hit_1(io_perfInfo_miss_0_hit_1),
    .io_perfInfo_miss_0_miss_1(io_perfInfo_miss_0_miss_1),
    .io_perfInfo_bank_hit_1(io_perfInfo_bank_hit_1),
    .io_perfInfo_hit(io_perfInfo_hit),
    .io_error_valid(io_error_valid),
    .io_error_bits_paddr(io_error_bits_paddr),
    .io_error_bits_report_to_beu(io_error_bits_report_to_beu),
    .io_csr_pf_enable(io_csr_pf_enable),
    .io_csr_parity_enable(io_csr_parity_enable),
    .io_fencei(io_fencei),
    .io_flush(io_flush)
  );
endmodule
