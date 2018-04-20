{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "vector-clock";
          version = "0.1.2";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "scvalex@gmail.com";
        author = "Alexandru Scvortov <scvalex@gmail.com>";
        homepage = "https://github.com/scvalex/vector-clock";
        url = "";
        synopsis = "Vector clocks for versioning message flows";
        description = "This package provides a ready to use implementation of the\nvector clock data-structures, which may be used to version\nmessages and determine causality relations between them in\na distributed system.\n\nSee @Fundamentals of Distributed Computing: A Practical Tour\nof Vector Clock Systems@ by R. Baldoni and M. Raynal for an\noverview of vector clocks.\n\nSee the README.md file for details.";
        buildType = "Simple";
      };
      components = {
        vector-clock = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
          ];
        };
        tests = {
          props = {
            depends  = [
              hsPkgs.base
              hsPkgs.binary
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.test-framework-hunit
              hsPkgs.QuickCheck
              hsPkgs.HUnit
            ];
          };
        };
      };
    }