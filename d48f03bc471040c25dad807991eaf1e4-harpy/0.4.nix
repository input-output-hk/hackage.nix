{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "harpy";
          version = "0.4";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "klee@cs.tu-berlin.de, magr@cs.tu-berlin.de";
        author = "Dirk Kleeblatt <klee@cs.tu-berlin.de>\nMartin Grabmueller <magr@cs.tu-berlin.de>";
        homepage = "http://uebb.cs.tu-berlin.de/harpy/";
        url = "";
        synopsis = "Runtime code generation for x86 machine code";
        description = "The package contains the following components:\n\n* An x86 assembler.  We provide both low-level code generation in\nmodule \"Harpy.X86CodeGen\" as well as a (slightly) higher-level\nimplementation in module \"Harpy.X86Assembler\", which figures out\naddressing modes based on an instruction's operand types.\n\n* An x86 disassembler which knows most of the opcodes available on\nmodern x86 processors and can display its output both in the style\nused in Intel documents an in AT&T style, like the GNU tools. The\ndisassmbler can be found in module \"Harpy.X86Disassembler\".\n\n* Some abstractions over the abovementioned code generation modules,\nsuch as automatic label management and code generation\ncombinators (for if-then-else statements, while-loops, functions)\n(module \"Harpy.X86CGCombinators\").\n\n* All the above modules use the code generation monad defined in module\n\"Harpy.CodeGenMonad\".\n\n* The Darcs repo and two tutorials on using Harpy can be found at\nHarpy's homepage: <http://uebb.cs.tu-berlin.de/harpy/>";
        buildType = "Custom";
      };
      components = {
        harpy = {
          depends  = if _flags.small_base
            then [
              hsPkgs.base
              hsPkgs.parsec
              hsPkgs.mtl
              hsPkgs.template-haskell
              hsPkgs.pretty
              hsPkgs.containers
              hsPkgs.array
            ]
            else [
              hsPkgs.base
              hsPkgs.parsec
              hsPkgs.mtl
              hsPkgs.template-haskell
            ];
        };
      };
    }