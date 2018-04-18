{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "riscv-isa";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(C) 2016 Moritz Kiefer";
        maintainer = "value";
        author = "Moritz Kiefer";
        homepage = "https://github.com/cocreature/riscv-isa#readme";
        url = "";
        synopsis = "Haskell representation of the RISC-V instruction set architecture";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        riscv-isa = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.QuickCheck
          ];
        };
        tests = {
          riscv-isa-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.riscv-isa
            ];
          };
        };
      };
    }