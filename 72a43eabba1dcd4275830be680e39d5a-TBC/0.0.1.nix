{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.7";
        identifier = {
          name = "TBC";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Peter Gammie, Mark Wotton";
        maintainer = "peteg42@gmail.com";
        author = "Peter Gammie, Mark Wotton";
        homepage = "";
        url = "";
        synopsis = "Testing By Convention";
        description = "TBC is a harness for running tests, relying on other libraries such\nas QuickCheck and HUnit to do the actual testing. If the tests follow\nconventions, TBC lets you skip a lot of boilerplate.";
        buildType = "Simple";
      };
      components = {
        "TBC" = {
          depends  = [
            hsPkgs.base
            hsPkgs.Cabal
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.process
          ];
        };
        exes = {
          "tbc" = {
            depends  = [
              hsPkgs.base
              hsPkgs.Cabal
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.process
              hsPkgs.unix
            ];
          };
        };
      };
    }