{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "risc386";
          version = "0.0.20130718";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Andreas Abel <andreas.abel@ifi.lmu.de>";
        author = "Andreas Abel with contributions by Robert Grabowski and Ulrich Schoepp";
        homepage = "http://www2.tcs.ifi.lmu.de/~abel/";
        url = "";
        synopsis = "Reduced instruction set i386 simulator";
        description = "risc386 is a symbolic Intel(R) 386 assembler interpreter which\nallows infinitely many registers (temporaries).  Its purpose is\nto debug the output of a MiniJava compiler (from Andrew Appel's\nbook, Modern Compiler Implementation in JAVA) before register\nallocation has been performed.\n\nrisc386 supports only a small fragment of i386 instructions.\nIt expects its input to be a list of procedures in .intel_syntax\neach of which is started by a label and terminated by a return\nstatement.\n\nControl flow is restricted, so, only jumps to procedure-local\nlabels are allowed.  Reading from an uninitialized memory location\nwill lead to an exception.";
        buildType = "Simple";
      };
      components = {
        exes = {
          risc386 = {
            depends  = [
              hsPkgs.array
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.mtl
              hsPkgs.pretty
            ];
          };
        };
      };
    }