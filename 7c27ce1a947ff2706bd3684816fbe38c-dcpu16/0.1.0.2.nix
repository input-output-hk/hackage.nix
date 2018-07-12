{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "dcpu16";
          version = "0.1.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Anatoly Krivolapov";
        maintainer = "example@example.com";
        author = "Anatoly Krivolapov";
        homepage = "https://github.com/anatolat/dcpu16#readme";
        url = "";
        synopsis = "DCPU-16 Emulator & Assembler";
        description = "DCPU-16 Emulator & Assembler";
        buildType = "Simple";
      };
      components = {
        "dcpu16" = {
          depends  = [
            hsPkgs.base
            hsPkgs.sdl2
            hsPkgs.vector
            hsPkgs.bytestring
            hsPkgs.parsec
            hsPkgs.containers
            hsPkgs.spool
          ];
        };
        exes = {
          "dcpu16-exe" = {
            depends  = [
              hsPkgs.base
              hsPkgs.dcpu16
              hsPkgs.optparse-applicative
              hsPkgs.filepath
            ];
          };
        };
        tests = {
          "dcpu16-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.dcpu16
            ];
          };
        };
      };
    }