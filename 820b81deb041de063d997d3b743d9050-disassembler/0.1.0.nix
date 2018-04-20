{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      split-base = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "disassembler";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Martin Grabmueller <martin.grabmueller@eleven.de>";
        author = "Martin Grabmueller <martin.grabmueller@eleven.de>, Dirk Kleeblatt <klee@cs.tu-berlin.de>";
        homepage = "";
        url = "";
        synopsis = "Disassembler for X86 & AMD64 machine code";
        description = "Disassembler for X86 & AMD64 machine code";
        buildType = "Simple";
      };
      components = {
        disassembler = {
          depends  = if _flags.split-base
            then [ hsPkgs.base ]
            else [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.array
              hsPkgs.mtl
              hsPkgs.parsec
            ];
        };
      };
    }