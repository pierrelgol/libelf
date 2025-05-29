const std = @import("std");
const elf = @import("../elf.zig");
const Gnu = @This();

pub const Property = enum(u32) {
    @"1_needed" = elf.GNU_PROPERTY_1_NEEDED,
    @"1_needed_indirect_extern_access" = elf.GNU_PROPERTY_1_NEEDED_INDIRECT_EXTERN_ACCESS,
    aarch64_feature_1_and = elf.GNU_PROPERTY_AARCH64_FEATURE_1_AND,
    aarch64_feature_1_bti = elf.GNU_PROPERTY_AARCH64_FEATURE_1_BTI,
    aarch64_feature_1_gcs = elf.GNU_PROPERTY_AARCH64_FEATURE_1_GCS,
    aarch64_feature_1_pac = elf.GNU_PROPERTY_AARCH64_FEATURE_1_PAC,
    hiproc = elf.GNU_PROPERTY_HIPROC,
    hiuser = elf.GNU_PROPERTY_HIUSER,
    loproc = elf.GNU_PROPERTY_LOPROC,
    louser = elf.GNU_PROPERTY_LOUSER,
    no_copy_on_protected = elf.GNU_PROPERTY_NO_COPY_ON_PROTECTED,
    stack_size = elf.GNU_PROPERTY_STACK_SIZE,
    uint32_and_hi = elf.GNU_PROPERTY_UINT32_AND_HI,
    uint32_and_lo = elf.GNU_PROPERTY_UINT32_AND_LO,
    uint32_or_hi = elf.GNU_PROPERTY_UINT32_OR_HI,
    uint32_or_lo = elf.GNU_PROPERTY_UINT32_OR_LO,
    x86_feature_1_and = elf.GNU_PROPERTY_X86_FEATURE_1_AND,
    x86_feature_1_ibt = elf.GNU_PROPERTY_X86_FEATURE_1_IBT,
    x86_feature_1_shstk = elf.GNU_PROPERTY_X86_FEATURE_1_SHSTK,
    x86_isa_1_baseline = elf.GNU_PROPERTY_X86_ISA_1_BASELINE,
    x86_isa_1_needed = elf.GNU_PROPERTY_X86_ISA_1_NEEDED,
    x86_isa_1_used = elf.GNU_PROPERTY_X86_ISA_1_USED,
    x86_isa_1_v2 = elf.GNU_PROPERTY_X86_ISA_1_V2,
    x86_isa_1_v3 = elf.GNU_PROPERTY_X86_ISA_1_V3,
    x86_isa_1_v4 = elf.GNU_PROPERTY_X86_ISA_1_V4,
    _,
};

pub const NoteType = enum(u8) {
    abi_tag = elf.NT_GNU_ABI_TAG,
    build_id = elf.NT_GNU_BUILD_ID,
    gold_version = elf.NT_GNU_GOLD_VERSION,
    hwcap = elf.NT_GNU_HWCAP,
    property_type_0 = elf.NT_GNU_PROPERTY_TYPE_0,
    _,
};

pub const SectionFlags = enum(u32) {
    retain = elf.SHF_GNU_RETAIN,
};

pub const SectionType = enum(u32) {
    attributes = elf.SHT_GNU_ATTRIBUTES,
    hash = elf.SHT_GNU_HASH,
    liblist = elf.SHT_GNU_LIBLIST,
    verdef = elf.SHT_GNU_verdef,
    verneed = elf.SHT_GNU_verneed,
    versym = elf.SHT_GNU_versym,
};
