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
        name = "vector-conduit";
        version = "0.4.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "jaredhance@gmail.com";
      author = "Jared Hance";
      homepage = "";
      url = "";
      synopsis = "Conduit utilities for vectors";
      description = "Provides sources and sinks for vectors.";
      buildType = "Simple";
    };
    components = {
      "vector-conduit" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.conduit)
          (hsPkgs.primitive)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "vector-conduit-tests" = {
          depends  = [
            (hsPkgs.vector-conduit)
            (hsPkgs.base)
            (hsPkgs.conduit)
            (hsPkgs.primitive)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }