const std = @import("std");
const elf = @import("../elf.zig");
const Gnu = @This();

pub const Property = struct {
    pub const @"1_needed" = elf.GNU_PROPERTY_1_NEEDED;
    pub const @"1_needed_indirect_extern_access" = elf.GNU_PROPERTY_1_NEEDED_INDIRECT_EXTERN_ACCESS;
    pub const aarch64_feature_1_and = elf.GNU_PROPERTY_AARCH64_FEATURE_1_AND;
    pub const aarch64_feature_1_bti = elf.GNU_PROPERTY_AARCH64_FEATURE_1_BTI;
    pub const aarch64_feature_1_gcs = elf.GNU_PROPERTY_AARCH64_FEATURE_1_GCS;
    pub const aarch64_feature_1_pac = elf.GNU_PROPERTY_AARCH64_FEATURE_1_PAC;
    pub const hiproc = elf.GNU_PROPERTY_HIPROC;
    pub const hiuser = elf.GNU_PROPERTY_HIUSER;
    pub const loproc = elf.GNU_PROPERTY_LOPROC;
    pub const louser = elf.GNU_PROPERTY_LOUSER;
    pub const no_copy_on_protected = elf.GNU_PROPERTY_NO_COPY_ON_PROTECTED;
    pub const stack_size = elf.GNU_PROPERTY_STACK_SIZE;
    pub const uint32_and_hi = elf.GNU_PROPERTY_UINT32_AND_HI;
    pub const uint32_and_lo = elf.GNU_PROPERTY_UINT32_AND_LO;
    pub const uint32_or_hi = elf.GNU_PROPERTY_UINT32_OR_HI;
    pub const uint32_or_lo = elf.GNU_PROPERTY_UINT32_OR_LO;
    pub const x86_feature_1_and = elf.GNU_PROPERTY_X86_FEATURE_1_AND;
    pub const x86_feature_1_ibt = elf.GNU_PROPERTY_X86_FEATURE_1_IBT;
    pub const x86_feature_1_shstk = elf.GNU_PROPERTY_X86_FEATURE_1_SHSTK;
    pub const x86_isa_1_baseline = elf.GNU_PROPERTY_X86_ISA_1_BASELINE;
    pub const x86_isa_1_needed = elf.GNU_PROPERTY_X86_ISA_1_NEEDED;
    pub const x86_isa_1_used = elf.GNU_PROPERTY_X86_ISA_1_USED;
    pub const x86_isa_1_v2 = elf.GNU_PROPERTY_X86_ISA_1_V2;
    pub const x86_isa_1_v3 = elf.GNU_PROPERTY_X86_ISA_1_V3;
    pub const x86_isa_1_v4 = elf.GNU_PROPERTY_X86_ISA_1_V4;
};

pub const Program = struct {
    pub const Type = enum(u32) {
        gnu_eh_frame = elf.PT_GNU_EH_FRAME,
        gnu_property = elf.PT_GNU_PROPERTY,
        gnu_relro = elf.PT_GNU_RELRO,
        gnu_sframe = elf.PT_GNU_SFRAME,
        gnu_stack = elf.PT_GNU_STACK,
    };
};

pub const Note = struct {
    pub const Type = enum(u8) {
        abi_tag = elf.NT_GNU_ABI_TAG,
        build_id = elf.NT_GNU_BUILD_ID,
        gold_version = elf.NT_GNU_GOLD_VERSION,
        hwcap = elf.NT_GNU_HWCAP,
        property_type_0 = elf.NT_GNU_PROPERTY_TYPE_0,
        _,
    };
};

pub const Symbol = struct {
    pub const Type = enum(u32) {
        gnu_ifunc = elf.STT_GNU_IFUNC,
    };
    pub const Binding = enum(u32) {
        gnu_unique = elf.STB_GNU_UNIQUE,
    };
};

pub const Section = struct {
    pub const Flags = enum(u32) {
        retain = elf.SHF_GNU_RETAIN,
    };

    pub const Type = enum(u32) {
        attributes = elf.SHT_GNU_ATTRIBUTES,
        hash = elf.SHT_GNU_HASH,
        liblist = elf.SHT_GNU_LIBLIST,
        verdef = elf.SHT_GNU_verdef,
        verneed = elf.SHT_GNU_verneed,
        versym = elf.SHT_GNU_versym,
    };
};

pub const Dyn = struct {
    pub const Tags = enum(u32) {
        gnu_conflict = elf.DT_GNU_CONFLICT,
        gnu_conflictsz = elf.DT_GNU_CONFLICTSZ,
        gnu_hash = elf.DT_GNU_HASH,
        gnu_liblist = elf.DT_GNU_LIBLIST,
        gnu_liblistsz = elf.DT_GNU_LIBLISTSZ,
        gnu_prelinked = elf.DT_GNU_PRELINKED,
    };
};
