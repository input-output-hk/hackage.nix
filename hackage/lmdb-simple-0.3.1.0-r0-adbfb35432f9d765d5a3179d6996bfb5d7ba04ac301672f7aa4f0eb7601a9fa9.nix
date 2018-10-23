{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "lmdb-simple";
        version = "0.3.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "© 2017 Robert Leslie";
      maintainer = "rob@mars.org";
      author = "Rob Leslie";
      homepage = "https://github.com/verement/lmdb-simple#readme";
      url = "";
      synopsis = "Simple API for LMDB";
      description = "This package provides a simple API for using the\nLightning Memory-mapped Database (LMDB).";
      buildType = "Simple";
    };
    components = {
      "lmdb-simple" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.lmdb)
          (hsPkgs.serialise)
        ];
      };
      tests = {
        "sample" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.lmdb-simple)
          ];
        };
        "hspec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.lmdb-simple)
            (hsPkgs.QuickCheck)
          ];
        };
      };
      benchmarks = {
        "criterion" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.lmdb-simple)
          ];
        };
      };
    };
  }