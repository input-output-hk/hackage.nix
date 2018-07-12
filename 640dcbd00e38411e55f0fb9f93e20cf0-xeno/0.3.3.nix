{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      libxml2 = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "xeno";
          version = "0.3.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Marco Zocca (zocca.marco gmail)";
        author = "Christopher Done";
        homepage = "https://github.com/ocramz/xeno";
        url = "";
        synopsis = "A fast event-based XML parser in pure Haskell";
        description = "A fast, low-memory use, event-based XML parser in pure Haskell.";
        buildType = "Simple";
      };
      components = {
        "xeno" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.vector
            hsPkgs.deepseq
            hsPkgs.array
            hsPkgs.mutable-containers
            hsPkgs.mtl
          ];
        };
        tests = {
          "xeno-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.xeno
              hsPkgs.hexml
              hsPkgs.hspec
              hsPkgs.bytestring
            ];
          };
        };
        benchmarks = {
          "xeno-speed-bench" = {
            depends  = [
              hsPkgs.base
              hsPkgs.xeno
              hsPkgs.hexml
              hsPkgs.criterion
              hsPkgs.bytestring
              hsPkgs.deepseq
              hsPkgs.ghc-prim
              hsPkgs.xml
              hsPkgs.hexpat
            ] ++ pkgs.lib.optional _flags.libxml2 hsPkgs.libxml;
          };
          "xeno-memory-bench" = {
            depends  = [
              hsPkgs.base
              hsPkgs.xeno
              hsPkgs.weigh
              hsPkgs.bytestring
              hsPkgs.deepseq
              hsPkgs.hexml
            ];
          };
        };
      };
    }