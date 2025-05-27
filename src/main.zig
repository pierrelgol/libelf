const std = @import("std");

const Elf = @import("Elf.zig");
const print = std.debug.print;

pub fn main() !void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    defer _ = gpa.deinit();
    const allocator = gpa.allocator();

    const args = try std.process.argsAlloc(allocator);
    defer std.process.argsFree(allocator, args);

    if (args.len != 2) {
        print("Usage: {s} <elf_file>\n", .{args[0]});
        return;
    }

    const cwd = std.fs.cwd();
    const file = try cwd.openFile(args[1], .{ .mode = .read_only });
    defer file.close();

    const buffer = try file.readToEndAlloc(allocator, std.math.maxInt(u32));
    defer allocator.free(buffer);

    var parser = Elf.Parser.init(allocator, buffer) catch |err| {
        print("Error parsing ELF file: {!}\n", .{err});
        return;
    };
    defer parser.deinit();

    parser.printHeaderInfo();
    parser.printSections();
    parser.printPrograms();
    parser.printSymbols(20);
}
