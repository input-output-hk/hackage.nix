{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "llvm-hs-pretty";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "stephen.m.diehl@gmail.com";
        author = "Stephen Diehl";
        homepage = "https://github.com/llvm-hs/llvm-hs-pretty";
        url = "";
        synopsis = "Pretty printer for LLVM IR.";
        description = "Pretty printer for LLVM IR.";
        buildType = "Simple";
      };
      components = {
        "llvm-hs-pretty" = {
          depends  = [
            hsPkgs.array
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.llvm-hs-pure
            hsPkgs.text
            hsPkgs.wl-pprint-text
          ];
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.text
              hsPkgs.mtl
              hsPkgs.transformers
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.pretty-show
              hsPkgs.tasty
              hsPkgs.tasty-hspec
              hsPkgs.tasty-hunit
              hsPkgs.tasty-golden
              hsPkgs.llvm-hs-pretty
              hsPkgs.llvm-hs
              hsPkgs.llvm-hs-pure
            ];
          };
        };
      };
    }