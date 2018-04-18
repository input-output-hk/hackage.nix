{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "haverer";
          version = "0.1.0.0";
        };
        license = "Apache-2.0";
        copyright = "Jonathan M. Lange";
        maintainer = "jml@mumak.net";
        author = "Jonathan M. Lange <jml@mumak.net>";
        homepage = "";
        url = "";
        synopsis = "Implementation of the rules of Love Letter";
        description = "Implementation of the rules of Love Letter";
        buildType = "Simple";
      };
      components = {
        haverer = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.lens
            hsPkgs.random-shuffle
            hsPkgs.MonadRandom
            hsPkgs.tasty
            hsPkgs.tasty-quickcheck
            hsPkgs.basic-prelude
            hsPkgs.text
            hsPkgs.errors
            hsPkgs.mtl
          ];
        };
        exes = {
          haverer = {
            depends  = [
              hsPkgs.base
              hsPkgs.haverer
              hsPkgs.basic-prelude
              hsPkgs.text
            ];
          };
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.haverer
              hsPkgs.random-shuffle
              hsPkgs.containers
              hsPkgs.basic-prelude
              hsPkgs.text
              hsPkgs.errors
              hsPkgs.mtl
            ];
          };
        };
      };
    }