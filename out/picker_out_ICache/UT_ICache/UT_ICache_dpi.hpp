// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Prototypes for DPI import and export functions.
//
// Verilator includes this file in all generated .cpp files that use DPI functions.
// Manually include this file where DPI .c import functions are declared to ensure
// the C functions match the expectations of the DPI imports.

#ifndef VERILATED_VICACHE__DPI_H_
#define VERILATED_VICACHE__DPI_H_  // guard

#include "svdpi.h"

#ifdef __cplusplus
extern "C" {
#endif


    // DPI EXPORTS
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:464:17
    extern void get_auto_client_out_a_bits_addressxxPfBDHPSP3wA(svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:454:17
    extern void get_auto_client_out_a_bits_sourcexxPfBDHPSP3wA(svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:434:17
    extern void get_auto_client_out_a_readyxxPfBDHPSP3wA(svLogic* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:444:17
    extern void get_auto_client_out_a_validxxPfBDHPSP3wA(svLogic* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:514:17
    extern void get_auto_client_out_d_bits_corruptxxPfBDHPSP3wA(svLogic* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:504:17
    extern void get_auto_client_out_d_bits_dataxxPfBDHPSP3wA(svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:484:17
    extern void get_auto_client_out_d_bits_opcodexxPfBDHPSP3wA(svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:494:17
    extern void get_auto_client_out_d_bits_sourcexxPfBDHPSP3wA(svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:474:17
    extern void get_auto_client_out_d_validxxPfBDHPSP3wA(svLogic* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:414:17
    extern void get_clockxxPfBDHPSP3wA(svLogic* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1394:17
    extern void get_io_csr_parity_enablexxPfBDHPSP3wA(svLogic* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1384:17
    extern void get_io_csr_pf_enablexxPfBDHPSP3wA(svLogic* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1364:17
    extern void get_io_error_bits_paddrxxPfBDHPSP3wA(svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1374:17
    extern void get_io_error_bits_report_to_beuxxPfBDHPSP3wA(svLogic* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1354:17
    extern void get_io_error_validxxPfBDHPSP3wA(svLogic* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1404:17
    extern void get_io_fenceixxPfBDHPSP3wA(svLogic* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:744:17
    extern void get_io_fetch_req_bits_pcMemRead_0_nextlineStartxxPfBDHPSP3wA(svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:734:17
    extern void get_io_fetch_req_bits_pcMemRead_0_startAddrxxPfBDHPSP3wA(svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:764:17
    extern void get_io_fetch_req_bits_pcMemRead_1_nextlineStartxxPfBDHPSP3wA(svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:754:17
    extern void get_io_fetch_req_bits_pcMemRead_1_startAddrxxPfBDHPSP3wA(svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:784:17
    extern void get_io_fetch_req_bits_pcMemRead_2_nextlineStartxxPfBDHPSP3wA(svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:774:17
    extern void get_io_fetch_req_bits_pcMemRead_2_startAddrxxPfBDHPSP3wA(svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:804:17
    extern void get_io_fetch_req_bits_pcMemRead_3_nextlineStartxxPfBDHPSP3wA(svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:794:17
    extern void get_io_fetch_req_bits_pcMemRead_3_startAddrxxPfBDHPSP3wA(svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:824:17
    extern void get_io_fetch_req_bits_pcMemRead_4_nextlineStartxxPfBDHPSP3wA(svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:814:17
    extern void get_io_fetch_req_bits_pcMemRead_4_startAddrxxPfBDHPSP3wA(svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:834:17
    extern void get_io_fetch_req_bits_readValid_0xxPfBDHPSP3wA(svLogic* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:844:17
    extern void get_io_fetch_req_bits_readValid_1xxPfBDHPSP3wA(svLogic* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:854:17
    extern void get_io_fetch_req_bits_readValid_2xxPfBDHPSP3wA(svLogic* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:864:17
    extern void get_io_fetch_req_bits_readValid_3xxPfBDHPSP3wA(svLogic* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:874:17
    extern void get_io_fetch_req_bits_readValid_4xxPfBDHPSP3wA(svLogic* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:714:17
    extern void get_io_fetch_req_readyxxPfBDHPSP3wA(svLogic* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:724:17
    extern void get_io_fetch_req_validxxPfBDHPSP3wA(svLogic* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:904:17
    extern void get_io_fetch_resp_0_bits_dataxxPfBDHPSP3wA(svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:934:17
    extern void get_io_fetch_resp_0_bits_exceptionxxPfBDHPSP3wA(svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:924:17
    extern void get_io_fetch_resp_0_bits_gpaddrxxPfBDHPSP3wA(svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:944:17
    extern void get_io_fetch_resp_0_bits_mmioxxPfBDHPSP3wA(svLogic* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:914:17
    extern void get_io_fetch_resp_0_bits_paddrxxPfBDHPSP3wA(svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:894:17
    extern void get_io_fetch_resp_0_bits_vaddrxxPfBDHPSP3wA(svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:884:17
    extern void get_io_fetch_resp_0_validxxPfBDHPSP3wA(svLogic* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:974:17
    extern void get_io_fetch_resp_1_bits_exceptionxxPfBDHPSP3wA(svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:964:17
    extern void get_io_fetch_resp_1_bits_vaddrxxPfBDHPSP3wA(svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:954:17
    extern void get_io_fetch_resp_1_validxxPfBDHPSP3wA(svLogic* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1414:17
    extern void get_io_flushxxPfBDHPSP3wA(svLogic* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:594:17
    extern void get_io_ftqPrefetch_flushFromBpu_s2_bits_flagxxPfBDHPSP3wA(svLogic* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:604:17
    extern void get_io_ftqPrefetch_flushFromBpu_s2_bits_valuexxPfBDHPSP3wA(svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:584:17
    extern void get_io_ftqPrefetch_flushFromBpu_s2_validxxPfBDHPSP3wA(svLogic* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:624:17
    extern void get_io_ftqPrefetch_flushFromBpu_s3_bits_flagxxPfBDHPSP3wA(svLogic* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:634:17
    extern void get_io_ftqPrefetch_flushFromBpu_s3_bits_valuexxPfBDHPSP3wA(svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:614:17
    extern void get_io_ftqPrefetch_flushFromBpu_s3_validxxPfBDHPSP3wA(svLogic* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:564:17
    extern void get_io_ftqPrefetch_req_bits_ftqIdx_flagxxPfBDHPSP3wA(svLogic* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:574:17
    extern void get_io_ftqPrefetch_req_bits_ftqIdx_valuexxPfBDHPSP3wA(svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:554:17
    extern void get_io_ftqPrefetch_req_bits_nextlineStartxxPfBDHPSP3wA(svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:544:17
    extern void get_io_ftqPrefetch_req_bits_startAddrxxPfBDHPSP3wA(svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:524:17
    extern void get_io_ftqPrefetch_req_readyxxPfBDHPSP3wA(svLogic* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:534:17
    extern void get_io_ftqPrefetch_req_validxxPfBDHPSP3wA(svLogic* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1124:17
    extern void get_io_itlb_0_req_bits_vaddrxxPfBDHPSP3wA(svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1114:17
    extern void get_io_itlb_0_req_validxxPfBDHPSP3wA(svLogic* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1184:17
    extern void get_io_itlb_0_resp_bits_excp_0_af_instrxxPfBDHPSP3wA(svLogic* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1164:17
    extern void get_io_itlb_0_resp_bits_excp_0_gpf_instrxxPfBDHPSP3wA(svLogic* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1174:17
    extern void get_io_itlb_0_resp_bits_excp_0_pf_instrxxPfBDHPSP3wA(svLogic* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1144:17
    extern void get_io_itlb_0_resp_bits_gpaddr_0xxPfBDHPSP3wA(svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1154:17
    extern void get_io_itlb_0_resp_bits_missxxPfBDHPSP3wA(svLogic* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1134:17
    extern void get_io_itlb_0_resp_bits_paddr_0xxPfBDHPSP3wA(svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1204:17
    extern void get_io_itlb_1_req_bits_vaddrxxPfBDHPSP3wA(svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1194:17
    extern void get_io_itlb_1_req_validxxPfBDHPSP3wA(svLogic* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1264:17
    extern void get_io_itlb_1_resp_bits_excp_0_af_instrxxPfBDHPSP3wA(svLogic* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1244:17
    extern void get_io_itlb_1_resp_bits_excp_0_gpf_instrxxPfBDHPSP3wA(svLogic* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1254:17
    extern void get_io_itlb_1_resp_bits_excp_0_pf_instrxxPfBDHPSP3wA(svLogic* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1224:17
    extern void get_io_itlb_1_resp_bits_gpaddr_0xxPfBDHPSP3wA(svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1234:17
    extern void get_io_itlb_1_resp_bits_missxxPfBDHPSP3wA(svLogic* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1214:17
    extern void get_io_itlb_1_resp_bits_paddr_0xxPfBDHPSP3wA(svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1334:17
    extern void get_io_perfInfo_bank_hit_1xxPfBDHPSP3wA(svLogic* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1294:17
    extern void get_io_perfInfo_hit_0_hit_1xxPfBDHPSP3wA(svLogic* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1304:17
    extern void get_io_perfInfo_hit_0_miss_1xxPfBDHPSP3wA(svLogic* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1344:17
    extern void get_io_perfInfo_hitxxPfBDHPSP3wA(svLogic* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1314:17
    extern void get_io_perfInfo_miss_0_hit_1xxPfBDHPSP3wA(svLogic* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1324:17
    extern void get_io_perfInfo_miss_0_miss_1xxPfBDHPSP3wA(svLogic* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1274:17
    extern void get_io_perfInfo_only_0_hitxxPfBDHPSP3wA(svLogic* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1284:17
    extern void get_io_perfInfo_only_0_missxxPfBDHPSP3wA(svLogic* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:994:17
    extern void get_io_pmp_0_req_bits_addrxxPfBDHPSP3wA(svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1004:17
    extern void get_io_pmp_0_resp_instrxxPfBDHPSP3wA(svLogic* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1014:17
    extern void get_io_pmp_0_resp_mmioxxPfBDHPSP3wA(svLogic* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1024:17
    extern void get_io_pmp_1_req_bits_addrxxPfBDHPSP3wA(svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1034:17
    extern void get_io_pmp_1_resp_instrxxPfBDHPSP3wA(svLogic* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1044:17
    extern void get_io_pmp_1_resp_mmioxxPfBDHPSP3wA(svLogic* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1054:17
    extern void get_io_pmp_2_req_bits_addrxxPfBDHPSP3wA(svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1064:17
    extern void get_io_pmp_2_resp_instrxxPfBDHPSP3wA(svLogic* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1074:17
    extern void get_io_pmp_2_resp_mmioxxPfBDHPSP3wA(svLogic* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1084:17
    extern void get_io_pmp_3_req_bits_addrxxPfBDHPSP3wA(svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1094:17
    extern void get_io_pmp_3_resp_instrxxPfBDHPSP3wA(svLogic* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1104:17
    extern void get_io_pmp_3_resp_mmioxxPfBDHPSP3wA(svLogic* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:654:17
    extern void get_io_softPrefetch_0_bits_vaddrxxPfBDHPSP3wA(svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:644:17
    extern void get_io_softPrefetch_0_validxxPfBDHPSP3wA(svLogic* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:674:17
    extern void get_io_softPrefetch_1_bits_vaddrxxPfBDHPSP3wA(svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:664:17
    extern void get_io_softPrefetch_1_validxxPfBDHPSP3wA(svLogic* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:694:17
    extern void get_io_softPrefetch_2_bits_vaddrxxPfBDHPSP3wA(svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:684:17
    extern void get_io_softPrefetch_2_validxxPfBDHPSP3wA(svLogic* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:704:17
    extern void get_io_stopxxPfBDHPSP3wA(svLogic* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:984:17
    extern void get_io_toIFUxxPfBDHPSP3wA(svLogic* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:424:17
    extern void get_resetxxPfBDHPSP3wA(svLogic* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:469:17
    extern void set_auto_client_out_a_bits_addressxxPfBDHPSP3wA(const svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:459:17
    extern void set_auto_client_out_a_bits_sourcexxPfBDHPSP3wA(const svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:439:17
    extern void set_auto_client_out_a_readyxxPfBDHPSP3wA(svLogic value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:449:17
    extern void set_auto_client_out_a_validxxPfBDHPSP3wA(svLogic value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:519:17
    extern void set_auto_client_out_d_bits_corruptxxPfBDHPSP3wA(svLogic value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:509:17
    extern void set_auto_client_out_d_bits_dataxxPfBDHPSP3wA(const svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:489:17
    extern void set_auto_client_out_d_bits_opcodexxPfBDHPSP3wA(const svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:499:17
    extern void set_auto_client_out_d_bits_sourcexxPfBDHPSP3wA(const svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:479:17
    extern void set_auto_client_out_d_validxxPfBDHPSP3wA(svLogic value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:419:17
    extern void set_clockxxPfBDHPSP3wA(svLogic value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1399:17
    extern void set_io_csr_parity_enablexxPfBDHPSP3wA(svLogic value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1389:17
    extern void set_io_csr_pf_enablexxPfBDHPSP3wA(svLogic value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1369:17
    extern void set_io_error_bits_paddrxxPfBDHPSP3wA(const svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1379:17
    extern void set_io_error_bits_report_to_beuxxPfBDHPSP3wA(svLogic value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1359:17
    extern void set_io_error_validxxPfBDHPSP3wA(svLogic value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1409:17
    extern void set_io_fenceixxPfBDHPSP3wA(svLogic value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:749:17
    extern void set_io_fetch_req_bits_pcMemRead_0_nextlineStartxxPfBDHPSP3wA(const svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:739:17
    extern void set_io_fetch_req_bits_pcMemRead_0_startAddrxxPfBDHPSP3wA(const svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:769:17
    extern void set_io_fetch_req_bits_pcMemRead_1_nextlineStartxxPfBDHPSP3wA(const svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:759:17
    extern void set_io_fetch_req_bits_pcMemRead_1_startAddrxxPfBDHPSP3wA(const svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:789:17
    extern void set_io_fetch_req_bits_pcMemRead_2_nextlineStartxxPfBDHPSP3wA(const svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:779:17
    extern void set_io_fetch_req_bits_pcMemRead_2_startAddrxxPfBDHPSP3wA(const svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:809:17
    extern void set_io_fetch_req_bits_pcMemRead_3_nextlineStartxxPfBDHPSP3wA(const svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:799:17
    extern void set_io_fetch_req_bits_pcMemRead_3_startAddrxxPfBDHPSP3wA(const svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:829:17
    extern void set_io_fetch_req_bits_pcMemRead_4_nextlineStartxxPfBDHPSP3wA(const svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:819:17
    extern void set_io_fetch_req_bits_pcMemRead_4_startAddrxxPfBDHPSP3wA(const svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:839:17
    extern void set_io_fetch_req_bits_readValid_0xxPfBDHPSP3wA(svLogic value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:849:17
    extern void set_io_fetch_req_bits_readValid_1xxPfBDHPSP3wA(svLogic value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:859:17
    extern void set_io_fetch_req_bits_readValid_2xxPfBDHPSP3wA(svLogic value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:869:17
    extern void set_io_fetch_req_bits_readValid_3xxPfBDHPSP3wA(svLogic value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:879:17
    extern void set_io_fetch_req_bits_readValid_4xxPfBDHPSP3wA(svLogic value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:719:17
    extern void set_io_fetch_req_readyxxPfBDHPSP3wA(svLogic value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:729:17
    extern void set_io_fetch_req_validxxPfBDHPSP3wA(svLogic value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:909:17
    extern void set_io_fetch_resp_0_bits_dataxxPfBDHPSP3wA(const svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:939:17
    extern void set_io_fetch_resp_0_bits_exceptionxxPfBDHPSP3wA(const svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:929:17
    extern void set_io_fetch_resp_0_bits_gpaddrxxPfBDHPSP3wA(const svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:949:17
    extern void set_io_fetch_resp_0_bits_mmioxxPfBDHPSP3wA(svLogic value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:919:17
    extern void set_io_fetch_resp_0_bits_paddrxxPfBDHPSP3wA(const svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:899:17
    extern void set_io_fetch_resp_0_bits_vaddrxxPfBDHPSP3wA(const svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:889:17
    extern void set_io_fetch_resp_0_validxxPfBDHPSP3wA(svLogic value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:979:17
    extern void set_io_fetch_resp_1_bits_exceptionxxPfBDHPSP3wA(const svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:969:17
    extern void set_io_fetch_resp_1_bits_vaddrxxPfBDHPSP3wA(const svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:959:17
    extern void set_io_fetch_resp_1_validxxPfBDHPSP3wA(svLogic value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1419:17
    extern void set_io_flushxxPfBDHPSP3wA(svLogic value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:599:17
    extern void set_io_ftqPrefetch_flushFromBpu_s2_bits_flagxxPfBDHPSP3wA(svLogic value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:609:17
    extern void set_io_ftqPrefetch_flushFromBpu_s2_bits_valuexxPfBDHPSP3wA(const svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:589:17
    extern void set_io_ftqPrefetch_flushFromBpu_s2_validxxPfBDHPSP3wA(svLogic value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:629:17
    extern void set_io_ftqPrefetch_flushFromBpu_s3_bits_flagxxPfBDHPSP3wA(svLogic value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:639:17
    extern void set_io_ftqPrefetch_flushFromBpu_s3_bits_valuexxPfBDHPSP3wA(const svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:619:17
    extern void set_io_ftqPrefetch_flushFromBpu_s3_validxxPfBDHPSP3wA(svLogic value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:569:17
    extern void set_io_ftqPrefetch_req_bits_ftqIdx_flagxxPfBDHPSP3wA(svLogic value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:579:17
    extern void set_io_ftqPrefetch_req_bits_ftqIdx_valuexxPfBDHPSP3wA(const svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:559:17
    extern void set_io_ftqPrefetch_req_bits_nextlineStartxxPfBDHPSP3wA(const svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:549:17
    extern void set_io_ftqPrefetch_req_bits_startAddrxxPfBDHPSP3wA(const svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:529:17
    extern void set_io_ftqPrefetch_req_readyxxPfBDHPSP3wA(svLogic value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:539:17
    extern void set_io_ftqPrefetch_req_validxxPfBDHPSP3wA(svLogic value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1129:17
    extern void set_io_itlb_0_req_bits_vaddrxxPfBDHPSP3wA(const svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1119:17
    extern void set_io_itlb_0_req_validxxPfBDHPSP3wA(svLogic value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1189:17
    extern void set_io_itlb_0_resp_bits_excp_0_af_instrxxPfBDHPSP3wA(svLogic value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1169:17
    extern void set_io_itlb_0_resp_bits_excp_0_gpf_instrxxPfBDHPSP3wA(svLogic value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1179:17
    extern void set_io_itlb_0_resp_bits_excp_0_pf_instrxxPfBDHPSP3wA(svLogic value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1149:17
    extern void set_io_itlb_0_resp_bits_gpaddr_0xxPfBDHPSP3wA(const svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1159:17
    extern void set_io_itlb_0_resp_bits_missxxPfBDHPSP3wA(svLogic value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1139:17
    extern void set_io_itlb_0_resp_bits_paddr_0xxPfBDHPSP3wA(const svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1209:17
    extern void set_io_itlb_1_req_bits_vaddrxxPfBDHPSP3wA(const svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1199:17
    extern void set_io_itlb_1_req_validxxPfBDHPSP3wA(svLogic value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1269:17
    extern void set_io_itlb_1_resp_bits_excp_0_af_instrxxPfBDHPSP3wA(svLogic value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1249:17
    extern void set_io_itlb_1_resp_bits_excp_0_gpf_instrxxPfBDHPSP3wA(svLogic value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1259:17
    extern void set_io_itlb_1_resp_bits_excp_0_pf_instrxxPfBDHPSP3wA(svLogic value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1229:17
    extern void set_io_itlb_1_resp_bits_gpaddr_0xxPfBDHPSP3wA(const svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1239:17
    extern void set_io_itlb_1_resp_bits_missxxPfBDHPSP3wA(svLogic value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1219:17
    extern void set_io_itlb_1_resp_bits_paddr_0xxPfBDHPSP3wA(const svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1339:17
    extern void set_io_perfInfo_bank_hit_1xxPfBDHPSP3wA(svLogic value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1299:17
    extern void set_io_perfInfo_hit_0_hit_1xxPfBDHPSP3wA(svLogic value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1309:17
    extern void set_io_perfInfo_hit_0_miss_1xxPfBDHPSP3wA(svLogic value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1349:17
    extern void set_io_perfInfo_hitxxPfBDHPSP3wA(svLogic value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1319:17
    extern void set_io_perfInfo_miss_0_hit_1xxPfBDHPSP3wA(svLogic value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1329:17
    extern void set_io_perfInfo_miss_0_miss_1xxPfBDHPSP3wA(svLogic value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1279:17
    extern void set_io_perfInfo_only_0_hitxxPfBDHPSP3wA(svLogic value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1289:17
    extern void set_io_perfInfo_only_0_missxxPfBDHPSP3wA(svLogic value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:999:17
    extern void set_io_pmp_0_req_bits_addrxxPfBDHPSP3wA(const svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1009:17
    extern void set_io_pmp_0_resp_instrxxPfBDHPSP3wA(svLogic value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1019:17
    extern void set_io_pmp_0_resp_mmioxxPfBDHPSP3wA(svLogic value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1029:17
    extern void set_io_pmp_1_req_bits_addrxxPfBDHPSP3wA(const svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1039:17
    extern void set_io_pmp_1_resp_instrxxPfBDHPSP3wA(svLogic value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1049:17
    extern void set_io_pmp_1_resp_mmioxxPfBDHPSP3wA(svLogic value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1059:17
    extern void set_io_pmp_2_req_bits_addrxxPfBDHPSP3wA(const svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1069:17
    extern void set_io_pmp_2_resp_instrxxPfBDHPSP3wA(svLogic value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1079:17
    extern void set_io_pmp_2_resp_mmioxxPfBDHPSP3wA(svLogic value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1089:17
    extern void set_io_pmp_3_req_bits_addrxxPfBDHPSP3wA(const svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1099:17
    extern void set_io_pmp_3_resp_instrxxPfBDHPSP3wA(svLogic value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:1109:17
    extern void set_io_pmp_3_resp_mmioxxPfBDHPSP3wA(svLogic value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:659:17
    extern void set_io_softPrefetch_0_bits_vaddrxxPfBDHPSP3wA(const svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:649:17
    extern void set_io_softPrefetch_0_validxxPfBDHPSP3wA(svLogic value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:679:17
    extern void set_io_softPrefetch_1_bits_vaddrxxPfBDHPSP3wA(const svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:669:17
    extern void set_io_softPrefetch_1_validxxPfBDHPSP3wA(svLogic value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:699:17
    extern void set_io_softPrefetch_2_bits_vaddrxxPfBDHPSP3wA(const svLogicVecVal* value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:689:17
    extern void set_io_softPrefetch_2_validxxPfBDHPSP3wA(svLogic value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:709:17
    extern void set_io_stopxxPfBDHPSP3wA(svLogic value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:989:17
    extern void set_io_toIFUxxPfBDHPSP3wA(svLogic value);
    // DPI export at /mnt/d/code/RISC-V/XS-MLVP-XiangShan-ICache/out/picker_out_ICache/ICache_top.sv:429:17
    extern void set_resetxxPfBDHPSP3wA(svLogic value);

#ifdef __cplusplus
}
#endif

#endif  // guard
