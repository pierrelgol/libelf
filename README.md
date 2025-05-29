# libelf

**libelf** is a lightweight ELF file parsing library written in [Zig](https://ziglang.org/), designed for simplicity, modularity, correctness, and ease of integration into low-level projects.

> ⚠️ **Work in Progress**: This library is still under active development. The API and behavior are subject to change. Use at your own risk.

## Goals

- Provide a faithfull translation 1:1 of elf.h
- Provide a convenient namespaced organization of Elf constants.
- Provide a minimal, dependency-free ELF parser in Zig
- Support reading headers, sections, and common ELF structures
- Be suitable for use in embedded and systems programming contexts

## Status

Currently supports:
- Some core constants and enums

Planned features:
- Basic ELF header parsing
- Program and section header interpretation
- Symbol table parsing
- Relocation entries
- Versioning, notes, and dynamic sections
- DWARF and debugging info (possibly as a separate extension)
