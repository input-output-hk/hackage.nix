{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "elocrypt";
          version = "0.4.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright: (c) 2015 Sean Gillespie";
        maintainer = "sean@mistersg.net";
        author = "Sean Gillespie";
        homepage = "https://www.github.com/sgillespie/elocrypt";
        url = "";
        synopsis = "Generate easy-to-remember, hard-to-guess passwords";
        description = "Generates pronounceable, hard-to-guess passwords.. as hard as\nVince Carter's knee cartilage is.";
        buildType = "Simple";
      };
      components = {
        "elocrypt" = {
          depends  = [
            hsPkgs.base
            hsPkgs.MonadRandom
            hsPkgs.random
          ];
        };
        exes = {
          "elocrypt" = {
            depends  = [
              hsPkgs.base
              hsPkgs.elocrypt
              hsPkgs.random
            ];
          };
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.elocrypt
              hsPkgs.MonadRandom
              hsPkgs.QuickCheck
              hsPkgs.random
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-th
            ];
          };
          "ui-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.elocrypt
              hsPkgs.proctest
              hsPkgs.MonadRandom
              hsPkgs.QuickCheck
              hsPkgs.random
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-th
            ];
          };
        };
      };
    }