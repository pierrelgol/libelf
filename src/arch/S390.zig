const std = @import("std");
const elf = @import("../elf.zig");
const S390 = @This();

pub const Arch = packed struct {
    pub const Flags = enum(u64) {
        high_gprs = elf.EF_S390_HIGH_GPRS,
        _,
    };
};

pub const Note = struct {
    pub const Type = enum(u16) {
        ctrs = elf.NT_S390_CTRS,
        gs_bc = elf.NT_S390_GS_BC,
        gs_cb = elf.NT_S390_GS_CB,
        high_gprs = elf.NT_S390_HIGH_GPRS,
        last_break = elf.NT_S390_LAST_BREAK,
        prefix = elf.NT_S390_PREFIX,
        pv_cpu_data = elf.NT_S390_PV_CPU_DATA,
        ri_cb = elf.NT_S390_RI_CB,
        system_call = elf.NT_S390_SYSTEM_CALL,
        tdb = elf.NT_S390_TDB,
        timer = elf.NT_S390_TIMER,
        todcmp = elf.NT_S390_TODCMP,
        todpreg = elf.NT_S390_TODPREG,
        vxrs_high = elf.NT_S390_VXRS_HIGH,
        vxrs_low = elf.NT_S390_VXRS_LOW,
        _,
    };
};

pub const Relocation = enum(u8) {
    @"12" = elf.R_390_12,
    @"16" = elf.R_390_16,
    @"20" = elf.R_390_20,
    @"32" = elf.R_390_32,
    @"64" = elf.R_390_64,
    @"8" = elf.R_390_8,
    copy = elf.R_390_COPY,
    glob_dat = elf.R_390_GLOB_DAT,
    got12 = elf.R_390_GOT12,
    got16 = elf.R_390_GOT16,
    got20 = elf.R_390_GOT20,
    got32 = elf.R_390_GOT32,
    got64 = elf.R_390_GOT64,
    gotent = elf.R_390_GOTENT,
    gotoff16 = elf.R_390_GOTOFF16,
    gotoff32 = elf.R_390_GOTOFF32,
    gotoff64 = elf.R_390_GOTOFF64,
    gotpc = elf.R_390_GOTPC,
    gotpcdbl = elf.R_390_GOTPCDBL,
    gotplt12 = elf.R_390_GOTPLT12,
    gotplt16 = elf.R_390_GOTPLT16,
    gotplt20 = elf.R_390_GOTPLT20,
    gotplt32 = elf.R_390_GOTPLT32,
    gotplt64 = elf.R_390_GOTPLT64,
    gotpltent = elf.R_390_GOTPLTENT,
    irelative = elf.R_390_IRELATIVE,
    jmp_slot = elf.R_390_JMP_SLOT,
    none = elf.R_390_NONE,
    num = elf.R_390_NUM,
    pc16 = elf.R_390_PC16,
    pc16dbl = elf.R_390_PC16DBL,
    pc32 = elf.R_390_PC32,
    pc32dbl = elf.R_390_PC32DBL,
    pc64 = elf.R_390_PC64,
    plt16dbl = elf.R_390_PLT16DBL,
    plt32 = elf.R_390_PLT32,
    plt32dbl = elf.R_390_PLT32DBL,
    plt64 = elf.R_390_PLT64,
    pltoff16 = elf.R_390_PLTOFF16,
    pltoff32 = elf.R_390_PLTOFF32,
    pltoff64 = elf.R_390_PLTOFF64,
    relative = elf.R_390_RELATIVE,
    tls_dtpmod = elf.R_390_TLS_DTPMOD,
    tls_dtpoff = elf.R_390_TLS_DTPOFF,
    tls_gd32 = elf.R_390_TLS_GD32,
    tls_gd64 = elf.R_390_TLS_GD64,
    tls_gdcall = elf.R_390_TLS_GDCALL,
    tls_gotie12 = elf.R_390_TLS_GOTIE12,
    tls_gotie20 = elf.R_390_TLS_GOTIE20,
    tls_gotie32 = elf.R_390_TLS_GOTIE32,
    tls_gotie64 = elf.R_390_TLS_GOTIE64,
    tls_ie32 = elf.R_390_TLS_IE32,
    tls_ie64 = elf.R_390_TLS_IE64,
    tls_ieent = elf.R_390_TLS_IEENT,
    tls_ldcall = elf.R_390_TLS_LDCALL,
    tls_ldm32 = elf.R_390_TLS_LDM32,
    tls_ldm64 = elf.R_390_TLS_LDM64,
    tls_ldo32 = elf.R_390_TLS_LDO32,
    tls_ldo64 = elf.R_390_TLS_LDO64,
    tls_le32 = elf.R_390_TLS_LE32,
    tls_le64 = elf.R_390_TLS_LE64,
    tls_load = elf.R_390_TLS_LOAD,
    tls_tpoff = elf.R_390_TLS_TPOFF,
};
