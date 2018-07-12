{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ghc-prof-aeson";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2018, Mateusz Kowalczyk";
        maintainer = "fuuzetsu@fuuzetsu.co.uk";
        author = "Mateusz Kowalczyk";
        homepage = "https://github.com/Fuuzetsu/ghc-prof-aeson#readme";
        url = "";
        synopsis = "Parser for GHC's JSON profiling output.";
        description = "Parser for GHC's JSON profiling output produced by `-pj`.";
        buildType = "Simple";
      };
      components = {
        "ghc-prof-aeson" = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.text
            hsPkgs.vector
          ];
        };
        tests = {
          "ghc-prof-aeson-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.ghc-prof-aeson
              hsPkgs.hspec
            ];
          };
        };
      };
    }