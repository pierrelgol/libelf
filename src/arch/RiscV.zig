const std = @import("std");
const elf = @import("../elf.zig");
const RiscV = @This();

pub const NoteType = enum(u16) {
    csr = elf.NT_RISCV_CSR,
    vector = elf.NT_RISCV_VECTOR,
    _,
};

pub const SectionType = enum(u32) {
    attributes = elf.SHT_RISCV_ATTRIBUTES,
};

pub const Sto = enum(u8) {
    variant_cc = elf.STO_RISCV_VARIANT_CC,
};

pub const Arch = struct {
    pub const Flags = enum(u64) {
        float_abi = elf.EF_RISCV_FLOAT_ABI,
        float_abi_double = elf.EF_RISCV_FLOAT_ABI_DOUBLE,
        // float_abi_quad = elf.EF_RISCV_FLOAT_ABI_QUAD,
        float_abi_single = elf.EF_RISCV_FLOAT_ABI_SINGLE,
        float_abi_soft = elf.EF_RISCV_FLOAT_ABI_SOFT,
        rvc = elf.EF_RISCV_RVC,
        rve = elf.EF_RISCV_RVE,
        tso = elf.EF_RISCV_TSO,
        _,
    };
};

pub const Relocation = enum(u16) {
    @"32" = elf.R_RISCV_32,
    @"32_pcrel" = elf.R_RISCV_32_PCREL,
    @"64" = elf.R_RISCV_64,
    add16 = elf.R_RISCV_ADD16,
    add32 = elf.R_RISCV_ADD32,
    add64 = elf.R_RISCV_ADD64,
    add8 = elf.R_RISCV_ADD8,
    @"align" = elf.R_RISCV_ALIGN,
    branch = elf.R_RISCV_BRANCH,
    call = elf.R_RISCV_CALL,
    call_plt = elf.R_RISCV_CALL_PLT,
    copy = elf.R_RISCV_COPY,
    gnu_vtentry = elf.R_RISCV_GNU_VTENTRY,
    gnu_vtinherit = elf.R_RISCV_GNU_VTINHERIT,
    got_hi20 = elf.R_RISCV_GOT_HI20,
    gprel_i = elf.R_RISCV_GPREL_I,
    gprel_s = elf.R_RISCV_GPREL_S,
    hi20 = elf.R_RISCV_HI20,
    irelative = elf.R_RISCV_IRELATIVE,
    jal = elf.R_RISCV_JAL,
    jump_slot = elf.R_RISCV_JUMP_SLOT,
    lo12_i = elf.R_RISCV_LO12_I,
    lo12_s = elf.R_RISCV_LO12_S,
    none = elf.R_RISCV_NONE,
    num = elf.R_RISCV_NUM,
    pcrel_hi20 = elf.R_RISCV_PCREL_HI20,
    pcrel_lo12_i = elf.R_RISCV_PCREL_LO12_I,
    pcrel_lo12_s = elf.R_RISCV_PCREL_LO12_S,
    plt32 = elf.R_RISCV_PLT32,
    relative = elf.R_RISCV_RELATIVE,
    relax = elf.R_RISCV_RELAX,
    rvc_branch = elf.R_RISCV_RVC_BRANCH,
    rvc_jump = elf.R_RISCV_RVC_JUMP,
    rvc_lui = elf.R_RISCV_RVC_LUI,
    set16 = elf.R_RISCV_SET16,
    set32 = elf.R_RISCV_SET32,
    set6 = elf.R_RISCV_SET6,
    set8 = elf.R_RISCV_SET8,
    set_uleb128 = elf.R_RISCV_SET_ULEB128,
    sub16 = elf.R_RISCV_SUB16,
    sub32 = elf.R_RISCV_SUB32,
    sub6 = elf.R_RISCV_SUB6,
    sub64 = elf.R_RISCV_SUB64,
    sub8 = elf.R_RISCV_SUB8,
    sub_uleb128 = elf.R_RISCV_SUB_ULEB128,
    tls_dtpmod32 = elf.R_RISCV_TLS_DTPMOD32,
    tls_dtpmod64 = elf.R_RISCV_TLS_DTPMOD64,
    tls_dtprel32 = elf.R_RISCV_TLS_DTPREL32,
    tls_dtprel64 = elf.R_RISCV_TLS_DTPREL64,
    tls_gd_hi20 = elf.R_RISCV_TLS_GD_HI20,
    tls_got_hi20 = elf.R_RISCV_TLS_GOT_HI20,
    tls_tprel32 = elf.R_RISCV_TLS_TPREL32,
    tls_tprel64 = elf.R_RISCV_TLS_TPREL64,
    tprel_add = elf.R_RISCV_TPREL_ADD,
    tprel_hi20 = elf.R_RISCV_TPREL_HI20,
    tprel_i = elf.R_RISCV_TPREL_I,
    tprel_lo12_i = elf.R_RISCV_TPREL_LO12_I,
    tprel_lo12_s = elf.R_RISCV_TPREL_LO12_S,
    tprel_s = elf.R_RISCV_TPREL_S,
};
