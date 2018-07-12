{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "data-constructors";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Dai";
        maintainer = "daig@sodality.cc";
        author = "Dai";
        homepage = "https://github.com/daig/data-constructors#readme";
        url = "";
        synopsis = "Generically compare data by their constructors";
        description = "Utilities for comparing data constructor tags, and TH functions for generating comparison definitions";
        buildType = "Simple";
      };
      components = {
        "data-constructors" = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
          ];
        };
        tests = {
          "data-constructors-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.data-constructors
              hsPkgs.QuickCheck
            ];
          };
        };
        benchmarks = {
          "bench-EqC" = {
            depends  = [
              hsPkgs.base
              hsPkgs.data-constructors
              hsPkgs.QuickCheck
              hsPkgs.criterion
              hsPkgs.deepseq
            ];
          };
        };
      };
    }