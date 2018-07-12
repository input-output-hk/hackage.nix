{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "groupBy";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "2018 Donnacha Oisín Kidney";
        maintainer = "mail@doisinkidney.com";
        author = "Donnacha Oisín Kidney";
        homepage = "https://github.com/oisdk/groupBy#readme";
        url = "";
        synopsis = "Replacement definition of Data.List.GroupBy";
        description = "Please see the README on Github at <https://github.com/oisdk/groupBy#readme>";
        buildType = "Simple";
      };
      components = {
        "groupBy" = {
          depends  = [ hsPkgs.base ];
        };
        tests = {
          "groupBy-test" = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.base
              hsPkgs.doctest
              hsPkgs.groupBy
            ];
          };
        };
        benchmarks = {
          "bench" = {
            depends  = [
              hsPkgs.base
              hsPkgs.code-page
              hsPkgs.criterion
              hsPkgs.groupBy
              hsPkgs.optparse-applicative
              hsPkgs.random
              hsPkgs.utility-ht
            ];
          };
        };
      };
    }