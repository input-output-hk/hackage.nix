{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "yi-rope";
          version = "0.4.0.0";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "fuuzetsu@fuuzetsu.co.uk";
        author = "Mateusz Kowalczyk";
        homepage = "";
        url = "";
        synopsis = "A rope data structure used by Yi";
        description = "A rope data structure used by Yi";
        buildType = "Simple";
      };
      components = {
        yi-rope = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.deepseq
            hsPkgs.fingertree
            hsPkgs.text
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.quickcheck-instances
              hsPkgs.text
              hsPkgs.yi-rope
            ];
          };
        };
        benchmarks = {
          bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.deepseq
              hsPkgs.yi-rope
            ];
          };
        };
      };
    }