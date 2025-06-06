const std = @import("std");
const elf = @import("../elf.zig");
const Or1k = @This();

pub const Relocation = enum(u16) {
    @"16" = elf.R_OR1K_16,
    @"16_pcrel" = elf.R_OR1K_16_PCREL,
    @"32" = elf.R_OR1K_32,
    @"32_pcrel" = elf.R_OR1K_32_PCREL,
    @"8" = elf.R_OR1K_8,
    @"8_pcrel" = elf.R_OR1K_8_PCREL,
    copy = elf.R_OR1K_COPY,
    glob_dat = elf.R_OR1K_GLOB_DAT,
    gnu_vtentry = elf.R_OR1K_GNU_VTENTRY,
    gnu_vtinherit = elf.R_OR1K_GNU_VTINHERIT,
    got16 = elf.R_OR1K_GOT16,
    gotoff_hi16 = elf.R_OR1K_GOTOFF_HI16,
    gotoff_lo16 = elf.R_OR1K_GOTOFF_LO16,
    gotpc_hi16 = elf.R_OR1K_GOTPC_HI16,
    gotpc_lo16 = elf.R_OR1K_GOTPC_LO16,
    hi_16_in_insn = elf.R_OR1K_HI_16_IN_INSN,
    insn_rel_26 = elf.R_OR1K_INSN_REL_26,
    jmp_slot = elf.R_OR1K_JMP_SLOT,
    lo_16_in_insn = elf.R_OR1K_LO_16_IN_INSN,
    none = elf.R_OR1K_NONE,
    plt26 = elf.R_OR1K_PLT26,
    relative = elf.R_OR1K_RELATIVE,
    tls_dtpmod = elf.R_OR1K_TLS_DTPMOD,
    tls_dtpoff = elf.R_OR1K_TLS_DTPOFF,
    tls_gd_hi16 = elf.R_OR1K_TLS_GD_HI16,
    tls_gd_lo16 = elf.R_OR1K_TLS_GD_LO16,
    tls_ie_hi16 = elf.R_OR1K_TLS_IE_HI16,
    tls_ie_lo16 = elf.R_OR1K_TLS_IE_LO16,
    tls_ldm_hi16 = elf.R_OR1K_TLS_LDM_HI16,
    tls_ldm_lo16 = elf.R_OR1K_TLS_LDM_LO16,
    tls_ldo_hi16 = elf.R_OR1K_TLS_LDO_HI16,
    tls_ldo_lo16 = elf.R_OR1K_TLS_LDO_LO16,
    tls_le_hi16 = elf.R_OR1K_TLS_LE_HI16,
    tls_le_lo16 = elf.R_OR1K_TLS_LE_LO16,
    tls_tpoff = elf.R_OR1K_TLS_TPOFF,
};
