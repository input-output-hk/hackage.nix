{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.20";
        identifier = {
          name = "chorale";
          version = "0.1.1";
        };
        license = "MIT";
        copyright = "2013-2016 Franz-Benjamin Mocnik";
        maintainer = "Franz-Benjamin Mocnik <mail@mocnik-science.net>";
        author = "Franz-Benjamin Mocnik <mail@mocnik-science.net>";
        homepage = "https://github.com/mocnik-science/chorale";
        url = "";
        synopsis = "A module containing basic functions that the prelude does not offer";
        description = "Chorale is a Haskell module that contains basic functions that the prelude\ndoes not offer. The prelude is traditionally followed by a chorale ...";
        buildType = "Simple";
      };
      components = {
        chorale = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.safe
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.chorale
              hsPkgs.containers
              hsPkgs.HUnit
              hsPkgs.ieee754
              hsPkgs.QuickCheck
              hsPkgs.safe
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
            ];
          };
        };
      };
    }