module ICache_top;

  logic  clock;
  logic  reset;
  logic  auto_client_out_a_ready;
  logic  auto_client_out_a_valid;
  logic [3:0] auto_client_out_a_bits_source;
  logic [47:0] auto_client_out_a_bits_address;
  logic  auto_client_out_d_valid;
  logic [2:0] auto_client_out_d_bits_opcode;
  logic [3:0] auto_client_out_d_bits_source;
  logic [255:0] auto_client_out_d_bits_data;
  logic  auto_client_out_d_bits_corrupt;
  logic  io_ftqPrefetch_req_ready;
  logic  io_ftqPrefetch_req_valid;
  logic [49:0] io_ftqPrefetch_req_bits_startAddr;
  logic [49:0] io_ftqPrefetch_req_bits_nextlineStart;
  logic  io_ftqPrefetch_req_bits_ftqIdx_flag;
  logic [5:0] io_ftqPrefetch_req_bits_ftqIdx_value;
  logic  io_ftqPrefetch_flushFromBpu_s2_valid;
  logic  io_ftqPrefetch_flushFromBpu_s2_bits_flag;
  logic [5:0] io_ftqPrefetch_flushFromBpu_s2_bits_value;
  logic  io_ftqPrefetch_flushFromBpu_s3_valid;
  logic  io_ftqPrefetch_flushFromBpu_s3_bits_flag;
  logic [5:0] io_ftqPrefetch_flushFromBpu_s3_bits_value;
  logic  io_softPrefetch_0_valid;
  logic [49:0] io_softPrefetch_0_bits_vaddr;
  logic  io_softPrefetch_1_valid;
  logic [49:0] io_softPrefetch_1_bits_vaddr;
  logic  io_softPrefetch_2_valid;
  logic [49:0] io_softPrefetch_2_bits_vaddr;
  logic  io_stop;
  logic  io_fetch_req_ready;
  logic  io_fetch_req_valid;
  logic [49:0] io_fetch_req_bits_pcMemRead_0_startAddr;
  logic [49:0] io_fetch_req_bits_pcMemRead_0_nextlineStart;
  logic [49:0] io_fetch_req_bits_pcMemRead_1_startAddr;
  logic [49:0] io_fetch_req_bits_pcMemRead_1_nextlineStart;
  logic [49:0] io_fetch_req_bits_pcMemRead_2_startAddr;
  logic [49:0] io_fetch_req_bits_pcMemRead_2_nextlineStart;
  logic [49:0] io_fetch_req_bits_pcMemRead_3_startAddr;
  logic [49:0] io_fetch_req_bits_pcMemRead_3_nextlineStart;
  logic [49:0] io_fetch_req_bits_pcMemRead_4_startAddr;
  logic [49:0] io_fetch_req_bits_pcMemRead_4_nextlineStart;
  logic  io_fetch_req_bits_readValid_0;
  logic  io_fetch_req_bits_readValid_1;
  logic  io_fetch_req_bits_readValid_2;
  logic  io_fetch_req_bits_readValid_3;
  logic  io_fetch_req_bits_readValid_4;
  logic  io_fetch_resp_0_valid;
  logic [49:0] io_fetch_resp_0_bits_vaddr;
  logic [511:0] io_fetch_resp_0_bits_data;
  logic [47:0] io_fetch_resp_0_bits_paddr;
  logic [49:0] io_fetch_resp_0_bits_gpaddr;
  logic [1:0] io_fetch_resp_0_bits_exception;
  logic  io_fetch_resp_0_bits_mmio;
  logic  io_fetch_resp_1_valid;
  logic [49:0] io_fetch_resp_1_bits_vaddr;
  logic [1:0] io_fetch_resp_1_bits_exception;
  logic  io_toIFU;
  logic [47:0] io_pmp_0_req_bits_addr;
  logic  io_pmp_0_resp_instr;
  logic  io_pmp_0_resp_mmio;
  logic [47:0] io_pmp_1_req_bits_addr;
  logic  io_pmp_1_resp_instr;
  logic  io_pmp_1_resp_mmio;
  logic [47:0] io_pmp_2_req_bits_addr;
  logic  io_pmp_2_resp_instr;
  logic  io_pmp_2_resp_mmio;
  logic [47:0] io_pmp_3_req_bits_addr;
  logic  io_pmp_3_resp_instr;
  logic  io_pmp_3_resp_mmio;
  logic  io_itlb_0_req_valid;
  logic [49:0] io_itlb_0_req_bits_vaddr;
  logic [47:0] io_itlb_0_resp_bits_paddr_0;
  logic [49:0] io_itlb_0_resp_bits_gpaddr_0;
  logic  io_itlb_0_resp_bits_miss;
  logic  io_itlb_0_resp_bits_excp_0_gpf_instr;
  logic  io_itlb_0_resp_bits_excp_0_pf_instr;
  logic  io_itlb_0_resp_bits_excp_0_af_instr;
  logic  io_itlb_1_req_valid;
  logic [49:0] io_itlb_1_req_bits_vaddr;
  logic [47:0] io_itlb_1_resp_bits_paddr_0;
  logic [49:0] io_itlb_1_resp_bits_gpaddr_0;
  logic  io_itlb_1_resp_bits_miss;
  logic  io_itlb_1_resp_bits_excp_0_gpf_instr;
  logic  io_itlb_1_resp_bits_excp_0_pf_instr;
  logic  io_itlb_1_resp_bits_excp_0_af_instr;
  logic  io_perfInfo_only_0_hit;
  logic  io_perfInfo_only_0_miss;
  logic  io_perfInfo_hit_0_hit_1;
  logic  io_perfInfo_hit_0_miss_1;
  logic  io_perfInfo_miss_0_hit_1;
  logic  io_perfInfo_miss_0_miss_1;
  logic  io_perfInfo_bank_hit_1;
  logic  io_perfInfo_hit;
  logic  io_error_valid;
  logic [47:0] io_error_bits_paddr;
  logic  io_error_bits_report_to_beu;
  logic  io_csr_pf_enable;
  logic  io_csr_parity_enable;
  logic  io_fencei;
  logic  io_flush;


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

  export "DPI-C" function get_clockxxF4Cat1QnOCX;
  export "DPI-C" function set_clockxxF4Cat1QnOCX;
  export "DPI-C" function get_resetxxF4Cat1QnOCX;
  export "DPI-C" function set_resetxxF4Cat1QnOCX;
  export "DPI-C" function get_auto_client_out_a_readyxxF4Cat1QnOCX;
  export "DPI-C" function set_auto_client_out_a_readyxxF4Cat1QnOCX;
  export "DPI-C" function get_auto_client_out_a_validxxF4Cat1QnOCX;
  export "DPI-C" function set_auto_client_out_a_validxxF4Cat1QnOCX;
  export "DPI-C" function get_auto_client_out_a_bits_sourcexxF4Cat1QnOCX;
  export "DPI-C" function set_auto_client_out_a_bits_sourcexxF4Cat1QnOCX;
  export "DPI-C" function get_auto_client_out_a_bits_addressxxF4Cat1QnOCX;
  export "DPI-C" function set_auto_client_out_a_bits_addressxxF4Cat1QnOCX;
  export "DPI-C" function get_auto_client_out_d_validxxF4Cat1QnOCX;
  export "DPI-C" function set_auto_client_out_d_validxxF4Cat1QnOCX;
  export "DPI-C" function get_auto_client_out_d_bits_opcodexxF4Cat1QnOCX;
  export "DPI-C" function set_auto_client_out_d_bits_opcodexxF4Cat1QnOCX;
  export "DPI-C" function get_auto_client_out_d_bits_sourcexxF4Cat1QnOCX;
  export "DPI-C" function set_auto_client_out_d_bits_sourcexxF4Cat1QnOCX;
  export "DPI-C" function get_auto_client_out_d_bits_dataxxF4Cat1QnOCX;
  export "DPI-C" function set_auto_client_out_d_bits_dataxxF4Cat1QnOCX;
  export "DPI-C" function get_auto_client_out_d_bits_corruptxxF4Cat1QnOCX;
  export "DPI-C" function set_auto_client_out_d_bits_corruptxxF4Cat1QnOCX;
  export "DPI-C" function get_io_ftqPrefetch_req_readyxxF4Cat1QnOCX;
  export "DPI-C" function set_io_ftqPrefetch_req_readyxxF4Cat1QnOCX;
  export "DPI-C" function get_io_ftqPrefetch_req_validxxF4Cat1QnOCX;
  export "DPI-C" function set_io_ftqPrefetch_req_validxxF4Cat1QnOCX;
  export "DPI-C" function get_io_ftqPrefetch_req_bits_startAddrxxF4Cat1QnOCX;
  export "DPI-C" function set_io_ftqPrefetch_req_bits_startAddrxxF4Cat1QnOCX;
  export "DPI-C" function get_io_ftqPrefetch_req_bits_nextlineStartxxF4Cat1QnOCX;
  export "DPI-C" function set_io_ftqPrefetch_req_bits_nextlineStartxxF4Cat1QnOCX;
  export "DPI-C" function get_io_ftqPrefetch_req_bits_ftqIdx_flagxxF4Cat1QnOCX;
  export "DPI-C" function set_io_ftqPrefetch_req_bits_ftqIdx_flagxxF4Cat1QnOCX;
  export "DPI-C" function get_io_ftqPrefetch_req_bits_ftqIdx_valuexxF4Cat1QnOCX;
  export "DPI-C" function set_io_ftqPrefetch_req_bits_ftqIdx_valuexxF4Cat1QnOCX;
  export "DPI-C" function get_io_ftqPrefetch_flushFromBpu_s2_validxxF4Cat1QnOCX;
  export "DPI-C" function set_io_ftqPrefetch_flushFromBpu_s2_validxxF4Cat1QnOCX;
  export "DPI-C" function get_io_ftqPrefetch_flushFromBpu_s2_bits_flagxxF4Cat1QnOCX;
  export "DPI-C" function set_io_ftqPrefetch_flushFromBpu_s2_bits_flagxxF4Cat1QnOCX;
  export "DPI-C" function get_io_ftqPrefetch_flushFromBpu_s2_bits_valuexxF4Cat1QnOCX;
  export "DPI-C" function set_io_ftqPrefetch_flushFromBpu_s2_bits_valuexxF4Cat1QnOCX;
  export "DPI-C" function get_io_ftqPrefetch_flushFromBpu_s3_validxxF4Cat1QnOCX;
  export "DPI-C" function set_io_ftqPrefetch_flushFromBpu_s3_validxxF4Cat1QnOCX;
  export "DPI-C" function get_io_ftqPrefetch_flushFromBpu_s3_bits_flagxxF4Cat1QnOCX;
  export "DPI-C" function set_io_ftqPrefetch_flushFromBpu_s3_bits_flagxxF4Cat1QnOCX;
  export "DPI-C" function get_io_ftqPrefetch_flushFromBpu_s3_bits_valuexxF4Cat1QnOCX;
  export "DPI-C" function set_io_ftqPrefetch_flushFromBpu_s3_bits_valuexxF4Cat1QnOCX;
  export "DPI-C" function get_io_softPrefetch_0_validxxF4Cat1QnOCX;
  export "DPI-C" function set_io_softPrefetch_0_validxxF4Cat1QnOCX;
  export "DPI-C" function get_io_softPrefetch_0_bits_vaddrxxF4Cat1QnOCX;
  export "DPI-C" function set_io_softPrefetch_0_bits_vaddrxxF4Cat1QnOCX;
  export "DPI-C" function get_io_softPrefetch_1_validxxF4Cat1QnOCX;
  export "DPI-C" function set_io_softPrefetch_1_validxxF4Cat1QnOCX;
  export "DPI-C" function get_io_softPrefetch_1_bits_vaddrxxF4Cat1QnOCX;
  export "DPI-C" function set_io_softPrefetch_1_bits_vaddrxxF4Cat1QnOCX;
  export "DPI-C" function get_io_softPrefetch_2_validxxF4Cat1QnOCX;
  export "DPI-C" function set_io_softPrefetch_2_validxxF4Cat1QnOCX;
  export "DPI-C" function get_io_softPrefetch_2_bits_vaddrxxF4Cat1QnOCX;
  export "DPI-C" function set_io_softPrefetch_2_bits_vaddrxxF4Cat1QnOCX;
  export "DPI-C" function get_io_stopxxF4Cat1QnOCX;
  export "DPI-C" function set_io_stopxxF4Cat1QnOCX;
  export "DPI-C" function get_io_fetch_req_readyxxF4Cat1QnOCX;
  export "DPI-C" function set_io_fetch_req_readyxxF4Cat1QnOCX;
  export "DPI-C" function get_io_fetch_req_validxxF4Cat1QnOCX;
  export "DPI-C" function set_io_fetch_req_validxxF4Cat1QnOCX;
  export "DPI-C" function get_io_fetch_req_bits_pcMemRead_0_startAddrxxF4Cat1QnOCX;
  export "DPI-C" function set_io_fetch_req_bits_pcMemRead_0_startAddrxxF4Cat1QnOCX;
  export "DPI-C" function get_io_fetch_req_bits_pcMemRead_0_nextlineStartxxF4Cat1QnOCX;
  export "DPI-C" function set_io_fetch_req_bits_pcMemRead_0_nextlineStartxxF4Cat1QnOCX;
  export "DPI-C" function get_io_fetch_req_bits_pcMemRead_1_startAddrxxF4Cat1QnOCX;
  export "DPI-C" function set_io_fetch_req_bits_pcMemRead_1_startAddrxxF4Cat1QnOCX;
  export "DPI-C" function get_io_fetch_req_bits_pcMemRead_1_nextlineStartxxF4Cat1QnOCX;
  export "DPI-C" function set_io_fetch_req_bits_pcMemRead_1_nextlineStartxxF4Cat1QnOCX;
  export "DPI-C" function get_io_fetch_req_bits_pcMemRead_2_startAddrxxF4Cat1QnOCX;
  export "DPI-C" function set_io_fetch_req_bits_pcMemRead_2_startAddrxxF4Cat1QnOCX;
  export "DPI-C" function get_io_fetch_req_bits_pcMemRead_2_nextlineStartxxF4Cat1QnOCX;
  export "DPI-C" function set_io_fetch_req_bits_pcMemRead_2_nextlineStartxxF4Cat1QnOCX;
  export "DPI-C" function get_io_fetch_req_bits_pcMemRead_3_startAddrxxF4Cat1QnOCX;
  export "DPI-C" function set_io_fetch_req_bits_pcMemRead_3_startAddrxxF4Cat1QnOCX;
  export "DPI-C" function get_io_fetch_req_bits_pcMemRead_3_nextlineStartxxF4Cat1QnOCX;
  export "DPI-C" function set_io_fetch_req_bits_pcMemRead_3_nextlineStartxxF4Cat1QnOCX;
  export "DPI-C" function get_io_fetch_req_bits_pcMemRead_4_startAddrxxF4Cat1QnOCX;
  export "DPI-C" function set_io_fetch_req_bits_pcMemRead_4_startAddrxxF4Cat1QnOCX;
  export "DPI-C" function get_io_fetch_req_bits_pcMemRead_4_nextlineStartxxF4Cat1QnOCX;
  export "DPI-C" function set_io_fetch_req_bits_pcMemRead_4_nextlineStartxxF4Cat1QnOCX;
  export "DPI-C" function get_io_fetch_req_bits_readValid_0xxF4Cat1QnOCX;
  export "DPI-C" function set_io_fetch_req_bits_readValid_0xxF4Cat1QnOCX;
  export "DPI-C" function get_io_fetch_req_bits_readValid_1xxF4Cat1QnOCX;
  export "DPI-C" function set_io_fetch_req_bits_readValid_1xxF4Cat1QnOCX;
  export "DPI-C" function get_io_fetch_req_bits_readValid_2xxF4Cat1QnOCX;
  export "DPI-C" function set_io_fetch_req_bits_readValid_2xxF4Cat1QnOCX;
  export "DPI-C" function get_io_fetch_req_bits_readValid_3xxF4Cat1QnOCX;
  export "DPI-C" function set_io_fetch_req_bits_readValid_3xxF4Cat1QnOCX;
  export "DPI-C" function get_io_fetch_req_bits_readValid_4xxF4Cat1QnOCX;
  export "DPI-C" function set_io_fetch_req_bits_readValid_4xxF4Cat1QnOCX;
  export "DPI-C" function get_io_fetch_resp_0_validxxF4Cat1QnOCX;
  export "DPI-C" function set_io_fetch_resp_0_validxxF4Cat1QnOCX;
  export "DPI-C" function get_io_fetch_resp_0_bits_vaddrxxF4Cat1QnOCX;
  export "DPI-C" function set_io_fetch_resp_0_bits_vaddrxxF4Cat1QnOCX;
  export "DPI-C" function get_io_fetch_resp_0_bits_dataxxF4Cat1QnOCX;
  export "DPI-C" function set_io_fetch_resp_0_bits_dataxxF4Cat1QnOCX;
  export "DPI-C" function get_io_fetch_resp_0_bits_paddrxxF4Cat1QnOCX;
  export "DPI-C" function set_io_fetch_resp_0_bits_paddrxxF4Cat1QnOCX;
  export "DPI-C" function get_io_fetch_resp_0_bits_gpaddrxxF4Cat1QnOCX;
  export "DPI-C" function set_io_fetch_resp_0_bits_gpaddrxxF4Cat1QnOCX;
  export "DPI-C" function get_io_fetch_resp_0_bits_exceptionxxF4Cat1QnOCX;
  export "DPI-C" function set_io_fetch_resp_0_bits_exceptionxxF4Cat1QnOCX;
  export "DPI-C" function get_io_fetch_resp_0_bits_mmioxxF4Cat1QnOCX;
  export "DPI-C" function set_io_fetch_resp_0_bits_mmioxxF4Cat1QnOCX;
  export "DPI-C" function get_io_fetch_resp_1_validxxF4Cat1QnOCX;
  export "DPI-C" function set_io_fetch_resp_1_validxxF4Cat1QnOCX;
  export "DPI-C" function get_io_fetch_resp_1_bits_vaddrxxF4Cat1QnOCX;
  export "DPI-C" function set_io_fetch_resp_1_bits_vaddrxxF4Cat1QnOCX;
  export "DPI-C" function get_io_fetch_resp_1_bits_exceptionxxF4Cat1QnOCX;
  export "DPI-C" function set_io_fetch_resp_1_bits_exceptionxxF4Cat1QnOCX;
  export "DPI-C" function get_io_toIFUxxF4Cat1QnOCX;
  export "DPI-C" function set_io_toIFUxxF4Cat1QnOCX;
  export "DPI-C" function get_io_pmp_0_req_bits_addrxxF4Cat1QnOCX;
  export "DPI-C" function set_io_pmp_0_req_bits_addrxxF4Cat1QnOCX;
  export "DPI-C" function get_io_pmp_0_resp_instrxxF4Cat1QnOCX;
  export "DPI-C" function set_io_pmp_0_resp_instrxxF4Cat1QnOCX;
  export "DPI-C" function get_io_pmp_0_resp_mmioxxF4Cat1QnOCX;
  export "DPI-C" function set_io_pmp_0_resp_mmioxxF4Cat1QnOCX;
  export "DPI-C" function get_io_pmp_1_req_bits_addrxxF4Cat1QnOCX;
  export "DPI-C" function set_io_pmp_1_req_bits_addrxxF4Cat1QnOCX;
  export "DPI-C" function get_io_pmp_1_resp_instrxxF4Cat1QnOCX;
  export "DPI-C" function set_io_pmp_1_resp_instrxxF4Cat1QnOCX;
  export "DPI-C" function get_io_pmp_1_resp_mmioxxF4Cat1QnOCX;
  export "DPI-C" function set_io_pmp_1_resp_mmioxxF4Cat1QnOCX;
  export "DPI-C" function get_io_pmp_2_req_bits_addrxxF4Cat1QnOCX;
  export "DPI-C" function set_io_pmp_2_req_bits_addrxxF4Cat1QnOCX;
  export "DPI-C" function get_io_pmp_2_resp_instrxxF4Cat1QnOCX;
  export "DPI-C" function set_io_pmp_2_resp_instrxxF4Cat1QnOCX;
  export "DPI-C" function get_io_pmp_2_resp_mmioxxF4Cat1QnOCX;
  export "DPI-C" function set_io_pmp_2_resp_mmioxxF4Cat1QnOCX;
  export "DPI-C" function get_io_pmp_3_req_bits_addrxxF4Cat1QnOCX;
  export "DPI-C" function set_io_pmp_3_req_bits_addrxxF4Cat1QnOCX;
  export "DPI-C" function get_io_pmp_3_resp_instrxxF4Cat1QnOCX;
  export "DPI-C" function set_io_pmp_3_resp_instrxxF4Cat1QnOCX;
  export "DPI-C" function get_io_pmp_3_resp_mmioxxF4Cat1QnOCX;
  export "DPI-C" function set_io_pmp_3_resp_mmioxxF4Cat1QnOCX;
  export "DPI-C" function get_io_itlb_0_req_validxxF4Cat1QnOCX;
  export "DPI-C" function set_io_itlb_0_req_validxxF4Cat1QnOCX;
  export "DPI-C" function get_io_itlb_0_req_bits_vaddrxxF4Cat1QnOCX;
  export "DPI-C" function set_io_itlb_0_req_bits_vaddrxxF4Cat1QnOCX;
  export "DPI-C" function get_io_itlb_0_resp_bits_paddr_0xxF4Cat1QnOCX;
  export "DPI-C" function set_io_itlb_0_resp_bits_paddr_0xxF4Cat1QnOCX;
  export "DPI-C" function get_io_itlb_0_resp_bits_gpaddr_0xxF4Cat1QnOCX;
  export "DPI-C" function set_io_itlb_0_resp_bits_gpaddr_0xxF4Cat1QnOCX;
  export "DPI-C" function get_io_itlb_0_resp_bits_missxxF4Cat1QnOCX;
  export "DPI-C" function set_io_itlb_0_resp_bits_missxxF4Cat1QnOCX;
  export "DPI-C" function get_io_itlb_0_resp_bits_excp_0_gpf_instrxxF4Cat1QnOCX;
  export "DPI-C" function set_io_itlb_0_resp_bits_excp_0_gpf_instrxxF4Cat1QnOCX;
  export "DPI-C" function get_io_itlb_0_resp_bits_excp_0_pf_instrxxF4Cat1QnOCX;
  export "DPI-C" function set_io_itlb_0_resp_bits_excp_0_pf_instrxxF4Cat1QnOCX;
  export "DPI-C" function get_io_itlb_0_resp_bits_excp_0_af_instrxxF4Cat1QnOCX;
  export "DPI-C" function set_io_itlb_0_resp_bits_excp_0_af_instrxxF4Cat1QnOCX;
  export "DPI-C" function get_io_itlb_1_req_validxxF4Cat1QnOCX;
  export "DPI-C" function set_io_itlb_1_req_validxxF4Cat1QnOCX;
  export "DPI-C" function get_io_itlb_1_req_bits_vaddrxxF4Cat1QnOCX;
  export "DPI-C" function set_io_itlb_1_req_bits_vaddrxxF4Cat1QnOCX;
  export "DPI-C" function get_io_itlb_1_resp_bits_paddr_0xxF4Cat1QnOCX;
  export "DPI-C" function set_io_itlb_1_resp_bits_paddr_0xxF4Cat1QnOCX;
  export "DPI-C" function get_io_itlb_1_resp_bits_gpaddr_0xxF4Cat1QnOCX;
  export "DPI-C" function set_io_itlb_1_resp_bits_gpaddr_0xxF4Cat1QnOCX;
  export "DPI-C" function get_io_itlb_1_resp_bits_missxxF4Cat1QnOCX;
  export "DPI-C" function set_io_itlb_1_resp_bits_missxxF4Cat1QnOCX;
  export "DPI-C" function get_io_itlb_1_resp_bits_excp_0_gpf_instrxxF4Cat1QnOCX;
  export "DPI-C" function set_io_itlb_1_resp_bits_excp_0_gpf_instrxxF4Cat1QnOCX;
  export "DPI-C" function get_io_itlb_1_resp_bits_excp_0_pf_instrxxF4Cat1QnOCX;
  export "DPI-C" function set_io_itlb_1_resp_bits_excp_0_pf_instrxxF4Cat1QnOCX;
  export "DPI-C" function get_io_itlb_1_resp_bits_excp_0_af_instrxxF4Cat1QnOCX;
  export "DPI-C" function set_io_itlb_1_resp_bits_excp_0_af_instrxxF4Cat1QnOCX;
  export "DPI-C" function get_io_perfInfo_only_0_hitxxF4Cat1QnOCX;
  export "DPI-C" function set_io_perfInfo_only_0_hitxxF4Cat1QnOCX;
  export "DPI-C" function get_io_perfInfo_only_0_missxxF4Cat1QnOCX;
  export "DPI-C" function set_io_perfInfo_only_0_missxxF4Cat1QnOCX;
  export "DPI-C" function get_io_perfInfo_hit_0_hit_1xxF4Cat1QnOCX;
  export "DPI-C" function set_io_perfInfo_hit_0_hit_1xxF4Cat1QnOCX;
  export "DPI-C" function get_io_perfInfo_hit_0_miss_1xxF4Cat1QnOCX;
  export "DPI-C" function set_io_perfInfo_hit_0_miss_1xxF4Cat1QnOCX;
  export "DPI-C" function get_io_perfInfo_miss_0_hit_1xxF4Cat1QnOCX;
  export "DPI-C" function set_io_perfInfo_miss_0_hit_1xxF4Cat1QnOCX;
  export "DPI-C" function get_io_perfInfo_miss_0_miss_1xxF4Cat1QnOCX;
  export "DPI-C" function set_io_perfInfo_miss_0_miss_1xxF4Cat1QnOCX;
  export "DPI-C" function get_io_perfInfo_bank_hit_1xxF4Cat1QnOCX;
  export "DPI-C" function set_io_perfInfo_bank_hit_1xxF4Cat1QnOCX;
  export "DPI-C" function get_io_perfInfo_hitxxF4Cat1QnOCX;
  export "DPI-C" function set_io_perfInfo_hitxxF4Cat1QnOCX;
  export "DPI-C" function get_io_error_validxxF4Cat1QnOCX;
  export "DPI-C" function set_io_error_validxxF4Cat1QnOCX;
  export "DPI-C" function get_io_error_bits_paddrxxF4Cat1QnOCX;
  export "DPI-C" function set_io_error_bits_paddrxxF4Cat1QnOCX;
  export "DPI-C" function get_io_error_bits_report_to_beuxxF4Cat1QnOCX;
  export "DPI-C" function set_io_error_bits_report_to_beuxxF4Cat1QnOCX;
  export "DPI-C" function get_io_csr_pf_enablexxF4Cat1QnOCX;
  export "DPI-C" function set_io_csr_pf_enablexxF4Cat1QnOCX;
  export "DPI-C" function get_io_csr_parity_enablexxF4Cat1QnOCX;
  export "DPI-C" function set_io_csr_parity_enablexxF4Cat1QnOCX;
  export "DPI-C" function get_io_fenceixxF4Cat1QnOCX;
  export "DPI-C" function set_io_fenceixxF4Cat1QnOCX;
  export "DPI-C" function get_io_flushxxF4Cat1QnOCX;
  export "DPI-C" function set_io_flushxxF4Cat1QnOCX;


  function void get_clockxxF4Cat1QnOCX;
    output logic  value;
    value=clock;
  endfunction

  function void set_clockxxF4Cat1QnOCX;
    input logic  value;
    clock=value;
  endfunction

  function void get_resetxxF4Cat1QnOCX;
    output logic  value;
    value=reset;
  endfunction

  function void set_resetxxF4Cat1QnOCX;
    input logic  value;
    reset=value;
  endfunction

  function void get_auto_client_out_a_readyxxF4Cat1QnOCX;
    output logic  value;
    value=auto_client_out_a_ready;
  endfunction

  function void set_auto_client_out_a_readyxxF4Cat1QnOCX;
    input logic  value;
    auto_client_out_a_ready=value;
  endfunction

  function void get_auto_client_out_a_validxxF4Cat1QnOCX;
    output logic  value;
    value=auto_client_out_a_valid;
  endfunction

  function void set_auto_client_out_a_validxxF4Cat1QnOCX;
    input logic  value;
    auto_client_out_a_valid=value;
  endfunction

  function void get_auto_client_out_a_bits_sourcexxF4Cat1QnOCX;
    output logic [3:0] value;
    value=auto_client_out_a_bits_source;
  endfunction

  function void set_auto_client_out_a_bits_sourcexxF4Cat1QnOCX;
    input logic [3:0] value;
    auto_client_out_a_bits_source=value;
  endfunction

  function void get_auto_client_out_a_bits_addressxxF4Cat1QnOCX;
    output logic [47:0] value;
    value=auto_client_out_a_bits_address;
  endfunction

  function void set_auto_client_out_a_bits_addressxxF4Cat1QnOCX;
    input logic [47:0] value;
    auto_client_out_a_bits_address=value;
  endfunction

  function void get_auto_client_out_d_validxxF4Cat1QnOCX;
    output logic  value;
    value=auto_client_out_d_valid;
  endfunction

  function void set_auto_client_out_d_validxxF4Cat1QnOCX;
    input logic  value;
    auto_client_out_d_valid=value;
  endfunction

  function void get_auto_client_out_d_bits_opcodexxF4Cat1QnOCX;
    output logic [2:0] value;
    value=auto_client_out_d_bits_opcode;
  endfunction

  function void set_auto_client_out_d_bits_opcodexxF4Cat1QnOCX;
    input logic [2:0] value;
    auto_client_out_d_bits_opcode=value;
  endfunction

  function void get_auto_client_out_d_bits_sourcexxF4Cat1QnOCX;
    output logic [3:0] value;
    value=auto_client_out_d_bits_source;
  endfunction

  function void set_auto_client_out_d_bits_sourcexxF4Cat1QnOCX;
    input logic [3:0] value;
    auto_client_out_d_bits_source=value;
  endfunction

  function void get_auto_client_out_d_bits_dataxxF4Cat1QnOCX;
    output logic [255:0] value;
    value=auto_client_out_d_bits_data;
  endfunction

  function void set_auto_client_out_d_bits_dataxxF4Cat1QnOCX;
    input logic [255:0] value;
    auto_client_out_d_bits_data=value;
  endfunction

  function void get_auto_client_out_d_bits_corruptxxF4Cat1QnOCX;
    output logic  value;
    value=auto_client_out_d_bits_corrupt;
  endfunction

  function void set_auto_client_out_d_bits_corruptxxF4Cat1QnOCX;
    input logic  value;
    auto_client_out_d_bits_corrupt=value;
  endfunction

  function void get_io_ftqPrefetch_req_readyxxF4Cat1QnOCX;
    output logic  value;
    value=io_ftqPrefetch_req_ready;
  endfunction

  function void set_io_ftqPrefetch_req_readyxxF4Cat1QnOCX;
    input logic  value;
    io_ftqPrefetch_req_ready=value;
  endfunction

  function void get_io_ftqPrefetch_req_validxxF4Cat1QnOCX;
    output logic  value;
    value=io_ftqPrefetch_req_valid;
  endfunction

  function void set_io_ftqPrefetch_req_validxxF4Cat1QnOCX;
    input logic  value;
    io_ftqPrefetch_req_valid=value;
  endfunction

  function void get_io_ftqPrefetch_req_bits_startAddrxxF4Cat1QnOCX;
    output logic [49:0] value;
    value=io_ftqPrefetch_req_bits_startAddr;
  endfunction

  function void set_io_ftqPrefetch_req_bits_startAddrxxF4Cat1QnOCX;
    input logic [49:0] value;
    io_ftqPrefetch_req_bits_startAddr=value;
  endfunction

  function void get_io_ftqPrefetch_req_bits_nextlineStartxxF4Cat1QnOCX;
    output logic [49:0] value;
    value=io_ftqPrefetch_req_bits_nextlineStart;
  endfunction

  function void set_io_ftqPrefetch_req_bits_nextlineStartxxF4Cat1QnOCX;
    input logic [49:0] value;
    io_ftqPrefetch_req_bits_nextlineStart=value;
  endfunction

  function void get_io_ftqPrefetch_req_bits_ftqIdx_flagxxF4Cat1QnOCX;
    output logic  value;
    value=io_ftqPrefetch_req_bits_ftqIdx_flag;
  endfunction

  function void set_io_ftqPrefetch_req_bits_ftqIdx_flagxxF4Cat1QnOCX;
    input logic  value;
    io_ftqPrefetch_req_bits_ftqIdx_flag=value;
  endfunction

  function void get_io_ftqPrefetch_req_bits_ftqIdx_valuexxF4Cat1QnOCX;
    output logic [5:0] value;
    value=io_ftqPrefetch_req_bits_ftqIdx_value;
  endfunction

  function void set_io_ftqPrefetch_req_bits_ftqIdx_valuexxF4Cat1QnOCX;
    input logic [5:0] value;
    io_ftqPrefetch_req_bits_ftqIdx_value=value;
  endfunction

  function void get_io_ftqPrefetch_flushFromBpu_s2_validxxF4Cat1QnOCX;
    output logic  value;
    value=io_ftqPrefetch_flushFromBpu_s2_valid;
  endfunction

  function void set_io_ftqPrefetch_flushFromBpu_s2_validxxF4Cat1QnOCX;
    input logic  value;
    io_ftqPrefetch_flushFromBpu_s2_valid=value;
  endfunction

  function void get_io_ftqPrefetch_flushFromBpu_s2_bits_flagxxF4Cat1QnOCX;
    output logic  value;
    value=io_ftqPrefetch_flushFromBpu_s2_bits_flag;
  endfunction

  function void set_io_ftqPrefetch_flushFromBpu_s2_bits_flagxxF4Cat1QnOCX;
    input logic  value;
    io_ftqPrefetch_flushFromBpu_s2_bits_flag=value;
  endfunction

  function void get_io_ftqPrefetch_flushFromBpu_s2_bits_valuexxF4Cat1QnOCX;
    output logic [5:0] value;
    value=io_ftqPrefetch_flushFromBpu_s2_bits_value;
  endfunction

  function void set_io_ftqPrefetch_flushFromBpu_s2_bits_valuexxF4Cat1QnOCX;
    input logic [5:0] value;
    io_ftqPrefetch_flushFromBpu_s2_bits_value=value;
  endfunction

  function void get_io_ftqPrefetch_flushFromBpu_s3_validxxF4Cat1QnOCX;
    output logic  value;
    value=io_ftqPrefetch_flushFromBpu_s3_valid;
  endfunction

  function void set_io_ftqPrefetch_flushFromBpu_s3_validxxF4Cat1QnOCX;
    input logic  value;
    io_ftqPrefetch_flushFromBpu_s3_valid=value;
  endfunction

  function void get_io_ftqPrefetch_flushFromBpu_s3_bits_flagxxF4Cat1QnOCX;
    output logic  value;
    value=io_ftqPrefetch_flushFromBpu_s3_bits_flag;
  endfunction

  function void set_io_ftqPrefetch_flushFromBpu_s3_bits_flagxxF4Cat1QnOCX;
    input logic  value;
    io_ftqPrefetch_flushFromBpu_s3_bits_flag=value;
  endfunction

  function void get_io_ftqPrefetch_flushFromBpu_s3_bits_valuexxF4Cat1QnOCX;
    output logic [5:0] value;
    value=io_ftqPrefetch_flushFromBpu_s3_bits_value;
  endfunction

  function void set_io_ftqPrefetch_flushFromBpu_s3_bits_valuexxF4Cat1QnOCX;
    input logic [5:0] value;
    io_ftqPrefetch_flushFromBpu_s3_bits_value=value;
  endfunction

  function void get_io_softPrefetch_0_validxxF4Cat1QnOCX;
    output logic  value;
    value=io_softPrefetch_0_valid;
  endfunction

  function void set_io_softPrefetch_0_validxxF4Cat1QnOCX;
    input logic  value;
    io_softPrefetch_0_valid=value;
  endfunction

  function void get_io_softPrefetch_0_bits_vaddrxxF4Cat1QnOCX;
    output logic [49:0] value;
    value=io_softPrefetch_0_bits_vaddr;
  endfunction

  function void set_io_softPrefetch_0_bits_vaddrxxF4Cat1QnOCX;
    input logic [49:0] value;
    io_softPrefetch_0_bits_vaddr=value;
  endfunction

  function void get_io_softPrefetch_1_validxxF4Cat1QnOCX;
    output logic  value;
    value=io_softPrefetch_1_valid;
  endfunction

  function void set_io_softPrefetch_1_validxxF4Cat1QnOCX;
    input logic  value;
    io_softPrefetch_1_valid=value;
  endfunction

  function void get_io_softPrefetch_1_bits_vaddrxxF4Cat1QnOCX;
    output logic [49:0] value;
    value=io_softPrefetch_1_bits_vaddr;
  endfunction

  function void set_io_softPrefetch_1_bits_vaddrxxF4Cat1QnOCX;
    input logic [49:0] value;
    io_softPrefetch_1_bits_vaddr=value;
  endfunction

  function void get_io_softPrefetch_2_validxxF4Cat1QnOCX;
    output logic  value;
    value=io_softPrefetch_2_valid;
  endfunction

  function void set_io_softPrefetch_2_validxxF4Cat1QnOCX;
    input logic  value;
    io_softPrefetch_2_valid=value;
  endfunction

  function void get_io_softPrefetch_2_bits_vaddrxxF4Cat1QnOCX;
    output logic [49:0] value;
    value=io_softPrefetch_2_bits_vaddr;
  endfunction

  function void set_io_softPrefetch_2_bits_vaddrxxF4Cat1QnOCX;
    input logic [49:0] value;
    io_softPrefetch_2_bits_vaddr=value;
  endfunction

  function void get_io_stopxxF4Cat1QnOCX;
    output logic  value;
    value=io_stop;
  endfunction

  function void set_io_stopxxF4Cat1QnOCX;
    input logic  value;
    io_stop=value;
  endfunction

  function void get_io_fetch_req_readyxxF4Cat1QnOCX;
    output logic  value;
    value=io_fetch_req_ready;
  endfunction

  function void set_io_fetch_req_readyxxF4Cat1QnOCX;
    input logic  value;
    io_fetch_req_ready=value;
  endfunction

  function void get_io_fetch_req_validxxF4Cat1QnOCX;
    output logic  value;
    value=io_fetch_req_valid;
  endfunction

  function void set_io_fetch_req_validxxF4Cat1QnOCX;
    input logic  value;
    io_fetch_req_valid=value;
  endfunction

  function void get_io_fetch_req_bits_pcMemRead_0_startAddrxxF4Cat1QnOCX;
    output logic [49:0] value;
    value=io_fetch_req_bits_pcMemRead_0_startAddr;
  endfunction

  function void set_io_fetch_req_bits_pcMemRead_0_startAddrxxF4Cat1QnOCX;
    input logic [49:0] value;
    io_fetch_req_bits_pcMemRead_0_startAddr=value;
  endfunction

  function void get_io_fetch_req_bits_pcMemRead_0_nextlineStartxxF4Cat1QnOCX;
    output logic [49:0] value;
    value=io_fetch_req_bits_pcMemRead_0_nextlineStart;
  endfunction

  function void set_io_fetch_req_bits_pcMemRead_0_nextlineStartxxF4Cat1QnOCX;
    input logic [49:0] value;
    io_fetch_req_bits_pcMemRead_0_nextlineStart=value;
  endfunction

  function void get_io_fetch_req_bits_pcMemRead_1_startAddrxxF4Cat1QnOCX;
    output logic [49:0] value;
    value=io_fetch_req_bits_pcMemRead_1_startAddr;
  endfunction

  function void set_io_fetch_req_bits_pcMemRead_1_startAddrxxF4Cat1QnOCX;
    input logic [49:0] value;
    io_fetch_req_bits_pcMemRead_1_startAddr=value;
  endfunction

  function void get_io_fetch_req_bits_pcMemRead_1_nextlineStartxxF4Cat1QnOCX;
    output logic [49:0] value;
    value=io_fetch_req_bits_pcMemRead_1_nextlineStart;
  endfunction

  function void set_io_fetch_req_bits_pcMemRead_1_nextlineStartxxF4Cat1QnOCX;
    input logic [49:0] value;
    io_fetch_req_bits_pcMemRead_1_nextlineStart=value;
  endfunction

  function void get_io_fetch_req_bits_pcMemRead_2_startAddrxxF4Cat1QnOCX;
    output logic [49:0] value;
    value=io_fetch_req_bits_pcMemRead_2_startAddr;
  endfunction

  function void set_io_fetch_req_bits_pcMemRead_2_startAddrxxF4Cat1QnOCX;
    input logic [49:0] value;
    io_fetch_req_bits_pcMemRead_2_startAddr=value;
  endfunction

  function void get_io_fetch_req_bits_pcMemRead_2_nextlineStartxxF4Cat1QnOCX;
    output logic [49:0] value;
    value=io_fetch_req_bits_pcMemRead_2_nextlineStart;
  endfunction

  function void set_io_fetch_req_bits_pcMemRead_2_nextlineStartxxF4Cat1QnOCX;
    input logic [49:0] value;
    io_fetch_req_bits_pcMemRead_2_nextlineStart=value;
  endfunction

  function void get_io_fetch_req_bits_pcMemRead_3_startAddrxxF4Cat1QnOCX;
    output logic [49:0] value;
    value=io_fetch_req_bits_pcMemRead_3_startAddr;
  endfunction

  function void set_io_fetch_req_bits_pcMemRead_3_startAddrxxF4Cat1QnOCX;
    input logic [49:0] value;
    io_fetch_req_bits_pcMemRead_3_startAddr=value;
  endfunction

  function void get_io_fetch_req_bits_pcMemRead_3_nextlineStartxxF4Cat1QnOCX;
    output logic [49:0] value;
    value=io_fetch_req_bits_pcMemRead_3_nextlineStart;
  endfunction

  function void set_io_fetch_req_bits_pcMemRead_3_nextlineStartxxF4Cat1QnOCX;
    input logic [49:0] value;
    io_fetch_req_bits_pcMemRead_3_nextlineStart=value;
  endfunction

  function void get_io_fetch_req_bits_pcMemRead_4_startAddrxxF4Cat1QnOCX;
    output logic [49:0] value;
    value=io_fetch_req_bits_pcMemRead_4_startAddr;
  endfunction

  function void set_io_fetch_req_bits_pcMemRead_4_startAddrxxF4Cat1QnOCX;
    input logic [49:0] value;
    io_fetch_req_bits_pcMemRead_4_startAddr=value;
  endfunction

  function void get_io_fetch_req_bits_pcMemRead_4_nextlineStartxxF4Cat1QnOCX;
    output logic [49:0] value;
    value=io_fetch_req_bits_pcMemRead_4_nextlineStart;
  endfunction

  function void set_io_fetch_req_bits_pcMemRead_4_nextlineStartxxF4Cat1QnOCX;
    input logic [49:0] value;
    io_fetch_req_bits_pcMemRead_4_nextlineStart=value;
  endfunction

  function void get_io_fetch_req_bits_readValid_0xxF4Cat1QnOCX;
    output logic  value;
    value=io_fetch_req_bits_readValid_0;
  endfunction

  function void set_io_fetch_req_bits_readValid_0xxF4Cat1QnOCX;
    input logic  value;
    io_fetch_req_bits_readValid_0=value;
  endfunction

  function void get_io_fetch_req_bits_readValid_1xxF4Cat1QnOCX;
    output logic  value;
    value=io_fetch_req_bits_readValid_1;
  endfunction

  function void set_io_fetch_req_bits_readValid_1xxF4Cat1QnOCX;
    input logic  value;
    io_fetch_req_bits_readValid_1=value;
  endfunction

  function void get_io_fetch_req_bits_readValid_2xxF4Cat1QnOCX;
    output logic  value;
    value=io_fetch_req_bits_readValid_2;
  endfunction

  function void set_io_fetch_req_bits_readValid_2xxF4Cat1QnOCX;
    input logic  value;
    io_fetch_req_bits_readValid_2=value;
  endfunction

  function void get_io_fetch_req_bits_readValid_3xxF4Cat1QnOCX;
    output logic  value;
    value=io_fetch_req_bits_readValid_3;
  endfunction

  function void set_io_fetch_req_bits_readValid_3xxF4Cat1QnOCX;
    input logic  value;
    io_fetch_req_bits_readValid_3=value;
  endfunction

  function void get_io_fetch_req_bits_readValid_4xxF4Cat1QnOCX;
    output logic  value;
    value=io_fetch_req_bits_readValid_4;
  endfunction

  function void set_io_fetch_req_bits_readValid_4xxF4Cat1QnOCX;
    input logic  value;
    io_fetch_req_bits_readValid_4=value;
  endfunction

  function void get_io_fetch_resp_0_validxxF4Cat1QnOCX;
    output logic  value;
    value=io_fetch_resp_0_valid;
  endfunction

  function void set_io_fetch_resp_0_validxxF4Cat1QnOCX;
    input logic  value;
    io_fetch_resp_0_valid=value;
  endfunction

  function void get_io_fetch_resp_0_bits_vaddrxxF4Cat1QnOCX;
    output logic [49:0] value;
    value=io_fetch_resp_0_bits_vaddr;
  endfunction

  function void set_io_fetch_resp_0_bits_vaddrxxF4Cat1QnOCX;
    input logic [49:0] value;
    io_fetch_resp_0_bits_vaddr=value;
  endfunction

  function void get_io_fetch_resp_0_bits_dataxxF4Cat1QnOCX;
    output logic [511:0] value;
    value=io_fetch_resp_0_bits_data;
  endfunction

  function void set_io_fetch_resp_0_bits_dataxxF4Cat1QnOCX;
    input logic [511:0] value;
    io_fetch_resp_0_bits_data=value;
  endfunction

  function void get_io_fetch_resp_0_bits_paddrxxF4Cat1QnOCX;
    output logic [47:0] value;
    value=io_fetch_resp_0_bits_paddr;
  endfunction

  function void set_io_fetch_resp_0_bits_paddrxxF4Cat1QnOCX;
    input logic [47:0] value;
    io_fetch_resp_0_bits_paddr=value;
  endfunction

  function void get_io_fetch_resp_0_bits_gpaddrxxF4Cat1QnOCX;
    output logic [49:0] value;
    value=io_fetch_resp_0_bits_gpaddr;
  endfunction

  function void set_io_fetch_resp_0_bits_gpaddrxxF4Cat1QnOCX;
    input logic [49:0] value;
    io_fetch_resp_0_bits_gpaddr=value;
  endfunction

  function void get_io_fetch_resp_0_bits_exceptionxxF4Cat1QnOCX;
    output logic [1:0] value;
    value=io_fetch_resp_0_bits_exception;
  endfunction

  function void set_io_fetch_resp_0_bits_exceptionxxF4Cat1QnOCX;
    input logic [1:0] value;
    io_fetch_resp_0_bits_exception=value;
  endfunction

  function void get_io_fetch_resp_0_bits_mmioxxF4Cat1QnOCX;
    output logic  value;
    value=io_fetch_resp_0_bits_mmio;
  endfunction

  function void set_io_fetch_resp_0_bits_mmioxxF4Cat1QnOCX;
    input logic  value;
    io_fetch_resp_0_bits_mmio=value;
  endfunction

  function void get_io_fetch_resp_1_validxxF4Cat1QnOCX;
    output logic  value;
    value=io_fetch_resp_1_valid;
  endfunction

  function void set_io_fetch_resp_1_validxxF4Cat1QnOCX;
    input logic  value;
    io_fetch_resp_1_valid=value;
  endfunction

  function void get_io_fetch_resp_1_bits_vaddrxxF4Cat1QnOCX;
    output logic [49:0] value;
    value=io_fetch_resp_1_bits_vaddr;
  endfunction

  function void set_io_fetch_resp_1_bits_vaddrxxF4Cat1QnOCX;
    input logic [49:0] value;
    io_fetch_resp_1_bits_vaddr=value;
  endfunction

  function void get_io_fetch_resp_1_bits_exceptionxxF4Cat1QnOCX;
    output logic [1:0] value;
    value=io_fetch_resp_1_bits_exception;
  endfunction

  function void set_io_fetch_resp_1_bits_exceptionxxF4Cat1QnOCX;
    input logic [1:0] value;
    io_fetch_resp_1_bits_exception=value;
  endfunction

  function void get_io_toIFUxxF4Cat1QnOCX;
    output logic  value;
    value=io_toIFU;
  endfunction

  function void set_io_toIFUxxF4Cat1QnOCX;
    input logic  value;
    io_toIFU=value;
  endfunction

  function void get_io_pmp_0_req_bits_addrxxF4Cat1QnOCX;
    output logic [47:0] value;
    value=io_pmp_0_req_bits_addr;
  endfunction

  function void set_io_pmp_0_req_bits_addrxxF4Cat1QnOCX;
    input logic [47:0] value;
    io_pmp_0_req_bits_addr=value;
  endfunction

  function void get_io_pmp_0_resp_instrxxF4Cat1QnOCX;
    output logic  value;
    value=io_pmp_0_resp_instr;
  endfunction

  function void set_io_pmp_0_resp_instrxxF4Cat1QnOCX;
    input logic  value;
    io_pmp_0_resp_instr=value;
  endfunction

  function void get_io_pmp_0_resp_mmioxxF4Cat1QnOCX;
    output logic  value;
    value=io_pmp_0_resp_mmio;
  endfunction

  function void set_io_pmp_0_resp_mmioxxF4Cat1QnOCX;
    input logic  value;
    io_pmp_0_resp_mmio=value;
  endfunction

  function void get_io_pmp_1_req_bits_addrxxF4Cat1QnOCX;
    output logic [47:0] value;
    value=io_pmp_1_req_bits_addr;
  endfunction

  function void set_io_pmp_1_req_bits_addrxxF4Cat1QnOCX;
    input logic [47:0] value;
    io_pmp_1_req_bits_addr=value;
  endfunction

  function void get_io_pmp_1_resp_instrxxF4Cat1QnOCX;
    output logic  value;
    value=io_pmp_1_resp_instr;
  endfunction

  function void set_io_pmp_1_resp_instrxxF4Cat1QnOCX;
    input logic  value;
    io_pmp_1_resp_instr=value;
  endfunction

  function void get_io_pmp_1_resp_mmioxxF4Cat1QnOCX;
    output logic  value;
    value=io_pmp_1_resp_mmio;
  endfunction

  function void set_io_pmp_1_resp_mmioxxF4Cat1QnOCX;
    input logic  value;
    io_pmp_1_resp_mmio=value;
  endfunction

  function void get_io_pmp_2_req_bits_addrxxF4Cat1QnOCX;
    output logic [47:0] value;
    value=io_pmp_2_req_bits_addr;
  endfunction

  function void set_io_pmp_2_req_bits_addrxxF4Cat1QnOCX;
    input logic [47:0] value;
    io_pmp_2_req_bits_addr=value;
  endfunction

  function void get_io_pmp_2_resp_instrxxF4Cat1QnOCX;
    output logic  value;
    value=io_pmp_2_resp_instr;
  endfunction

  function void set_io_pmp_2_resp_instrxxF4Cat1QnOCX;
    input logic  value;
    io_pmp_2_resp_instr=value;
  endfunction

  function void get_io_pmp_2_resp_mmioxxF4Cat1QnOCX;
    output logic  value;
    value=io_pmp_2_resp_mmio;
  endfunction

  function void set_io_pmp_2_resp_mmioxxF4Cat1QnOCX;
    input logic  value;
    io_pmp_2_resp_mmio=value;
  endfunction

  function void get_io_pmp_3_req_bits_addrxxF4Cat1QnOCX;
    output logic [47:0] value;
    value=io_pmp_3_req_bits_addr;
  endfunction

  function void set_io_pmp_3_req_bits_addrxxF4Cat1QnOCX;
    input logic [47:0] value;
    io_pmp_3_req_bits_addr=value;
  endfunction

  function void get_io_pmp_3_resp_instrxxF4Cat1QnOCX;
    output logic  value;
    value=io_pmp_3_resp_instr;
  endfunction

  function void set_io_pmp_3_resp_instrxxF4Cat1QnOCX;
    input logic  value;
    io_pmp_3_resp_instr=value;
  endfunction

  function void get_io_pmp_3_resp_mmioxxF4Cat1QnOCX;
    output logic  value;
    value=io_pmp_3_resp_mmio;
  endfunction

  function void set_io_pmp_3_resp_mmioxxF4Cat1QnOCX;
    input logic  value;
    io_pmp_3_resp_mmio=value;
  endfunction

  function void get_io_itlb_0_req_validxxF4Cat1QnOCX;
    output logic  value;
    value=io_itlb_0_req_valid;
  endfunction

  function void set_io_itlb_0_req_validxxF4Cat1QnOCX;
    input logic  value;
    io_itlb_0_req_valid=value;
  endfunction

  function void get_io_itlb_0_req_bits_vaddrxxF4Cat1QnOCX;
    output logic [49:0] value;
    value=io_itlb_0_req_bits_vaddr;
  endfunction

  function void set_io_itlb_0_req_bits_vaddrxxF4Cat1QnOCX;
    input logic [49:0] value;
    io_itlb_0_req_bits_vaddr=value;
  endfunction

  function void get_io_itlb_0_resp_bits_paddr_0xxF4Cat1QnOCX;
    output logic [47:0] value;
    value=io_itlb_0_resp_bits_paddr_0;
  endfunction

  function void set_io_itlb_0_resp_bits_paddr_0xxF4Cat1QnOCX;
    input logic [47:0] value;
    io_itlb_0_resp_bits_paddr_0=value;
  endfunction

  function void get_io_itlb_0_resp_bits_gpaddr_0xxF4Cat1QnOCX;
    output logic [49:0] value;
    value=io_itlb_0_resp_bits_gpaddr_0;
  endfunction

  function void set_io_itlb_0_resp_bits_gpaddr_0xxF4Cat1QnOCX;
    input logic [49:0] value;
    io_itlb_0_resp_bits_gpaddr_0=value;
  endfunction

  function void get_io_itlb_0_resp_bits_missxxF4Cat1QnOCX;
    output logic  value;
    value=io_itlb_0_resp_bits_miss;
  endfunction

  function void set_io_itlb_0_resp_bits_missxxF4Cat1QnOCX;
    input logic  value;
    io_itlb_0_resp_bits_miss=value;
  endfunction

  function void get_io_itlb_0_resp_bits_excp_0_gpf_instrxxF4Cat1QnOCX;
    output logic  value;
    value=io_itlb_0_resp_bits_excp_0_gpf_instr;
  endfunction

  function void set_io_itlb_0_resp_bits_excp_0_gpf_instrxxF4Cat1QnOCX;
    input logic  value;
    io_itlb_0_resp_bits_excp_0_gpf_instr=value;
  endfunction

  function void get_io_itlb_0_resp_bits_excp_0_pf_instrxxF4Cat1QnOCX;
    output logic  value;
    value=io_itlb_0_resp_bits_excp_0_pf_instr;
  endfunction

  function void set_io_itlb_0_resp_bits_excp_0_pf_instrxxF4Cat1QnOCX;
    input logic  value;
    io_itlb_0_resp_bits_excp_0_pf_instr=value;
  endfunction

  function void get_io_itlb_0_resp_bits_excp_0_af_instrxxF4Cat1QnOCX;
    output logic  value;
    value=io_itlb_0_resp_bits_excp_0_af_instr;
  endfunction

  function void set_io_itlb_0_resp_bits_excp_0_af_instrxxF4Cat1QnOCX;
    input logic  value;
    io_itlb_0_resp_bits_excp_0_af_instr=value;
  endfunction

  function void get_io_itlb_1_req_validxxF4Cat1QnOCX;
    output logic  value;
    value=io_itlb_1_req_valid;
  endfunction

  function void set_io_itlb_1_req_validxxF4Cat1QnOCX;
    input logic  value;
    io_itlb_1_req_valid=value;
  endfunction

  function void get_io_itlb_1_req_bits_vaddrxxF4Cat1QnOCX;
    output logic [49:0] value;
    value=io_itlb_1_req_bits_vaddr;
  endfunction

  function void set_io_itlb_1_req_bits_vaddrxxF4Cat1QnOCX;
    input logic [49:0] value;
    io_itlb_1_req_bits_vaddr=value;
  endfunction

  function void get_io_itlb_1_resp_bits_paddr_0xxF4Cat1QnOCX;
    output logic [47:0] value;
    value=io_itlb_1_resp_bits_paddr_0;
  endfunction

  function void set_io_itlb_1_resp_bits_paddr_0xxF4Cat1QnOCX;
    input logic [47:0] value;
    io_itlb_1_resp_bits_paddr_0=value;
  endfunction

  function void get_io_itlb_1_resp_bits_gpaddr_0xxF4Cat1QnOCX;
    output logic [49:0] value;
    value=io_itlb_1_resp_bits_gpaddr_0;
  endfunction

  function void set_io_itlb_1_resp_bits_gpaddr_0xxF4Cat1QnOCX;
    input logic [49:0] value;
    io_itlb_1_resp_bits_gpaddr_0=value;
  endfunction

  function void get_io_itlb_1_resp_bits_missxxF4Cat1QnOCX;
    output logic  value;
    value=io_itlb_1_resp_bits_miss;
  endfunction

  function void set_io_itlb_1_resp_bits_missxxF4Cat1QnOCX;
    input logic  value;
    io_itlb_1_resp_bits_miss=value;
  endfunction

  function void get_io_itlb_1_resp_bits_excp_0_gpf_instrxxF4Cat1QnOCX;
    output logic  value;
    value=io_itlb_1_resp_bits_excp_0_gpf_instr;
  endfunction

  function void set_io_itlb_1_resp_bits_excp_0_gpf_instrxxF4Cat1QnOCX;
    input logic  value;
    io_itlb_1_resp_bits_excp_0_gpf_instr=value;
  endfunction

  function void get_io_itlb_1_resp_bits_excp_0_pf_instrxxF4Cat1QnOCX;
    output logic  value;
    value=io_itlb_1_resp_bits_excp_0_pf_instr;
  endfunction

  function void set_io_itlb_1_resp_bits_excp_0_pf_instrxxF4Cat1QnOCX;
    input logic  value;
    io_itlb_1_resp_bits_excp_0_pf_instr=value;
  endfunction

  function void get_io_itlb_1_resp_bits_excp_0_af_instrxxF4Cat1QnOCX;
    output logic  value;
    value=io_itlb_1_resp_bits_excp_0_af_instr;
  endfunction

  function void set_io_itlb_1_resp_bits_excp_0_af_instrxxF4Cat1QnOCX;
    input logic  value;
    io_itlb_1_resp_bits_excp_0_af_instr=value;
  endfunction

  function void get_io_perfInfo_only_0_hitxxF4Cat1QnOCX;
    output logic  value;
    value=io_perfInfo_only_0_hit;
  endfunction

  function void set_io_perfInfo_only_0_hitxxF4Cat1QnOCX;
    input logic  value;
    io_perfInfo_only_0_hit=value;
  endfunction

  function void get_io_perfInfo_only_0_missxxF4Cat1QnOCX;
    output logic  value;
    value=io_perfInfo_only_0_miss;
  endfunction

  function void set_io_perfInfo_only_0_missxxF4Cat1QnOCX;
    input logic  value;
    io_perfInfo_only_0_miss=value;
  endfunction

  function void get_io_perfInfo_hit_0_hit_1xxF4Cat1QnOCX;
    output logic  value;
    value=io_perfInfo_hit_0_hit_1;
  endfunction

  function void set_io_perfInfo_hit_0_hit_1xxF4Cat1QnOCX;
    input logic  value;
    io_perfInfo_hit_0_hit_1=value;
  endfunction

  function void get_io_perfInfo_hit_0_miss_1xxF4Cat1QnOCX;
    output logic  value;
    value=io_perfInfo_hit_0_miss_1;
  endfunction

  function void set_io_perfInfo_hit_0_miss_1xxF4Cat1QnOCX;
    input logic  value;
    io_perfInfo_hit_0_miss_1=value;
  endfunction

  function void get_io_perfInfo_miss_0_hit_1xxF4Cat1QnOCX;
    output logic  value;
    value=io_perfInfo_miss_0_hit_1;
  endfunction

  function void set_io_perfInfo_miss_0_hit_1xxF4Cat1QnOCX;
    input logic  value;
    io_perfInfo_miss_0_hit_1=value;
  endfunction

  function void get_io_perfInfo_miss_0_miss_1xxF4Cat1QnOCX;
    output logic  value;
    value=io_perfInfo_miss_0_miss_1;
  endfunction

  function void set_io_perfInfo_miss_0_miss_1xxF4Cat1QnOCX;
    input logic  value;
    io_perfInfo_miss_0_miss_1=value;
  endfunction

  function void get_io_perfInfo_bank_hit_1xxF4Cat1QnOCX;
    output logic  value;
    value=io_perfInfo_bank_hit_1;
  endfunction

  function void set_io_perfInfo_bank_hit_1xxF4Cat1QnOCX;
    input logic  value;
    io_perfInfo_bank_hit_1=value;
  endfunction

  function void get_io_perfInfo_hitxxF4Cat1QnOCX;
    output logic  value;
    value=io_perfInfo_hit;
  endfunction

  function void set_io_perfInfo_hitxxF4Cat1QnOCX;
    input logic  value;
    io_perfInfo_hit=value;
  endfunction

  function void get_io_error_validxxF4Cat1QnOCX;
    output logic  value;
    value=io_error_valid;
  endfunction

  function void set_io_error_validxxF4Cat1QnOCX;
    input logic  value;
    io_error_valid=value;
  endfunction

  function void get_io_error_bits_paddrxxF4Cat1QnOCX;
    output logic [47:0] value;
    value=io_error_bits_paddr;
  endfunction

  function void set_io_error_bits_paddrxxF4Cat1QnOCX;
    input logic [47:0] value;
    io_error_bits_paddr=value;
  endfunction

  function void get_io_error_bits_report_to_beuxxF4Cat1QnOCX;
    output logic  value;
    value=io_error_bits_report_to_beu;
  endfunction

  function void set_io_error_bits_report_to_beuxxF4Cat1QnOCX;
    input logic  value;
    io_error_bits_report_to_beu=value;
  endfunction

  function void get_io_csr_pf_enablexxF4Cat1QnOCX;
    output logic  value;
    value=io_csr_pf_enable;
  endfunction

  function void set_io_csr_pf_enablexxF4Cat1QnOCX;
    input logic  value;
    io_csr_pf_enable=value;
  endfunction

  function void get_io_csr_parity_enablexxF4Cat1QnOCX;
    output logic  value;
    value=io_csr_parity_enable;
  endfunction

  function void set_io_csr_parity_enablexxF4Cat1QnOCX;
    input logic  value;
    io_csr_parity_enable=value;
  endfunction

  function void get_io_fenceixxF4Cat1QnOCX;
    output logic  value;
    value=io_fencei;
  endfunction

  function void set_io_fenceixxF4Cat1QnOCX;
    input logic  value;
    io_fencei=value;
  endfunction

  function void get_io_flushxxF4Cat1QnOCX;
    output logic  value;
    value=io_flush;
  endfunction

  function void set_io_flushxxF4Cat1QnOCX;
    input logic  value;
    io_flush=value;
  endfunction





endmodule
