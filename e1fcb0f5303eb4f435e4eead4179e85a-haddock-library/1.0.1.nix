{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "haddock-library";
          version = "1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Simon Hengel <sol@typeful.net>, Mateusz Kowalczyk <fuuzetsu@fuuzetsu.co.uk>";
        author = "";
        homepage = "http://www.haskell.org/haddock/";
        url = "";
        synopsis = "Library exposing some functionality of Haddock.";
        description = "Haddock is a documentation-generation tool for Haskell\nlibraries. These modules expose some functionality of it\nwithout pulling in the GHC dependency. Please note that the\nAPI is likely to change so specify upper bounds in your\nproject if you can't release often. For interacting with Haddock\nitself, see the ‘haddock’ package.";
        buildType = "Simple";
      };
      components = {
        "haddock-library" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.deepseq
          ];
        };
        tests = {
          "spec" = {
            depends  = [
              hsPkgs.base
              hsPkgs.base-compat
              hsPkgs.hspec
              hsPkgs.bytestring
              hsPkgs.deepseq
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }