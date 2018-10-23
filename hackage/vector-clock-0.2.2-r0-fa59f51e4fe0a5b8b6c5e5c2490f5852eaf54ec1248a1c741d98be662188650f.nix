{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "vector-clock";
        version = "0.2.2";
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
      "vector-clock" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.ghc-prim)
          (hsPkgs.hashable)
        ];
      };
      tests = {
        "props" = {
          depends  = [
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.ghc-prim)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.vector-clock)
          ];
        };
      };
    };
  }