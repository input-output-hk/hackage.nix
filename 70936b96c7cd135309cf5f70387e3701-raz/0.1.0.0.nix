{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "raz";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "lysxia@gmail.com";
        author = "Li-yao Xia";
        homepage = "https://github.com/Lysxia/raz.haskell";
        url = "";
        synopsis = "Random Access Zippers";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        raz = {
          depends  = [
            hsPkgs.base
            hsPkgs.deepseq
            hsPkgs.MonadRandom
          ];
        };
        tests = {
          raz-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.MonadRandom
              hsPkgs.raz
            ];
          };
        };
        benchmarks = {
          raz-bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.criterion
              hsPkgs.deepseq
              hsPkgs.MonadRandom
              hsPkgs.raz
            ];
          };
          sequence-bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.deepseq
              hsPkgs.random
              hsPkgs.raz
              hsPkgs.transformers
            ];
          };
        };
      };
    }