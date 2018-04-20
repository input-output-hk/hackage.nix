{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "fuzzyset";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Johannes Hildén";
        maintainer = "hildenjohannes@gmail.com";
        author = "Johannes Hildén";
        homepage = "https://github.com/laserpants/fuzzyset-haskell";
        url = "";
        synopsis = "Fuzzy set for approximate string matching";
        description = "This library is based on the Python and JavaScript libraries with the same name.";
        buildType = "Simple";
      };
      components = {
        fuzzyset = {
          depends  = [
            hsPkgs.base
            hsPkgs.base-unicode-symbols
            hsPkgs.data-default
            hsPkgs.lens
            hsPkgs.text
            hsPkgs.text-metrics
            hsPkgs.unordered-containers
            hsPkgs.vector
          ];
        };
        exes = {
          fuzzyset-exe = {
            depends  = [
              hsPkgs.base
              hsPkgs.fuzzyset
            ];
          };
        };
        tests = {
          fuzzyset-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.base-unicode-symbols
              hsPkgs.hspec
              hsPkgs.fuzzyset
              hsPkgs.lens
              hsPkgs.text
              hsPkgs.ieee754
              hsPkgs.unordered-containers
            ];
          };
        };
      };
    }