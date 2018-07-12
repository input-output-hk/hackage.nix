{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pstemmer";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Sergey N. Yashin";
        maintainer = "yashin.sergey@gmail.com";
        author = "Sergey N. Yashin";
        homepage = "https://github.com/wapxmas/pstemmer#readme";
        url = "";
        synopsis = "A Haskell Implementation of the Porter Stemmer";
        description = "A Haskell Implementation of the Porter Stemmer";
        buildType = "Simple";
      };
      components = {
        "pstemmer" = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
          ];
        };
        exes = {
          "pstemmer-test-exe" = {
            depends  = [
              hsPkgs.base
              hsPkgs.pstemmer
              hsPkgs.text
            ];
          };
        };
      };
    }