{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "llvm-hs-pretty";
          version = "0.2.1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "stephen.m.diehl@gmail.com";
        author = "Stephen Diehl";
        homepage = "https://github.com/llvm-hs/llvm-hs-pretty";
        url = "";
        synopsis = "A pretty printer for LLVM IR.";
        description = "A pretty printer for the LLVM AST types provided by llvm-hs.";
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