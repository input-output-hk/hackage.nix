{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "unidecode";
          version = "0.1.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Mark Wotton";
        maintainer = "mwotton@gmail.com";
        author = "A";
        homepage = "https://github.com/mwotton/unidecode#readme";
        url = "";
        synopsis = "Haskell binding of Unidecode";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        "unidecode" = {
          depends  = [ hsPkgs.base ];
        };
        tests = {
          "unidecode-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.unidecode
              hsPkgs.hspec
            ];
          };
        };
      };
    }