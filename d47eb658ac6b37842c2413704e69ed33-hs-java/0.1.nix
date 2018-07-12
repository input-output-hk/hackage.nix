{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hs-java";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "portnov84@rambler.ru";
        author = "Ilya V. Portnov";
        homepage = "";
        url = "";
        synopsis = "Java .class files assembler/disassembler";
        description = "This package declares data types for Java .class files format and functions\nto assemble/disassemble Java bytecode.";
        buildType = "Simple";
      };
      components = {
        "hs-java" = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell98
            hsPkgs.containers
            hsPkgs.binary
            hsPkgs.mtl
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.utf8-string
            hsPkgs.array
            hsPkgs.bytestring
            hsPkgs.data-binary-ieee754
            hsPkgs.binary-state
            hsPkgs.control-monad-exception
          ];
        };
      };
    }