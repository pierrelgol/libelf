const std = @import("std");
const elf = @import("../elf.zig");
const Mips = @This();

pub const Dyn = struct {
    pub const Tags = enum(u32) {
        aux_dynamic = elf.DT_MIPS_AUX_DYNAMIC,
        base_address = elf.DT_MIPS_BASE_ADDRESS,
        compact_size = elf.DT_MIPS_COMPACT_SIZE,
        conflict = elf.DT_MIPS_CONFLICT,
        conflictno = elf.DT_MIPS_CONFLICTNO,
        cxx_flags = elf.DT_MIPS_CXX_FLAGS,
        delta_class = elf.DT_MIPS_DELTA_CLASS,
        delta_classsym = elf.DT_MIPS_DELTA_CLASSSYM,
        delta_classsym_no = elf.DT_MIPS_DELTA_CLASSSYM_NO,
        delta_class_no = elf.DT_MIPS_DELTA_CLASS_NO,
        delta_instance = elf.DT_MIPS_DELTA_INSTANCE,
        delta_instance_no = elf.DT_MIPS_DELTA_INSTANCE_NO,
        delta_reloc = elf.DT_MIPS_DELTA_RELOC,
        delta_reloc_no = elf.DT_MIPS_DELTA_RELOC_NO,
        delta_sym = elf.DT_MIPS_DELTA_SYM,
        delta_sym_no = elf.DT_MIPS_DELTA_SYM_NO,
        dynstr_align = elf.DT_MIPS_DYNSTR_ALIGN,
        flags = elf.DT_MIPS_FLAGS,
        gotsym = elf.DT_MIPS_GOTSYM,
        gp_value = elf.DT_MIPS_GP_VALUE,
        hidden_gotidx = elf.DT_MIPS_HIDDEN_GOTIDX,
        hipageno = elf.DT_MIPS_HIPAGENO,
        ichecksum = elf.DT_MIPS_ICHECKSUM,
        interface = elf.DT_MIPS_INTERFACE,
        interface_size = elf.DT_MIPS_INTERFACE_SIZE,
        iversion = elf.DT_MIPS_IVERSION,
        liblist = elf.DT_MIPS_LIBLIST,
        liblistno = elf.DT_MIPS_LIBLISTNO,
        localpage_gotidx = elf.DT_MIPS_LOCALPAGE_GOTIDX,
        local_gotidx = elf.DT_MIPS_LOCAL_GOTIDX,
        local_gotno = elf.DT_MIPS_LOCAL_GOTNO,
        msym = elf.DT_MIPS_MSYM,
        num = elf.DT_MIPS_NUM,
        options = elf.DT_MIPS_OPTIONS,
        perf_suffix = elf.DT_MIPS_PERF_SUFFIX,
        pixie_init = elf.DT_MIPS_PIXIE_INIT,
        pltgot = elf.DT_MIPS_PLTGOT,
        protected_gotidx = elf.DT_MIPS_PROTECTED_GOTIDX,
        rld_map = elf.DT_MIPS_RLD_MAP,
        rld_map_rel = elf.DT_MIPS_RLD_MAP_REL,
        rld_text_resolve_addr = elf.DT_MIPS_RLD_TEXT_RESOLVE_ADDR,
        rld_version = elf.DT_MIPS_RLD_VERSION,
        rwplt = elf.DT_MIPS_RWPLT,
        symbol_lib = elf.DT_MIPS_SYMBOL_LIB,
        symtabno = elf.DT_MIPS_SYMTABNO,
        time_stamp = elf.DT_MIPS_TIME_STAMP,
        unrefextno = elf.DT_MIPS_UNREFEXTNO,
        xhash = elf.DT_MIPS_XHASH,
    };
};

pub const Section = struct {
    pub const Type = enum(u32) {
        abiflags = elf.SHT_MIPS_ABIFLAGS,
        auxsym = elf.SHT_MIPS_AUXSYM,
        conflict = elf.SHT_MIPS_CONFLICT,
        content = elf.SHT_MIPS_CONTENT,
        debug = elf.SHT_MIPS_DEBUG,
        deltaclass = elf.SHT_MIPS_DELTACLASS,
        deltadecl = elf.SHT_MIPS_DELTADECL,
        deltainst = elf.SHT_MIPS_DELTAINST,
        deltasym = elf.SHT_MIPS_DELTASYM,
        dense = elf.SHT_MIPS_DENSE,
        dwarf = elf.SHT_MIPS_DWARF,
        eh_region = elf.SHT_MIPS_EH_REGION,
        events = elf.SHT_MIPS_EVENTS,
        extsym = elf.SHT_MIPS_EXTSYM,
        fdesc = elf.SHT_MIPS_FDESC,
        gptab = elf.SHT_MIPS_GPTAB,
        iface = elf.SHT_MIPS_IFACE,
        liblist = elf.SHT_MIPS_LIBLIST,
        line = elf.SHT_MIPS_LINE,
        locstr = elf.SHT_MIPS_LOCSTR,
        locsym = elf.SHT_MIPS_LOCSYM,
        msym = elf.SHT_MIPS_MSYM,
        options = elf.SHT_MIPS_OPTIONS,
        optsym = elf.SHT_MIPS_OPTSYM,
        package = elf.SHT_MIPS_PACKAGE,
        packsym = elf.SHT_MIPS_PACKSYM,
        pdesc = elf.SHT_MIPS_PDESC,
        pdr_exception = elf.SHT_MIPS_PDR_EXCEPTION,
        pixie = elf.SHT_MIPS_PIXIE,
        reginfo = elf.SHT_MIPS_REGINFO,
        reld = elf.SHT_MIPS_RELD,
        rfdesc = elf.SHT_MIPS_RFDESC,
        shdr = elf.SHT_MIPS_SHDR,
        symbol_lib = elf.SHT_MIPS_SYMBOL_LIB,
        translate = elf.SHT_MIPS_TRANSLATE,
        ucode = elf.SHT_MIPS_UCODE,
        whirl = elf.SHT_MIPS_WHIRL,
        xhash = elf.SHT_MIPS_XHASH,
        xlate = elf.SHT_MIPS_XLATE,
        xlate_debug = elf.SHT_MIPS_XLATE_DEBUG,
        xlate_old = elf.SHT_MIPS_XLATE_OLD,
    };

    pub const Flags = enum(u32) {
        addr = elf.SHF_MIPS_ADDR,
        gprel = elf.SHF_MIPS_GPREL,
        local = elf.SHF_MIPS_LOCAL,
        merge = elf.SHF_MIPS_MERGE,
        names = elf.SHF_MIPS_NAMES,
        nodupe = elf.SHF_MIPS_NODUPE,
        nostrip = elf.SHF_MIPS_NOSTRIP,
        strings = elf.SHF_MIPS_STRINGS,
    };

    pub const Index = enum(u16) {
        acommon = elf.SHN_MIPS_ACOMMON,
        data = elf.SHN_MIPS_DATA,
        scommon = elf.SHN_MIPS_SCOMMON,
        sundefined = elf.SHN_MIPS_SUNDEFINED,
        text = elf.SHN_MIPS_TEXT,
    };

    pub const Sto = enum(u8) {
        default = elf.STO_MIPS_DEFAULT,
        hidden = elf.STO_MIPS_HIDDEN,
        internal = elf.STO_MIPS_INTERNAL,
        plt = elf.STO_MIPS_PLT,
        protected = elf.STO_MIPS_PROTECTED,
        sc_align_unused = elf.STO_MIPS_SC_ALIGN_UNUSED,
    };
};

pub const Arch = enum(u32) {
    arch_1 = elf.E_MIPS_ARCH_1,
    arch_2 = elf.E_MIPS_ARCH_2,
    arch_3 = elf.E_MIPS_ARCH_3,
    arch_32 = elf.E_MIPS_ARCH_32,
    arch_4 = elf.E_MIPS_ARCH_4,
    arch_5 = elf.E_MIPS_ARCH_5,
    arch_64 = elf.E_MIPS_ARCH_64,
    _,

    pub const Flags = enum(u64) {
        @"32bitmode" = elf.EF_MIPS_32BITMODE,
        abi = elf.EF_MIPS_ABI,
        abi2 = elf.EF_MIPS_ABI2,
        abi_eabi32 = elf.EF_MIPS_ABI_EABI32,
        abi_eabi64 = elf.EF_MIPS_ABI_EABI64,
        abi_o32 = elf.EF_MIPS_ABI_O32,
        abi_o64 = elf.EF_MIPS_ABI_O64,
        abi_on32 = elf.EF_MIPS_ABI_ON32,
        arch = elf.EF_MIPS_ARCH,
        arch_1 = elf.EF_MIPS_ARCH_1,
        arch_2 = elf.EF_MIPS_ARCH_2,
        arch_3 = elf.EF_MIPS_ARCH_3,
        arch_32 = elf.EF_MIPS_ARCH_32,
        arch_32r2 = elf.EF_MIPS_ARCH_32R2,
        arch_32r6 = elf.EF_MIPS_ARCH_32R6,
        arch_4 = elf.EF_MIPS_ARCH_4,
        arch_5 = elf.EF_MIPS_ARCH_5,
        arch_64 = elf.EF_MIPS_ARCH_64,
        arch_64r2 = elf.EF_MIPS_ARCH_64R2,
        arch_64r6 = elf.EF_MIPS_ARCH_64R6,
        arch_ase = elf.EF_MIPS_ARCH_ASE,
        arch_ase_m16 = elf.EF_MIPS_ARCH_ASE_M16,
        arch_ase_mdmx = elf.EF_MIPS_ARCH_ASE_MDMX,
        arch_ase_micromips = elf.EF_MIPS_ARCH_ASE_MICROMIPS,
        cpic = elf.EF_MIPS_CPIC,
        fp64 = elf.EF_MIPS_FP64,
        mach = elf.EF_MIPS_MACH,
        mach_3900 = elf.EF_MIPS_MACH_3900,
        mach_4010 = elf.EF_MIPS_MACH_4010,
        mach_4100 = elf.EF_MIPS_MACH_4100,
        mach_4111 = elf.EF_MIPS_MACH_4111,
        mach_4120 = elf.EF_MIPS_MACH_4120,
        mach_4650 = elf.EF_MIPS_MACH_4650,
        mach_5400 = elf.EF_MIPS_MACH_5400,
        mach_5500 = elf.EF_MIPS_MACH_5500,
        mach_5900 = elf.EF_MIPS_MACH_5900,
        mach_9000 = elf.EF_MIPS_MACH_9000,
        mach_allegrex = elf.EF_MIPS_MACH_ALLEGREX,
        mach_gs264e = elf.EF_MIPS_MACH_GS264E,
        mach_gs464 = elf.EF_MIPS_MACH_GS464,
        mach_gs464e = elf.EF_MIPS_MACH_GS464E,
        mach_iamr2 = elf.EF_MIPS_MACH_IAMR2,
        mach_ls2e = elf.EF_MIPS_MACH_LS2E,
        mach_ls2f = elf.EF_MIPS_MACH_LS2F,
        mach_octeon = elf.EF_MIPS_MACH_OCTEON,
        mach_octeon2 = elf.EF_MIPS_MACH_OCTEON2,
        mach_octeon3 = elf.EF_MIPS_MACH_OCTEON3,
        mach_sb1 = elf.EF_MIPS_MACH_SB1,
        mach_xlr = elf.EF_MIPS_MACH_XLR,
        nan2008 = elf.EF_MIPS_NAN2008,
        noreorder = elf.EF_MIPS_NOREORDER,
        options_first = elf.EF_MIPS_OPTIONS_FIRST,
        pic = elf.EF_MIPS_PIC,
        ucode = elf.EF_MIPS_UCODE,
        xgot = elf.EF_MIPS_XGOT,
    };
};

pub const Flags = struct {
    pub const Ase = enum(u32) {
        dsp = elf.MIPS_AFL_ASE_DSP,
        dspr2 = elf.MIPS_AFL_ASE_DSPR2,
        eva = elf.MIPS_AFL_ASE_EVA,
        mask = elf.MIPS_AFL_ASE_MASK,
        mcu = elf.MIPS_AFL_ASE_MCU,
        mdmx = elf.MIPS_AFL_ASE_MDMX,
        micromips = elf.MIPS_AFL_ASE_MICROMIPS,
        mips16 = elf.MIPS_AFL_ASE_MIPS16,
        mips3d = elf.MIPS_AFL_ASE_MIPS3D,
        msa = elf.MIPS_AFL_ASE_MSA,
        mt = elf.MIPS_AFL_ASE_MT,
        smartmips = elf.MIPS_AFL_ASE_SMARTMIPS,
        virt = elf.MIPS_AFL_ASE_VIRT,
        xpa = elf.MIPS_AFL_ASE_XPA,
        _,
    };

    pub const Ext = enum(u8) {
        @"10000" = elf.MIPS_AFL_EXT_10000,
        @"3900" = elf.MIPS_AFL_EXT_3900,
        @"4010" = elf.MIPS_AFL_EXT_4010,
        @"4100" = elf.MIPS_AFL_EXT_4100,
        @"4111" = elf.MIPS_AFL_EXT_4111,
        @"4120" = elf.MIPS_AFL_EXT_4120,
        @"4650" = elf.MIPS_AFL_EXT_4650,
        @"5400" = elf.MIPS_AFL_EXT_5400,
        @"5500" = elf.MIPS_AFL_EXT_5500,
        @"5900" = elf.MIPS_AFL_EXT_5900,
        LOONGSON_2E = elf.MIPS_AFL_EXT_LOONGSON_2E,
        LOONGSON_2F = elf.MIPS_AFL_EXT_LOONGSON_2F,
        LOONGSON_3A = elf.MIPS_AFL_EXT_LOONGSON_3A,
        OCTEON = elf.MIPS_AFL_EXT_OCTEON,
        OCTEON2 = elf.MIPS_AFL_EXT_OCTEON2,
        OCTEONP = elf.MIPS_AFL_EXT_OCTEONP,
        SB1 = elf.MIPS_AFL_EXT_SB1,
        XLR = elf.MIPS_AFL_EXT_XLR,
        _,
    };
    pub const Reg = enum(u8) {
        @"128" = elf.MIPS_AFL_REG_128,
        @"32" = elf.MIPS_AFL_REG_32,
        @"64" = elf.MIPS_AFL_REG_64,
        none = elf.MIPS_AFL_REG_NONE,
        _,
    };

    pub const FLAGS1_ODDSPREG = elf.MIPS_AFL_FLAGS1_ODDSPREG;
};

pub const Note = struct {
    pub const Type = enum(u16) {
        dsp = elf.NT_MIPS_DSP,
        fp_mode = elf.NT_MIPS_FP_MODE,
        msa = elf.NT_MIPS_MSA,
        _,
    };
};

pub const Symbol = struct {
    pub const Binding = enum(u8) {
        split_common = elf.STB_MIPS_SPLIT_COMMON,
    };
};

pub const OptionKind = enum(u8) {
    exceptions = elf.ODK_EXCEPTIONS,
    fill = elf.ODK_FILL,
    hwand = elf.ODK_HWAND,
    hwor = elf.ODK_HWOR,
    hwpatch = elf.ODK_HWPATCH,
    null = elf.ODK_NULL,
    pad = elf.ODK_PAD,
    reginfo = elf.ODK_REGINFO,
    tags = elf.ODK_TAGS,
    _,
};

pub const ExceptionFlags = enum(u32) {
    dismiss = elf.OEX_DISMISS,
    page0 = elf.OEX_PAGE0,
    precisefp = elf.OEX_PRECISEFP,
    smm = elf.OEX_SMM,
    _,
    pub const Fp = enum(u32) {
        dbug = elf.OEX_FPDBUG,
        u_div0 = elf.OEX_FPU_DIV0,
        u_inex = elf.OEX_FPU_INEX,
        u_inval = elf.OEX_FPU_INVAL,
        u_max = elf.OEX_FPU_MAX,
        u_min = elf.OEX_FPU_MIN,
        u_oflo = elf.OEX_FPU_OFLO,
        u_uflo = elf.OEX_FPU_UFLO,
    };
};

pub const HwAttrs0 = enum(u32) {
    checked = elf.OHWA0_R4KEOP_CHECKED,
    _,
};

pub const HwAttrs1 = enum(u32) {
    clean = elf.OHWA1_R4KEOP_CLEAN,
    _,
};

pub const HwFeatures = enum(u32) {
    r4keop = elf.OHW_R4KEOP,
    r5kcvtl = elf.OHW_R5KCVTL,
    r5keop = elf.OHW_R5KEOP,
    r8kpfetch = elf.OHW_R8KPFETCH,
    _,
};

pub const PaddingFlags = enum(u8) {
    postfix = elf.OPAD_POSTFIX,
    prefix = elf.OPAD_PREFIX,
    symbol = elf.OPAD_SYMBOL,
    _,
};

pub const Program = struct {
    pub const Flags = enum(u32) {
        local = elf.PF_MIPS_LOCAL,
        _,
    };

    pub const Type = enum(u32) {
        mips_abiflags = elf.PT_MIPS_ABIFLAGS,
        mips_options = elf.PT_MIPS_OPTIONS,
        mips_reginfo = elf.PT_MIPS_REGINFO,
        mips_rtproc = elf.PT_MIPS_RTPROC,
    };
};

pub const RuntimeFlags = enum(u32) {
    cord = elf.RHF_CORD,
    default_delay_load = elf.RHF_DEFAULT_DELAY_LOAD,
    delta_c_plus_plus = elf.RHF_DELTA_C_PLUS_PLUS,
    guarantee_init = elf.RHF_GUARANTEE_INIT,
    guarantee_start_init = elf.RHF_GUARANTEE_START_INIT,
    none = elf.RHF_NONE,
    notpot = elf.RHF_NOTPOT,
    no_library_replacement = elf.RHF_NO_LIBRARY_REPLACEMENT,
    no_move = elf.RHF_NO_MOVE,
    no_unres_undef = elf.RHF_NO_UNRES_UNDEF,
    pixie = elf.RHF_PIXIE,
    quickstart = elf.RHF_QUICKSTART,
    requickstart = elf.RHF_REQUICKSTART,
    requickstarted = elf.RHF_REQUICKSTARTED,
    rld_order_safe = elf.RHF_RLD_ORDER_SAFE,
    sgi_only = elf.RHF_SGI_ONLY,
    _,
};

pub const Relocation = struct {
    pub const Mips16 = enum(u8) {
        @"26" = elf.R_MIPS16_26,
        call16 = elf.R_MIPS16_CALL16,
        got16 = elf.R_MIPS16_GOT16,
        gprel = elf.R_MIPS16_GPREL,
        hi16 = elf.R_MIPS16_HI16,
        lo16 = elf.R_MIPS16_LO16,
        pc16_s1 = elf.R_MIPS16_PC16_S1,
        tls_dtprel_hi16 = elf.R_MIPS16_TLS_DTPREL_HI16,
        tls_dtprel_lo16 = elf.R_MIPS16_TLS_DTPREL_LO16,
        tls_gd = elf.R_MIPS16_TLS_GD,
        tls_gottprel = elf.R_MIPS16_TLS_GOTTPREL,
        tls_ldm = elf.R_MIPS16_TLS_LDM,
        tls_tprel_hi16 = elf.R_MIPS16_TLS_TPREL_HI16,
        tls_tprel_lo16 = elf.R_MIPS16_TLS_TPREL_LO16,
    };

    pub const MicroMips = enum(u16) {
        @"26_s1" = elf.R_MICROMIPS_26_S1,
        call16 = elf.R_MICROMIPS_CALL16,
        call_hi16 = elf.R_MICROMIPS_CALL_HI16,
        call_lo16 = elf.R_MICROMIPS_CALL_LO16,
        got16 = elf.R_MICROMIPS_GOT16,
        got_disp = elf.R_MICROMIPS_GOT_DISP,
        got_hi16 = elf.R_MICROMIPS_GOT_HI16,
        got_lo16 = elf.R_MICROMIPS_GOT_LO16,
        got_ofst = elf.R_MICROMIPS_GOT_OFST,
        got_page = elf.R_MICROMIPS_GOT_PAGE,
        gprel16 = elf.R_MICROMIPS_GPREL16,
        gprel7_s2 = elf.R_MICROMIPS_GPREL7_S2,
        hi0_lo16 = elf.R_MICROMIPS_HI0_LO16,
        hi16 = elf.R_MICROMIPS_HI16,
        higher = elf.R_MICROMIPS_HIGHER,
        highest = elf.R_MICROMIPS_HIGHEST,
        jalr = elf.R_MICROMIPS_JALR,
        literal = elf.R_MICROMIPS_LITERAL,
        lo16 = elf.R_MICROMIPS_LO16,
        pc10_s1 = elf.R_MICROMIPS_PC10_S1,
        pc16_s1 = elf.R_MICROMIPS_PC16_S1,
        pc23_s2 = elf.R_MICROMIPS_PC23_S2,
        pc7_s1 = elf.R_MICROMIPS_PC7_S1,
        scn_disp = elf.R_MICROMIPS_SCN_DISP,
        sub = elf.R_MICROMIPS_SUB,
        tls_dtprel_hi16 = elf.R_MICROMIPS_TLS_DTPREL_HI16,
        tls_dtprel_lo16 = elf.R_MICROMIPS_TLS_DTPREL_LO16,
        tls_gd = elf.R_MICROMIPS_TLS_GD,
        tls_gottprel = elf.R_MICROMIPS_TLS_GOTTPREL,
        tls_ldm = elf.R_MICROMIPS_TLS_LDM,
        tls_tprel_hi16 = elf.R_MICROMIPS_TLS_TPREL_HI16,
        tls_tprel_lo16 = elf.R_MICROMIPS_TLS_TPREL_LO16,
    };

    pub const Mips = enum(u16) {
        @"16" = elf.R_MIPS_16,
        @"26" = elf.R_MIPS_26,
        @"32" = elf.R_MIPS_32,
        @"64" = elf.R_MIPS_64,
        add_immediate = elf.R_MIPS_ADD_IMMEDIATE,
        call16 = elf.R_MIPS_CALL16,
        call_hi16 = elf.R_MIPS_CALL_HI16,
        call_lo16 = elf.R_MIPS_CALL_LO16,
        copy = elf.R_MIPS_COPY,
        delete = elf.R_MIPS_DELETE,
        eh = elf.R_MIPS_EH,
        glob_dat = elf.R_MIPS_GLOB_DAT,
        gnu_rel16_s2 = elf.R_MIPS_GNU_REL16_S2,
        gnu_vtentry = elf.R_MIPS_GNU_VTENTRY,
        gnu_vtinherit = elf.R_MIPS_GNU_VTINHERIT,
        got16 = elf.R_MIPS_GOT16,
        got_disp = elf.R_MIPS_GOT_DISP,
        got_hi16 = elf.R_MIPS_GOT_HI16,
        got_lo16 = elf.R_MIPS_GOT_LO16,
        got_ofst = elf.R_MIPS_GOT_OFST,
        got_page = elf.R_MIPS_GOT_PAGE,
        gprel16 = elf.R_MIPS_GPREL16,
        gprel32 = elf.R_MIPS_GPREL32,
        hi16 = elf.R_MIPS_HI16,
        higher = elf.R_MIPS_HIGHER,
        highest = elf.R_MIPS_HIGHEST,
        insert_a = elf.R_MIPS_INSERT_A,
        insert_b = elf.R_MIPS_INSERT_B,
        jalr = elf.R_MIPS_JALR,
        jump_slot = elf.R_MIPS_JUMP_SLOT,
        literal = elf.R_MIPS_LITERAL,
        lo16 = elf.R_MIPS_LO16,
        none = elf.R_MIPS_NONE,
        num = elf.R_MIPS_NUM,
        pc16 = elf.R_MIPS_PC16,
        pc18_s3 = elf.R_MIPS_PC18_S3,
        pc19_s2 = elf.R_MIPS_PC19_S2,
        pc21_s2 = elf.R_MIPS_PC21_S2,
        pc26_s2 = elf.R_MIPS_PC26_S2,
        pc32 = elf.R_MIPS_PC32,
        pchi16 = elf.R_MIPS_PCHI16,
        pclo16 = elf.R_MIPS_PCLO16,
        pjump = elf.R_MIPS_PJUMP,
        rel16 = elf.R_MIPS_REL16,
        rel32 = elf.R_MIPS_REL32,
        relative = elf.R_MIPS_RELATIVE,
        relgot = elf.R_MIPS_RELGOT,
        scn_disp = elf.R_MIPS_SCN_DISP,
        shift5 = elf.R_MIPS_SHIFT5,
        shift6 = elf.R_MIPS_SHIFT6,
        sub = elf.R_MIPS_SUB,
        tls_dtpmod32 = elf.R_MIPS_TLS_DTPMOD32,
        tls_dtpmod64 = elf.R_MIPS_TLS_DTPMOD64,
        tls_dtprel32 = elf.R_MIPS_TLS_DTPREL32,
        tls_dtprel64 = elf.R_MIPS_TLS_DTPREL64,
        tls_dtprel_hi16 = elf.R_MIPS_TLS_DTPREL_HI16,
        tls_dtprel_lo16 = elf.R_MIPS_TLS_DTPREL_LO16,
        tls_gd = elf.R_MIPS_TLS_GD,
        tls_gottprel = elf.R_MIPS_TLS_GOTTPREL,
        tls_ldm = elf.R_MIPS_TLS_LDM,
        tls_tprel32 = elf.R_MIPS_TLS_TPREL32,
        tls_tprel64 = elf.R_MIPS_TLS_TPREL64,
        tls_tprel_hi16 = elf.R_MIPS_TLS_TPREL_HI16,
        tls_tprel_lo16 = elf.R_MIPS_TLS_TPREL_LO16,
    };
};
