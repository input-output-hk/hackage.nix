{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "uniquely-represented-sets";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "2018 Donnacha Oisín Kidney";
        maintainer = "mail@doisinkidney.com";
        author = "Donnacha Oisín Kidney";
        homepage = "https://github.com/oisdk/uniquely-represented-sets#readme";
        url = "";
        synopsis = "";
        description = "Please see the README on Github at <https://github.com/oisdk/uniquely-represented-sets#readme>";
        buildType = "Simple";
      };
      components = {
        "uniquely-represented-sets" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.deepseq
          ];
        };
        tests = {
          "uniquely-represented-sets-test" = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.base
              hsPkgs.checkers
              hsPkgs.containers
              hsPkgs.doctest
              hsPkgs.uniquely-represented-sets
            ];
          };
        };
        benchmarks = {
          "bench" = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.random
              hsPkgs.uniquely-represented-sets
            ];
          };
        };
      };
    }